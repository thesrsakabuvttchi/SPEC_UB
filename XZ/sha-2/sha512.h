// SHA-512. Adapted from LibTomCrypt. This code is Public Domain
// Cloned from https://github.com/kalven/sha-2.git and converted to C99
// by Cloyce D. Spradling

#include <stdint.h>

typedef struct
{
    uint64_t length;
    uint64_t state[8];
    uint32_t curlen;
    unsigned char buf[128];
} sha512_state;

void sha_init(sha512_state *md);
void sha_process(sha512_state *md, const void* in, uint32_t inlen);
void sha_done(sha512_state *md, void* out);
