//==========================================================================
//  NEDFILEBUFFER.CC - part of
//
//                     OMNeT++/OMNEST
//            Discrete System Simulation in C++
//
//==========================================================================

/*--------------------------------------------------------------*
  Copyright (C) 2002-2008 Andras Varga
  Copyright (C) 2006-2008 OpenSim Ltd.

  This file is distributed WITHOUT ANY WARRANTY. See the file
  `license' for details on this and other legal matters.
*--------------------------------------------------------------*/


#include <string.h>
#include <stdio.h>
#include <time.h>
#include <sys/stat.h>
#include <assert.h>
#include "opp_ctype.h"
#include "nedfilebuffer.h"
#include "nedyylib.h"

USING_NAMESPACE

//-----------------------------------------------------------

NEDFileBuffer::NEDFileBuffer()
{
    wholeFile = NULL;

    numLines = 0;
    lineBeg = NULL;

    end = 0;

    commentBufLen = 1024;
    commentBuf = new char[commentBufLen];
}

NEDFileBuffer::~NEDFileBuffer()
{
    delete [] wholeFile;
    delete [] lineBeg;
    delete [] commentBuf;
}

bool NEDFileBuffer::readFile(const char *filename)
{
    // load file into memory
    if (wholeFile) return false; // reinit not supported

    // Note: must use binary mode on the file, otherwise due to CR/LF conversion
    // the number of characters actually stored will be less than "size"
    // (which is the same as fread()'s return value), and we'll get garbage
    // at the end of the buffer.
    FILE *intmp = fopen(filename,"rb");
    if (!intmp) return false;

    struct stat statbuf;
    fstat(fileno(intmp), &statbuf);
    int size = statbuf.st_size;
    wholeFile = new char [size+2];  // +1 because last line may need an extra '\n'

    size_t ret_code = fread(wholeFile,size,1,intmp);
    fclose(intmp);
    wholeFile[size]='\0';

    return indexLines();
}

bool NEDFileBuffer::setData(const char *data)
{
    if (wholeFile) return false;  // reinit not supported

    wholeFile = new char [strlen(data)+2]; // +1 because last line may need an extra '\n'
    strcpy(wholeFile,data);
    return indexLines();
}

// indexLines()
//   Sets up the lineBeg[] array. Line numbering goes from 1, ie. the first line
//   is lineBeg[1]
bool NEDFileBuffer::indexLines()
{
    // convert all CR and CR+LF into LF to avoid trouble
    char *s, *d;
    for (s=d=wholeFile; d==wholeFile || *(d-1); )
    {
        if (*s=='\r' && *(s+1)=='\n')  s++;
        else if (*s=='\r') {s++; *d++ = '\n';}
        else *d++ = *s++;
    }

    // terminate last line if necessary
    d--;  // now d points to terminating zero
    if (*(d-1)!='\n') {*d++ = '\n'; *d = '\0';}

    // count lines
    numLines = 0;
    for (s = wholeFile; *s; s++)
        if (*s=='\n')
            numLines++;

    // allocate array
    lineBeg = new char * [numLines+2];

    // fill in array
    lineBeg[0] = NULL;
    lineBeg[1] = wholeFile;
    int line = 2;
    for (s = wholeFile; *s; s++)
        if (*s=='\n')
            lineBeg[line++] = s+1;

    // last line plus one points to end of file (terminating zero)
    assert(line==numLines+2);
    assert(lineBeg[numLines+1]==s);

    return true;
}

int NEDFileBuffer::getLineType(int lineNumber)
{
    return getLineType(getPosition(lineNumber,0));
}

int NEDFileBuffer::getLineType(const char *s)
{
    while (*s==' ' || *s=='\t') s++;
    if (*s=='/' && *(s+1)=='/') return COMMENT_LINE;
    if (!*s || *s=='\n') return BLANK_LINE; // if there's only punctuation, it'll count as BLANK too
    return CODE_LINE;
}

bool NEDFileBuffer::lineContainsCode(const char *s)
{
    // tolerant version: punctuation does not count as code
    while (*s==' ' || *s=='\t' || *s==':' || *s==',' || *s==';') s++;
    if (*s=='/' && *(s+1)=='/') return false;
    if (!*s || *s=='\n') return false;
    return true;
}


int NEDFileBuffer::getLineIndent(int lineNumber)
{
    return getLineIndent(getPosition(lineNumber,0));
}

int NEDFileBuffer::getLineIndent(const char *s)
{
    int co = 0;
    while (*s==' ' || *s=='\t')
    {
        co += (*s=='\t') ? 8-(co%8) : 1;
        s++;
    }
    return co;
}

char *NEDFileBuffer::getPosition(int line, int column)
{
    // tolerant version: if line is out of range, return beginning or end of file
    if (line<1)
        return lineBeg[1];
    if (line>numLines)
        return lineBeg[numLines]+strlen(lineBeg[numLines]);

    char *s = lineBeg[line];

    int co = 0;
    while (co<column)
    {
        if (!*s) return s;
        if (*s=='\n')
            {column-=co; co=0;}
        else if (*s=='\t')
            co += 8-(co%8);
        else
            co++;
        s++;
    }
    return s;
}

const char *NEDFileBuffer::get(YYLTYPE pos)
{
    if (end) {*end = savedChar; end=NULL;}

    // return NULL
    if (pos.first_line==0 && pos.last_line==0)
        return NULL;

    if (isEmpty(pos))
        return "";

    // the meat of the whole stuff:
    end = getPosition(pos.last_line,  pos.last_column);
    savedChar = *end;
    *end = '\0';

    char *beg = getPosition(pos.first_line, pos.first_column);
    return beg;
}

const char *NEDFileBuffer::getFileComment()
{
    return stripComment(get(getFileCommentPos()));
}

// all subsequent comment and blank lines will be included, up to the _last blank_ line
YYLTYPE NEDFileBuffer::getFileCommentPos()
{
    if (end) {*end = savedChar; end=NULL;}

    // seek end of comment block (that is, last blank line before a code line or eof)
    int lastBlank = 0;
    int lineType;
    int line;
    for (line=1; line<=numLines && (lineType=getLineType(line))!=CODE_LINE; line++)
        if (lineType==BLANK_LINE)
            lastBlank = line;

    // if file doesn't contain code line, take the whole file
    if (line > numLines)
        lastBlank = numLines;

    // return comment block
    YYLTYPE commentPos;
    commentPos.first_line = 1;
    commentPos.first_column = 0;
    commentPos.last_line = lastBlank+1;
    commentPos.last_column = 0;
    return commentPos;
}

// topLineOfBannerComment()
//   li: code line below the comment
//   result: ==li     there was no comment
//           ==li-1   single-line comment on line li-1
//
int NEDFileBuffer::topLineOfBannerComment(int li)
{
    // seek beginning of comment block
    int codeLineIndent = getLineIndent(li);
    while (li>=2 && getLineType(li-1)==COMMENT_LINE && getLineIndent(li-1) <= codeLineIndent)
        li--;
    return li;
}

const char *NEDFileBuffer::getBannerComment(YYLTYPE pos)
{
    return stripComment(get(getBannerCommentPos(pos)));
}

YYLTYPE NEDFileBuffer::getBannerCommentPos(YYLTYPE pos)
{
    trimSpaceAndComments(pos);
    if (end) {*end = savedChar; end=NULL;}

    // there must be nothing before it on the same line
    char *beg = getPosition(pos.first_line, pos.first_column);
    for (char *s=getPosition(pos.first_line, 0); s<beg; s++)
        if (*s!=' ' && *s!='\t')
            return makeYYLTYPE(1,0,1,0); // empty pos, will be returned as ""

    // return comment block
    YYLTYPE commentPos;
    commentPos.first_line = topLineOfBannerComment(pos.first_line);
    commentPos.first_column = 0;
    commentPos.last_line = pos.first_line;
    commentPos.last_column = 0;
    return commentPos;
}

//
//  also serves as "getRightComment"
//  NOTE: only handles really trailing comments, ie. those after last_line.last_column
//
const char *NEDFileBuffer::getTrailingComment(YYLTYPE pos)
{
    return stripComment(get(getTrailingCommentPos(pos)));
}

YYLTYPE NEDFileBuffer::getTrailingCommentPos(YYLTYPE pos)
{
    trimSpaceAndComments(pos);
    if (end) {*end = savedChar; end=NULL;}

    // there must be no code after it on the same line
    char *endp = getPosition(pos.last_line, pos.last_column);
    if (lineContainsCode(endp))
        return makeYYLTYPE(1,0,1,0); // empty pos, will be returned as ""

    // seek 1st line after comment (lineAfter)
    int lineAfter;

    if (pos.last_line>=numLines) // 'pos' ends on last line of file
    {
        lineAfter = numLines+1;
    }
    else
    {
        // seek fwd to next code line (or end of file)
        lineAfter = pos.last_line+1;
        while (lineAfter<=numLines && getLineType(lineAfter)!=CODE_LINE)
            lineAfter++;

        // now seek back to beginning of comment block
        lineAfter = topLineOfBannerComment(lineAfter);
    }

    // return comment block
    YYLTYPE commentPos;
    commentPos.first_line = pos.last_line;
    commentPos.first_column = pos.last_column;
    commentPos.last_line = lineAfter;
    commentPos.last_column = 0;
    return commentPos;
}

static const char *findCommentOnLine(const char *s)
{
    // find comment on this line
    while (*s!='\n' && (*s!='/' || *(s+1)!='/')) s++;
    if (*s!='/' || *(s+1)!='/')
        return NULL;
    return s;
}

const char *NEDFileBuffer::getNextInnerComment(YYLTYPE& pos)
{
    // FIXME unfortunately, this will collect comments even from
    // inside single-line or multi-line string literals
    // (like "Hello //World")
    while (!isEmpty(pos))
    {
        const char *s = getPosition(pos.first_line, pos.first_column);
        const char *comment = findCommentOnLine(s);
        if (comment)
        {
            int commentColumn = pos.first_column + comment - s;
            if (pos.first_line==pos.last_line && commentColumn >= pos.last_column)
                return NULL; // comment is past the end of "pos"

            // seek fwd to next code line (or end of block)
            int lineAfter = pos.first_line+1;
            while (lineAfter<pos.last_line && getLineType(lineAfter)!=CODE_LINE)
                lineAfter++;

            YYLTYPE commentPos;
            commentPos.first_line = pos.first_line;
            commentPos.first_column = commentColumn;
            commentPos.last_line = lineAfter;
            commentPos.last_column = 0;

            // skip comment
            pos.first_line = commentPos.last_line;
            pos.first_column = commentPos.last_column;

            return stripComment(get(commentPos));
        }

        // go to beginning of next line
        ++pos.first_line;
        pos.first_column = 0;
    }
    return NULL;
}

YYLTYPE NEDFileBuffer::getFullTextPos()
{
    YYLTYPE pos;
    pos.first_line = 1;
    pos.first_column = 0;
    pos.last_line = numLines+1;
    pos.last_column = 0;
    return pos;
}

const char *NEDFileBuffer::getFullText()
{
    return get(getFullTextPos());
}

// stripComment()
//  return a "stripped" version of a multi-line comment --
//  all non-comment elements (comma, etc) are deleted
//
char *NEDFileBuffer::stripComment(const char *comment)
{
    // expand buffer if necessary
    if (commentBufLen < (int)strlen(comment)+1)
    {
        commentBufLen = strlen(comment)+1;
        delete [] commentBuf;
        commentBuf = new char[commentBufLen];
    }

    const char *s = comment;
    char *d = commentBuf;
    bool incomment = false;
    while(*s)
    {
        if ((*s=='/' && *(s+1)=='/')) incomment = true;
        if (*s=='\n') incomment = false;

        if (incomment || opp_isspace(*s))
            *d++ = *s++;
        else
            s++;
    }
    *d = '\0';
    return commentBuf;
}

void NEDFileBuffer::trimSpaceAndComments(YYLTYPE& pos)
{
    if (end) {*end = savedChar; end=NULL;}

    // skip space and comments with the beginning of the region
    const char *s = getPosition(pos.first_line, pos.first_column);
    while (opp_isspace(*s) || (*s=='/' && *(s+1)=='/'))
    {
        if (*s=='\n' || *s=='/')
        {
            // newline or comment: skip to next line
            pos.first_line++;
            pos.first_column = 0;
            if (pos.first_line > numLines)
                break;
            s = getPosition(pos.first_line, pos.first_column);
        }
        else
        {
            // skip space or tab
            pos.first_column++;
            s++;
        }
    }

    // just make sure "start" doesn't overtake "end"
    if (pos.first_line>pos.last_line)
        pos.first_line = pos.last_line;
    if (pos.first_line==pos.last_line && pos.first_column>pos.last_column)
        pos.first_column = pos.last_column;

    // TBD decrement last_line/last_column while they point into space/comment;
    // this is currently not needed though, as bison grammar doesn't produce
    // YYLTYPEs with trailing spaces/comments.
}

