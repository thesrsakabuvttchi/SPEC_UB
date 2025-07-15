; ModuleID = 'iris_test.c'
source_filename = "iris_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._EmlTreesNode = type { i8, i16, i16, i16 }
%struct._EmlTrees = type { i32, %struct._EmlTreesNode*, i32, i32*, i32, i8*, i8, i8, i8 }
%struct.event_info = type { i32, [1024 x i8], [64 x i8], [1024 x i8], i32, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [256 x i8], [12 x i32], [12 x [256 x i8]], [1024 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid class predicted\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Error length\00", align 1
@eml_trees_errors = dso_local local_unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)], align 16
@iris_nodes = internal constant [8 x %struct._EmlTreesNode] [%struct._EmlTreesNode { i8 3, i16 0, i16 -1, i16 1 }, %struct._EmlTreesNode { i8 3, i16 1, i16 1, i16 5 }, %struct._EmlTreesNode { i8 2, i16 4, i16 1, i16 2 }, %struct._EmlTreesNode { i8 3, i16 1, i16 -2, i16 -3 }, %struct._EmlTreesNode { i8 3, i16 1, i16 -3, i16 1 }, %struct._EmlTreesNode { i8 0, i16 6, i16 -2, i16 -3 }, %struct._EmlTreesNode { i8 2, i16 4, i16 1, i16 -3 }, %struct._EmlTreesNode { i8 0, i16 5, i16 -2, i16 -3 }], align 16
@iris_tree_roots = internal constant [1 x i32] zeroinitializer, align 4
@iris_leaves = internal constant [3 x i8] c"\00\01\02", align 1
@iris = dso_local local_unnamed_addr global %struct._EmlTrees { i32 8, %struct._EmlTreesNode* getelementptr inbounds ([8 x %struct._EmlTreesNode], [8 x %struct._EmlTreesNode]* @iris_nodes, i32 0, i32 0), i32 1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iris_tree_roots, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @iris_leaves, i32 0, i32 0), i8 0, i8 4, i8 3 }, align 8
@nevents = dso_local local_unnamed_addr global i32 0, align 4
@eventset = dso_local global i32 -1, align 4
@events = dso_local local_unnamed_addr global [5 x i32] [i32 -2147483591, i32 -2147483603, i32 -2147483593, i32 -2147483602, i32 -2147483598], align 16
@event_names = dso_local global [5 x [256 x i8]] [[256 x i8] c"PAPI_RES_STL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"PAPI_BR_NTK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"PAPI_BR_INS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"PAPI_BR_MSP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"PAPI_TOT_INS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@values = dso_local global [5 x i64] zeroinitializer, align 16
@retval = dso_local local_unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"Failed %s\0A\00", align 1
@cvalues = dso_local local_unnamed_addr global [5 x i64] zeroinitializer, align 16
@t1 = dso_local local_unnamed_addr global i64 0, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"Time taken (Branching): %lld usec\0A\00", align 1
@info = dso_local global %struct.event_info zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"%20s = %lld\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Branch accuracy: %lf%%\0A\00", align 1
@errors = dso_local local_unnamed_addr global i32 0, align 4
@spread = dso_local local_unnamed_addr global [5 x double] zeroinitializer, align 16
@t2 = dso_local local_unnamed_addr global i64 0, align 8
@t3 = dso_local local_unnamed_addr global i64 0, align 8
@str = private unnamed_addr constant [25 x i8] c"Error creating eventset!\00", align 1
@str.13 = private unnamed_addr constant [15 x i8] c"Version Error!\00", align 1
@str.14 = private unnamed_addr constant [50 x i8] c"Please enter a sample count between 1 and 1000000\00", align 1

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i32 @eml_trees_predict_proba(%struct._EmlTrees* nocapture readonly %self, i16* readonly %features, i8 signext %features_length, float* %out, i32 %out_length) local_unnamed_addr #0 {
entry:
  %out174 = bitcast float* %out to i8*
  %tobool.not = icmp eq i16* %features, null, !sourceFile !3, !mergedLineNum !4
  %tobool2.not = icmp eq float* %out, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %return, label %do.end5, !sourceFile !3, !mergedLineNum !4

do.end5:                                          ; preds = %entry
  %self.idx = getelementptr %struct._EmlTrees, %struct._EmlTrees* %self, i64 0, i32 8
  %self.idx.val = load i8, i8* %self.idx, align 2, !tbaa !5
  %conv.i = sext i8 %self.idx.val to i32, !sourceFile !3, !mergedLineNum !4
  %cmp = icmp eq i32 %conv.i, %out_length, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp, label %for.cond.preheader, label %return, !sourceFile !3, !mergedLineNum !4

for.cond.preheader:                               ; preds = %do.end5
  %cmp10163 = icmp sgt i32 %out_length, 0
  br i1 %cmp10163, label %for.body.preheader, label %for.cond.cleanup, !sourceFile !3, !mergedLineNum !4

for.body.preheader:                               ; preds = %for.cond.preheader
  %0 = zext i32 %out_length to i64
  %1 = shl nuw nsw i64 %0, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %out174, i8 0, i64 %1, i1 false)
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body.preheader, %for.cond.preheader
  %leaf_bits = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %self, i64 0, i32 6, !sourceFile !3, !mergedLineNum !4
  %2 = load i8, i8* %leaf_bits, align 8, !tbaa !11, !sourceFile !3, !mergedLineNum !4
  switch i8 %2, label %return [
    i8 0, label %for.cond15.preheader
    i8 8, label %for.cond34.preheader
  ]

for.cond34.preheader:                             ; preds = %for.cond.cleanup
  %n_trees35 = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %self, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %3 = load i32, i32* %n_trees35, align 8, !tbaa !12, !sourceFile !3, !mergedLineNum !4
  %nodes.i142 = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %self, i64 0, i32 1
  %cmp54165 = icmp sgt i8 %self.idx.val, 0
  %cmp36167 = icmp sgt i32 %3, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp36167, label %for.body39.lr.ph, label %if.end73, !sourceFile !3, !mergedLineNum !4

for.body39.lr.ph:                                 ; preds = %for.cond34.preheader
  %leaves47 = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %self, i64 0, i32 5
  %tree_roots41 = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %self, i64 0, i32 3
  %4 = load i32*, i32** %tree_roots41, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !4
  %5 = load i8*, i8** %leaves47, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %wide.trip.count177 = zext i32 %3 to i64
  %wide.trip.count = zext i32 %out_length to i64
  %scevgep = getelementptr float, float* %out, i64 %wide.trip.count
  %scevgep189 = bitcast float* %scevgep to i8*
  %min.iters.check = icmp ult i32 %out_length, 8
  %n.vec = and i64 %wide.trip.count, 4294967288
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %6 = sub nsw i64 0, %wide.trip.count
  br label %for.body39

for.cond15.preheader:                             ; preds = %for.cond.cleanup
  %n_trees = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %self, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %7 = load i32, i32* %n_trees, align 8, !tbaa !12, !sourceFile !3, !mergedLineNum !4
  %nodes.i = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %self, i64 0, i32 1
  %cmp16169 = icmp sgt i32 %7, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp16169, label %for.body19.lr.ph, label %if.end73, !sourceFile !3, !mergedLineNum !4

for.body19.lr.ph:                                 ; preds = %for.cond15.preheader
  %leaves = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %self, i64 0, i32 5
  %tree_roots = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %self, i64 0, i32 3
  %8 = load i32*, i32** %tree_roots, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !4
  %9 = load i8*, i8** %leaves, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %wide.trip.count181 = zext i32 %7 to i64
  br label %for.body19

for.body19:                                       ; preds = %for.body19.lr.ph, %eml_trees_predict_tree.exit
  %indvars.iv179 = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next180, %eml_trees_predict_tree.exit ]
  %arrayidx21 = getelementptr inbounds i32, i32* %8, i64 %indvars.iv179, !sourceFile !3, !mergedLineNum !4
  %10 = load i32, i32* %arrayidx21, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %cmp2.i = icmp sgt i32 %10, -1
  br i1 %cmp2.i, label %while.body.lr.ph.i, label %eml_trees_predict_tree.exit, !sourceFile !3, !mergedLineNum !4

while.body.lr.ph.i:                               ; preds = %for.body19
  %11 = load %struct._EmlTreesNode*, %struct._EmlTreesNode** %nodes.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %node_idx.03.i = phi i32 [ %10, %while.body.lr.ph.i ], [ %moved.sel47.i, %while.body.i ]
  %idxprom1.i = zext i32 %node_idx.03.i to i64
  %feature1.i = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %11, i64 %idxprom1.i, i32 0, !sourceFile !3, !mergedLineNum !4
  %12 = load i8, i8* %feature1.i, align 2, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %idxprom2.i = sext i8 %12 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx3.i = getelementptr inbounds i16, i16* %features, i64 %idxprom2.i, !sourceFile !3, !mergedLineNum !4
  %13 = load i16, i16* %arrayidx3.i, align 2, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  %value7.i = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %11, i64 %idxprom1.i, i32 1, !sourceFile !3, !mergedLineNum !4
  %14 = load i16, i16* %value7.i, align 2, !tbaa !21, !sourceFile !3, !mergedLineNum !4
  %cmp9.i = icmp slt i16 %13, %14
  %15 = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %11, i64 %idxprom1.i, i32 2, !sourceFile !3, !mergedLineNum !22
  %16 = load i16, i16* %15, align 2, !tbaa !23, !sourceFile !3, !mergedLineNum !22
  %17 = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %11, i64 %idxprom1.i, i32 3, !sourceFile !3, !mergedLineNum !24
  %18 = load i16, i16* %17, align 2, !tbaa !25, !sourceFile !3, !mergedLineNum !24
  %merged.select.i = select i1 %cmp9.i, i16 %16, i16 %18
  %cmp21.i = icmp sgt i16 %merged.select.i, -1
  %conv20.i = sext i16 %merged.select.i to i32, !sourceFile !3, !mergedLineNum !4
  %19 = select i1 %cmp21.i, i32 %node_idx.03.i, i32 0
  %moved.sel47.i = add nsw i32 %19, %conv20.i
  %cmp.i = icmp sgt i32 %moved.sel47.i, -1
  br i1 %cmp.i, label %while.body.i, label %eml_trees_predict_tree.exit, !llvm.loop !26, !sourceFile !3, !mergedLineNum !4

eml_trees_predict_tree.exit:                      ; preds = %while.body.i, %for.body19
  %node_idx.0.lcssa.i = phi i32 [ %10, %for.body19 ], [ %moved.sel47.i, %while.body.i ]
  %conv26.i = xor i32 %node_idx.0.lcssa.i, -1
  %sext.i = shl i32 %conv26.i, 16
  %conv27.i = ashr exact i32 %sext.i, 16
  %idx.ext = sext i32 %conv27.i to i64, !sourceFile !3, !mergedLineNum !4
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext, !sourceFile !3, !mergedLineNum !4
  %20 = load i8, i8* %add.ptr, align 1, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %idxprom24 = zext i8 %20 to i64
  %arrayidx25 = getelementptr inbounds float, float* %out, i64 %idxprom24, !sourceFile !3, !mergedLineNum !4
  %21 = load float, float* %arrayidx25, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %add = fadd float %21, 1.000000e+00, !sourceFile !3, !mergedLineNum !4
  store float %add, float* %arrayidx25, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1
  %exitcond182.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count181
  br i1 %exitcond182.not, label %if.end73, label %for.body19, !llvm.loop !31, !sourceFile !3, !mergedLineNum !4

for.body39:                                       ; preds = %for.body39.lr.ph, %for.cond.cleanup56
  %indvars.iv175 = phi i64 [ 0, %for.body39.lr.ph ], [ %indvars.iv.next176, %for.cond.cleanup56 ]
  %arrayidx43 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv175, !sourceFile !3, !mergedLineNum !4
  %22 = load i32, i32* %arrayidx43, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %cmp2.i141 = icmp sgt i32 %22, -1
  br i1 %cmp2.i141, label %while.body.lr.ph.i143, label %eml_trees_predict_tree.exit161, !sourceFile !3, !mergedLineNum !4

while.body.lr.ph.i143:                            ; preds = %for.body39
  %23 = load %struct._EmlTreesNode*, %struct._EmlTreesNode** %nodes.i142, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  br label %while.body.i156

while.body.i156:                                  ; preds = %while.body.i156, %while.body.lr.ph.i143
  %node_idx.03.i144 = phi i32 [ %22, %while.body.lr.ph.i143 ], [ %moved.sel47.i154, %while.body.i156 ]
  %idxprom1.i145 = zext i32 %node_idx.03.i144 to i64
  %feature1.i146 = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %23, i64 %idxprom1.i145, i32 0, !sourceFile !3, !mergedLineNum !4
  %24 = load i8, i8* %feature1.i146, align 2, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %idxprom2.i147 = sext i8 %24 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx3.i148 = getelementptr inbounds i16, i16* %features, i64 %idxprom2.i147, !sourceFile !3, !mergedLineNum !4
  %25 = load i16, i16* %arrayidx3.i148, align 2, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  %value7.i149 = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %23, i64 %idxprom1.i145, i32 1, !sourceFile !3, !mergedLineNum !4
  %26 = load i16, i16* %value7.i149, align 2, !tbaa !21, !sourceFile !3, !mergedLineNum !4
  %cmp9.i150 = icmp slt i16 %25, %26
  %27 = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %23, i64 %idxprom1.i145, i32 2, !sourceFile !3, !mergedLineNum !22
  %28 = load i16, i16* %27, align 2, !tbaa !23, !sourceFile !3, !mergedLineNum !22
  %29 = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %23, i64 %idxprom1.i145, i32 3, !sourceFile !3, !mergedLineNum !24
  %30 = load i16, i16* %29, align 2, !tbaa !25, !sourceFile !3, !mergedLineNum !24
  %merged.select.i151 = select i1 %cmp9.i150, i16 %28, i16 %30
  %cmp21.i152 = icmp sgt i16 %merged.select.i151, -1
  %conv20.i153 = sext i16 %merged.select.i151 to i32, !sourceFile !3, !mergedLineNum !4
  %31 = select i1 %cmp21.i152, i32 %node_idx.03.i144, i32 0
  %moved.sel47.i154 = add nsw i32 %31, %conv20.i153
  %cmp.i155 = icmp sgt i32 %moved.sel47.i154, -1
  br i1 %cmp.i155, label %while.body.i156, label %eml_trees_predict_tree.exit161, !llvm.loop !26, !sourceFile !3, !mergedLineNum !4

eml_trees_predict_tree.exit161:                   ; preds = %while.body.i156, %for.body39
  %node_idx.0.lcssa.i157 = phi i32 [ %22, %for.body39 ], [ %moved.sel47.i154, %while.body.i156 ]
  %conv26.i158 = xor i32 %node_idx.0.lcssa.i157, -1
  %sext.i159 = shl i32 %conv26.i158, 16
  %conv27.i160 = ashr exact i32 %sext.i159, 16
  %mul45 = mul nsw i32 %conv27.i160, %out_length, !sourceFile !3, !mergedLineNum !4
  %idx.ext48 = sext i32 %mul45 to i64, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp54165, label %for.body57.preheader, label %for.cond.cleanup56, !sourceFile !3, !mergedLineNum !4

for.body57.preheader:                             ; preds = %eml_trees_predict_tree.exit161
  br i1 %min.iters.check, label %for.body57.preheader208, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body57.preheader
  %scevgep190 = getelementptr i8, i8* %5, i64 %idx.ext48
  %scevgep192.idx = add nsw i64 %idx.ext48, %wide.trip.count
  %scevgep192 = getelementptr i8, i8* %5, i64 %scevgep192.idx
  %bound0 = icmp ugt i8* %scevgep192, %out174
  %bound1 = icmp ult i8* %scevgep190, %scevgep189
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body57.preheader208, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %32 = add nsw i64 %index, %idx.ext48
  %33 = getelementptr inbounds i8, i8* %5, i64 %32
  %34 = bitcast i8* %33 to <4 x i8>*
  %wide.load = load <4 x i8>, <4 x i8>* %34, align 1, !tbaa !28, !alias.scope !32
  %35 = getelementptr inbounds i8, i8* %33, i64 4
  %36 = bitcast i8* %35 to <4 x i8>*
  %wide.load193 = load <4 x i8>, <4 x i8>* %36, align 1, !tbaa !28, !alias.scope !32
  %37 = icmp eq <4 x i8> %wide.load, <i8 -1, i8 -1, i8 -1, i8 -1>
  %38 = icmp eq <4 x i8> %wide.load193, <i8 -1, i8 -1, i8 -1, i8 -1>
  %39 = uitofp <4 x i1> %37 to <4 x float>
  %40 = uitofp <4 x i1> %38 to <4 x float>
  %41 = getelementptr inbounds float, float* %out, i64 %index, !sourceFile !3, !mergedLineNum !4
  %42 = bitcast float* %41 to <4 x float>*
  %wide.load194 = load <4 x float>, <4 x float>* %42, align 4, !tbaa !29, !alias.scope !35, !noalias !32
  %43 = getelementptr inbounds float, float* %41, i64 4
  %44 = bitcast float* %43 to <4 x float>*
  %wide.load195 = load <4 x float>, <4 x float>* %44, align 4, !tbaa !29, !alias.scope !35, !noalias !32
  %45 = fadd <4 x float> %wide.load194, %39
  %46 = fadd <4 x float> %wide.load195, %40
  %47 = bitcast float* %41 to <4 x float>*
  store <4 x float> %45, <4 x float>* %47, align 4, !tbaa !29, !alias.scope !35, !noalias !32
  %48 = bitcast float* %43 to <4 x float>*
  store <4 x float> %46, <4 x float>* %48, align 4, !tbaa !29, !alias.scope !35, !noalias !32
  %index.next = add nuw i64 %index, 8
  %49 = icmp eq i64 %index.next, %n.vec
  br i1 %49, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond.cleanup56, label %for.body57.preheader208

for.body57.preheader208:                          ; preds = %vector.memcheck, %for.body57.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body57.preheader ], [ %n.vec, %middle.block ]
  %50 = xor i64 %indvars.iv.ph, -1
  br i1 %lcmp.mod.not, label %for.body57.prol.loopexit, label %for.body57.prol

for.body57.prol:                                  ; preds = %for.body57.preheader208
  %arrayidx59.idx.prol = add nsw i64 %indvars.iv.ph, %idx.ext48
  %arrayidx59.prol = getelementptr inbounds i8, i8* %5, i64 %arrayidx59.idx.prol
  %51 = load i8, i8* %arrayidx59.prol, align 1, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %52 = icmp eq i8 %51, -1
  %conv61.prol = uitofp i1 %52 to float
  %arrayidx63.prol = getelementptr inbounds float, float* %out, i64 %indvars.iv.ph, !sourceFile !3, !mergedLineNum !4
  %53 = load float, float* %arrayidx63.prol, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %add64.prol = fadd float %53, %conv61.prol, !sourceFile !3, !mergedLineNum !4
  store float %add64.prol, float* %arrayidx63.prol, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.prol = or i64 %indvars.iv.ph, 1
  br label %for.body57.prol.loopexit

for.body57.prol.loopexit:                         ; preds = %for.body57.prol, %for.body57.preheader208
  %indvars.iv.unr.ph = phi i64 [ %indvars.iv.next.prol, %for.body57.prol ], [ %indvars.iv.ph, %for.body57.preheader208 ]
  %54 = icmp eq i64 %50, %6
  br i1 %54, label %for.cond.cleanup56, label %for.body57

for.cond.cleanup56:                               ; preds = %for.body57.prol.loopexit, %for.body57, %middle.block, %eml_trees_predict_tree.exit161
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1
  %exitcond178.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count177
  br i1 %exitcond178.not, label %if.end73, label %for.body39, !llvm.loop !39, !sourceFile !3, !mergedLineNum !4

for.body57:                                       ; preds = %for.body57.prol.loopexit, %for.body57
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body57 ], [ %indvars.iv.unr.ph, %for.body57.prol.loopexit ]
  %arrayidx59.idx = add nsw i64 %indvars.iv, %idx.ext48
  %arrayidx59 = getelementptr inbounds i8, i8* %5, i64 %arrayidx59.idx
  %55 = load i8, i8* %arrayidx59, align 1, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %56 = icmp eq i8 %55, -1
  %conv61 = uitofp i1 %56 to float
  %arrayidx63 = getelementptr inbounds float, float* %out, i64 %indvars.iv, !sourceFile !3, !mergedLineNum !4
  %57 = load float, float* %arrayidx63, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %add64 = fadd float %57, %conv61, !sourceFile !3, !mergedLineNum !4
  store float %add64, float* %arrayidx63, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx59.idx.1 = add nsw i64 %indvars.iv.next, %idx.ext48
  %arrayidx59.1 = getelementptr inbounds i8, i8* %5, i64 %arrayidx59.idx.1
  %58 = load i8, i8* %arrayidx59.1, align 1, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %59 = icmp eq i8 %58, -1
  %conv61.1 = uitofp i1 %59 to float
  %arrayidx63.1 = getelementptr inbounds float, float* %out, i64 %indvars.iv.next, !sourceFile !3, !mergedLineNum !4
  %60 = load float, float* %arrayidx63.1, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %add64.1 = fadd float %60, %conv61.1, !sourceFile !3, !mergedLineNum !4
  store float %add64.1, float* %arrayidx63.1, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %for.cond.cleanup56, label %for.body57, !llvm.loop !40, !sourceFile !3, !mergedLineNum !4

if.end73:                                         ; preds = %for.cond.cleanup56, %eml_trees_predict_tree.exit, %for.cond34.preheader, %for.cond15.preheader
  %61 = phi i32 [ %3, %for.cond34.preheader ], [ %7, %for.cond15.preheader ], [ %7, %eml_trees_predict_tree.exit ], [ %3, %for.cond.cleanup56 ]
  br i1 %cmp10163, label %for.body79.lr.ph, label %return, !sourceFile !3, !mergedLineNum !4

for.body79.lr.ph:                                 ; preds = %if.end73
  %conv83 = sitofp i32 %61 to float, !sourceFile !3, !mergedLineNum !4
  %wide.trip.count185 = zext i32 %out_length to i64
  %min.iters.check199 = icmp ult i32 %out_length, 4
  br i1 %min.iters.check199, label %for.body79.preheader, label %vector.ph200

vector.ph200:                                     ; preds = %for.body79.lr.ph
  %n.vec202 = and i64 %wide.trip.count185, 4294967292
  %broadcast.splatinsert = insertelement <4 x float> poison, float %conv83, i32 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %62 = add nsw i64 %n.vec202, -4
  %63 = lshr exact i64 %62, 2
  %64 = add nuw nsw i64 %63, 1
  %xtraiter210 = and i64 %64, 1
  %65 = icmp eq i64 %62, 0
  br i1 %65, label %middle.block196.unr-lcssa, label %vector.ph200.new

vector.ph200.new:                                 ; preds = %vector.ph200
  %unroll_iter = and i64 %64, 9223372036854775806
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph200.new
  %index203 = phi i64 [ 0, %vector.ph200.new ], [ %index.next204.1, %vector.body198 ]
  %niter = phi i64 [ %unroll_iter, %vector.ph200.new ], [ %niter.nsub.1, %vector.body198 ]
  %66 = getelementptr inbounds float, float* %out, i64 %index203, !sourceFile !3, !mergedLineNum !4
  %67 = bitcast float* %66 to <4 x float>*
  %wide.load207 = load <4 x float>, <4 x float>* %67, align 4, !tbaa !29
  %68 = fdiv <4 x float> %wide.load207, %broadcast.splat
  %69 = bitcast float* %66 to <4 x float>*
  store <4 x float> %68, <4 x float>* %69, align 4, !tbaa !29
  %index.next204 = or i64 %index203, 4
  %70 = getelementptr inbounds float, float* %out, i64 %index.next204, !sourceFile !3, !mergedLineNum !4
  %71 = bitcast float* %70 to <4 x float>*
  %wide.load207.1 = load <4 x float>, <4 x float>* %71, align 4, !tbaa !29
  %72 = fdiv <4 x float> %wide.load207.1, %broadcast.splat
  %73 = bitcast float* %70 to <4 x float>*
  store <4 x float> %72, <4 x float>* %73, align 4, !tbaa !29
  %index.next204.1 = add nuw i64 %index203, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block196.unr-lcssa, label %vector.body198, !llvm.loop !41

middle.block196.unr-lcssa:                        ; preds = %vector.body198, %vector.ph200
  %index203.unr = phi i64 [ 0, %vector.ph200 ], [ %index.next204.1, %vector.body198 ]
  %lcmp.mod211.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %middle.block196, label %vector.body198.epil

vector.body198.epil:                              ; preds = %middle.block196.unr-lcssa
  %74 = getelementptr inbounds float, float* %out, i64 %index203.unr, !sourceFile !3, !mergedLineNum !4
  %75 = bitcast float* %74 to <4 x float>*
  %wide.load207.epil = load <4 x float>, <4 x float>* %75, align 4, !tbaa !29
  %76 = fdiv <4 x float> %wide.load207.epil, %broadcast.splat
  %77 = bitcast float* %74 to <4 x float>*
  store <4 x float> %76, <4 x float>* %77, align 4, !tbaa !29
  br label %middle.block196

middle.block196:                                  ; preds = %middle.block196.unr-lcssa, %vector.body198.epil
  %cmp.n206 = icmp eq i64 %n.vec202, %wide.trip.count185
  br i1 %cmp.n206, label %return, label %for.body79.preheader

for.body79.preheader:                             ; preds = %for.body79.lr.ph, %middle.block196
  %indvars.iv183.ph = phi i64 [ 0, %for.body79.lr.ph ], [ %n.vec202, %middle.block196 ]
  br label %for.body79

for.body79:                                       ; preds = %for.body79.preheader, %for.body79
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %for.body79 ], [ %indvars.iv183.ph, %for.body79.preheader ]
  %arrayidx81 = getelementptr inbounds float, float* %out, i64 %indvars.iv183, !sourceFile !3, !mergedLineNum !4
  %78 = load float, float* %arrayidx81, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %div84 = fdiv float %78, %conv83, !sourceFile !3, !mergedLineNum !4
  store float %div84, float* %arrayidx81, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1
  %exitcond186.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count185
  br i1 %exitcond186.not, label %return, label %for.body79, !llvm.loop !42, !sourceFile !3, !mergedLineNum !4

return:                                           ; preds = %for.body79, %middle.block196, %if.end73, %do.end5, %for.cond.cleanup, %entry
  %retval.2 = phi i32 [ 3, %entry ], [ 1, %do.end5 ], [ 2, %for.cond.cleanup ], [ 0, %if.end73 ], [ 0, %middle.block196 ], [ 0, %for.body79 ], !sourceFile !3, !mergedLineNum !4
  ret i32 %retval.2, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @eml_trees_predict(%struct._EmlTrees* nocapture readonly %forest, i16* readonly %features, i8 signext %features_length) local_unnamed_addr #2 {
entry:
  %votes = alloca [30 x float], align 16, !sourceFile !3, !mergedLineNum !4
  %n_features = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %forest, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  %0 = load i8, i8* %n_features, align 1, !tbaa !44, !sourceFile !3, !mergedLineNum !4
  %cmp.not = icmp eq i8 %0, %features_length
  br i1 %cmp.not, label %if.end, label %return, !sourceFile !3, !mergedLineNum !4

if.end:                                           ; preds = %entry
  %n_classes = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %forest, i64 0, i32 8, !sourceFile !3, !mergedLineNum !4
  %1 = load i8, i8* %n_classes, align 2, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %cmp4 = icmp sgt i8 %1, 30
  br i1 %cmp4, label %return, label %if.end7, !sourceFile !3, !mergedLineNum !4

if.end7:                                          ; preds = %if.end
  %2 = bitcast [30 x float]* %votes to i8*, !sourceFile !3, !mergedLineNum !4
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %2) #13, !sourceFile !3, !mergedLineNum !4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) %2, i8 0, i64 120, i1 false), !sourceFile !3, !mergedLineNum !4
  %conv10 = sext i8 %1 to i32, !sourceFile !3, !mergedLineNum !4
  %arraydecay = getelementptr inbounds [30 x float], [30 x float]* %votes, i64 0, i64 0, !sourceFile !3, !mergedLineNum !4
  %call = call i32 @eml_trees_predict_proba(%struct._EmlTrees* nonnull %forest, i16* %features, i8 signext undef, float* nonnull %arraydecay, i32 %conv10), !sourceFile !3, !mergedLineNum !4
  %cmp11.not = icmp eq i32 %call, 0, !sourceFile !3, !mergedLineNum !4
  %cmp1562 = icmp sgt i8 %1, 0
  %or.cond = select i1 %cmp11.not, i1 %cmp1562, i1 false
  br i1 %or.cond, label %for.body.preheader, label %cleanup, !sourceFile !3, !mergedLineNum !4

for.body.preheader:                               ; preds = %if.end7
  %wide.trip.count = zext i32 %conv10 to i64
  %3 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %cleanup.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %most_voted_value.064 = phi float [ 0.000000e+00, %for.body.preheader.new ], [ %moved.sel61.3, %for.body ]
  %most_voted_class.063 = phi i32 [ -1, %for.body.preheader.new ], [ %moved.sel.3, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.3, %for.body ]
  %arrayidx = getelementptr inbounds [30 x float], [30 x float]* %votes, i64 0, i64 %indvars.iv, !sourceFile !3, !mergedLineNum !4
  %5 = load float, float* %arrayidx, align 16, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %cmp17 = fcmp ogt float %5, %most_voted_value.064, !sourceFile !3, !mergedLineNum !4
  %moved.sel61 = select i1 %cmp17, float %5, float %most_voted_value.064
  %6 = trunc i64 %indvars.iv to i32
  %moved.sel = select i1 %cmp17, i32 %6, i32 %most_voted_class.063
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds [30 x float], [30 x float]* %votes, i64 0, i64 %indvars.iv.next, !sourceFile !3, !mergedLineNum !4
  %7 = load float, float* %arrayidx.1, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %cmp17.1 = fcmp ogt float %7, %moved.sel61, !sourceFile !3, !mergedLineNum !4
  %moved.sel61.1 = select i1 %cmp17.1, float %7, float %moved.sel61
  %8 = trunc i64 %indvars.iv.next to i32
  %moved.sel.1 = select i1 %cmp17.1, i32 %8, i32 %moved.sel
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds [30 x float], [30 x float]* %votes, i64 0, i64 %indvars.iv.next.1, !sourceFile !3, !mergedLineNum !4
  %9 = load float, float* %arrayidx.2, align 8, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %cmp17.2 = fcmp ogt float %9, %moved.sel61.1, !sourceFile !3, !mergedLineNum !4
  %moved.sel61.2 = select i1 %cmp17.2, float %9, float %moved.sel61.1
  %10 = trunc i64 %indvars.iv.next.1 to i32
  %moved.sel.2 = select i1 %cmp17.2, i32 %10, i32 %moved.sel.1
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds [30 x float], [30 x float]* %votes, i64 0, i64 %indvars.iv.next.2, !sourceFile !3, !mergedLineNum !4
  %11 = load float, float* %arrayidx.3, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %cmp17.3 = fcmp ogt float %11, %moved.sel61.2, !sourceFile !3, !mergedLineNum !4
  %moved.sel61.3 = select i1 %cmp17.3, float %11, float %moved.sel61.2
  %12 = trunc i64 %indvars.iv.next.2 to i32
  %moved.sel.3 = select i1 %cmp17.3, i32 %12, i32 %moved.sel.2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %cleanup.loopexit.unr-lcssa, label %for.body, !llvm.loop !45, !sourceFile !3, !mergedLineNum !4

cleanup.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %moved.sel.lcssa.ph = phi i32 [ undef, %for.body.preheader ], [ %moved.sel.3, %for.body ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.3, %for.body ]
  %most_voted_value.064.unr = phi float [ 0.000000e+00, %for.body.preheader ], [ %moved.sel61.3, %for.body ]
  %most_voted_class.063.unr = phi i32 [ -1, %for.body.preheader ], [ %moved.sel.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %cleanup.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %cleanup.loopexit.unr-lcssa ]
  %most_voted_value.064.epil = phi float [ %moved.sel61.epil, %for.body.epil ], [ %most_voted_value.064.unr, %cleanup.loopexit.unr-lcssa ]
  %most_voted_class.063.epil = phi i32 [ %moved.sel.epil, %for.body.epil ], [ %most_voted_class.063.unr, %cleanup.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body.epil ], [ %xtraiter, %cleanup.loopexit.unr-lcssa ]
  %arrayidx.epil = getelementptr inbounds [30 x float], [30 x float]* %votes, i64 0, i64 %indvars.iv.epil, !sourceFile !3, !mergedLineNum !4
  %13 = load float, float* %arrayidx.epil, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %cmp17.epil = fcmp ogt float %13, %most_voted_value.064.epil, !sourceFile !3, !mergedLineNum !4
  %moved.sel61.epil = select i1 %cmp17.epil, float %13, float %most_voted_value.064.epil
  %14 = trunc i64 %indvars.iv.epil to i32
  %moved.sel.epil = select i1 %cmp17.epil, i32 %14, i32 %most_voted_class.063.epil
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %cleanup, label %for.body.epil, !llvm.loop !46

cleanup:                                          ; preds = %cleanup.loopexit.unr-lcssa, %for.body.epil, %if.end7
  %retval.0 = phi i32 [ -1, %if.end7 ], [ %moved.sel.lcssa.ph, %cleanup.loopexit.unr-lcssa ], [ %moved.sel.epil, %for.body.epil ], !sourceFile !3, !mergedLineNum !4
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %2) #13, !sourceFile !3, !mergedLineNum !4
  br label %return, !sourceFile !3, !mergedLineNum !4

return:                                           ; preds = %if.end, %entry, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ -3, %entry ], [ -3, %if.end ], !sourceFile !3, !mergedLineNum !4
  ret i32 %retval.1, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i32 @eml_trees_regress(%struct._EmlTrees* nocapture readonly %forest, i16* nocapture readonly %features, i8 signext %features_length, float* nocapture %out, i8 signext %out_length) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i8 %out_length, 1
  br i1 %cmp, label %return, label %if.end, !sourceFile !3, !mergedLineNum !4

if.end:                                           ; preds = %entry
  %leaf_bits = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %forest, i64 0, i32 6, !sourceFile !3, !mergedLineNum !4
  %0 = load i8, i8* %leaf_bits, align 8, !tbaa !11, !sourceFile !3, !mergedLineNum !4
  %cmp3.not = icmp eq i8 %0, 32
  br i1 %cmp3.not, label %for.cond.preheader, label %return, !sourceFile !3, !mergedLineNum !4

for.cond.preheader:                               ; preds = %if.end
  %n_trees = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %forest, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %1 = load i32, i32* %n_trees, align 8, !tbaa !12, !sourceFile !3, !mergedLineNum !4
  %nodes.i = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %forest, i64 0, i32 1
  %cmp727 = icmp sgt i32 %1, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp727, label %for.body.lr.ph, label %for.cond.cleanup, !sourceFile !3, !mergedLineNum !4

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %leaves = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %forest, i64 0, i32 5
  %tree_roots = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %forest, i64 0, i32 3
  %2 = load i32*, i32** %tree_roots, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !4
  %3 = load i8*, i8** %leaves, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %eml_trees_predict_tree.exit, %for.cond.preheader
  %sum.0.lcssa = phi float [ 0.000000e+00, %for.cond.preheader ], [ %add, %eml_trees_predict_tree.exit ]
  %conv10 = sitofp i32 %1 to float, !sourceFile !3, !mergedLineNum !4
  %div = fdiv float %sum.0.lcssa, %conv10, !sourceFile !3, !mergedLineNum !4
  store float %div, float* %out, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  br label %return, !sourceFile !3, !mergedLineNum !4

for.body:                                         ; preds = %for.body.lr.ph, %eml_trees_predict_tree.exit
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %eml_trees_predict_tree.exit ]
  %sum.029 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add, %eml_trees_predict_tree.exit ]
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %indvars.iv, !sourceFile !3, !mergedLineNum !4
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %cmp2.i = icmp sgt i32 %4, -1
  br i1 %cmp2.i, label %while.body.lr.ph.i, label %eml_trees_predict_tree.exit, !sourceFile !3, !mergedLineNum !4

while.body.lr.ph.i:                               ; preds = %for.body
  %5 = load %struct._EmlTreesNode*, %struct._EmlTreesNode** %nodes.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %node_idx.03.i = phi i32 [ %4, %while.body.lr.ph.i ], [ %moved.sel47.i, %while.body.i ]
  %idxprom1.i = zext i32 %node_idx.03.i to i64
  %feature1.i = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %5, i64 %idxprom1.i, i32 0, !sourceFile !3, !mergedLineNum !4
  %6 = load i8, i8* %feature1.i, align 2, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %idxprom2.i = sext i8 %6 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx3.i = getelementptr inbounds i16, i16* %features, i64 %idxprom2.i, !sourceFile !3, !mergedLineNum !4
  %7 = load i16, i16* %arrayidx3.i, align 2, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  %value7.i = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %5, i64 %idxprom1.i, i32 1, !sourceFile !3, !mergedLineNum !4
  %8 = load i16, i16* %value7.i, align 2, !tbaa !21, !sourceFile !3, !mergedLineNum !4
  %cmp9.i = icmp slt i16 %7, %8
  %9 = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %5, i64 %idxprom1.i, i32 2, !sourceFile !3, !mergedLineNum !22
  %10 = load i16, i16* %9, align 2, !tbaa !23, !sourceFile !3, !mergedLineNum !22
  %11 = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %5, i64 %idxprom1.i, i32 3, !sourceFile !3, !mergedLineNum !24
  %12 = load i16, i16* %11, align 2, !tbaa !25, !sourceFile !3, !mergedLineNum !24
  %merged.select.i = select i1 %cmp9.i, i16 %10, i16 %12
  %cmp21.i = icmp sgt i16 %merged.select.i, -1
  %conv20.i = sext i16 %merged.select.i to i32, !sourceFile !3, !mergedLineNum !4
  %13 = select i1 %cmp21.i, i32 %node_idx.03.i, i32 0
  %moved.sel47.i = add nsw i32 %13, %conv20.i
  %cmp.i = icmp sgt i32 %moved.sel47.i, -1
  br i1 %cmp.i, label %while.body.i, label %eml_trees_predict_tree.exit, !llvm.loop !26, !sourceFile !3, !mergedLineNum !4

eml_trees_predict_tree.exit:                      ; preds = %while.body.i, %for.body
  %node_idx.0.lcssa.i = phi i32 [ %4, %for.body ], [ %moved.sel47.i, %while.body.i ]
  %conv26.i = xor i32 %node_idx.0.lcssa.i, -1
  %sext.i = shl i32 %conv26.i, 16
  %mul = ashr exact i32 %sext.i, 14
  %idx.ext = sext i32 %mul to i64, !sourceFile !3, !mergedLineNum !4
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext, !sourceFile !3, !mergedLineNum !4
  %14 = bitcast i8* %add.ptr to float*, !sourceFile !3, !mergedLineNum !4
  %15 = load float, float* %14, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %add = fadd float %sum.029, %15, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !48, !sourceFile !3, !mergedLineNum !4

return:                                           ; preds = %if.end, %entry, %for.cond.cleanup
  %retval.0 = phi i32 [ 0, %for.cond.cleanup ], [ 1, %entry ], [ 2, %if.end ], !sourceFile !3, !mergedLineNum !4
  ret i32 %retval.0, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local float @eml_trees_regress1(%struct._EmlTrees* nocapture readonly %forest, i16* nocapture readonly %features, i8 signext %features_length) local_unnamed_addr #4 {
entry:
  %leaf_bits.i = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %forest, i64 0, i32 6, !sourceFile !3, !mergedLineNum !4
  %0 = load i8, i8* %leaf_bits.i, align 8, !tbaa !11, !sourceFile !3, !mergedLineNum !4
  %cmp3.not.i = icmp eq i8 %0, 32
  br i1 %cmp3.not.i, label %for.cond.preheader.i, label %eml_trees_regress.exit, !sourceFile !3, !mergedLineNum !4

for.cond.preheader.i:                             ; preds = %entry
  %n_trees.i = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %forest, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %1 = load i32, i32* %n_trees.i, align 8, !tbaa !12, !sourceFile !3, !mergedLineNum !4
  %nodes.i.i = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %forest, i64 0, i32 1
  %cmp727.i = icmp sgt i32 %1, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp727.i, label %for.body.lr.ph.i, label %.loopexit, !sourceFile !3, !mergedLineNum !4

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %leaves.i = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %forest, i64 0, i32 5
  %tree_roots.i = getelementptr inbounds %struct._EmlTrees, %struct._EmlTrees* %forest, i64 0, i32 3
  %2 = load i32*, i32** %tree_roots.i, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !4
  %3 = load i8*, i8** %leaves.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %wide.trip.count.i = zext i32 %1 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %eml_trees_predict_tree.exit.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %eml_trees_predict_tree.exit.i ]
  %sum.029.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add.i, %eml_trees_predict_tree.exit.i ]
  %arrayidx.i = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.i, !sourceFile !3, !mergedLineNum !4
  %4 = load i32, i32* %arrayidx.i, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %cmp2.i.i = icmp sgt i32 %4, -1
  br i1 %cmp2.i.i, label %while.body.lr.ph.i.i, label %eml_trees_predict_tree.exit.i, !sourceFile !3, !mergedLineNum !4

while.body.lr.ph.i.i:                             ; preds = %for.body.i
  %5 = load %struct._EmlTreesNode*, %struct._EmlTreesNode** %nodes.i.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %while.body.lr.ph.i.i
  %node_idx.03.i.i = phi i32 [ %4, %while.body.lr.ph.i.i ], [ %moved.sel47.i.i, %while.body.i.i ]
  %idxprom1.i.i = zext i32 %node_idx.03.i.i to i64
  %feature1.i.i = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %5, i64 %idxprom1.i.i, i32 0, !sourceFile !3, !mergedLineNum !4
  %6 = load i8, i8* %feature1.i.i, align 2, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %idxprom2.i.i = sext i8 %6 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx3.i.i = getelementptr inbounds i16, i16* %features, i64 %idxprom2.i.i, !sourceFile !3, !mergedLineNum !4
  %7 = load i16, i16* %arrayidx3.i.i, align 2, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  %value7.i.i = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %5, i64 %idxprom1.i.i, i32 1, !sourceFile !3, !mergedLineNum !4
  %8 = load i16, i16* %value7.i.i, align 2, !tbaa !21, !sourceFile !3, !mergedLineNum !4
  %cmp9.i.i = icmp slt i16 %7, %8
  %9 = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %5, i64 %idxprom1.i.i, i32 2, !sourceFile !3, !mergedLineNum !22
  %10 = load i16, i16* %9, align 2, !tbaa !23, !sourceFile !3, !mergedLineNum !22
  %11 = getelementptr inbounds %struct._EmlTreesNode, %struct._EmlTreesNode* %5, i64 %idxprom1.i.i, i32 3, !sourceFile !3, !mergedLineNum !24
  %12 = load i16, i16* %11, align 2, !tbaa !25, !sourceFile !3, !mergedLineNum !24
  %merged.select.i.i = select i1 %cmp9.i.i, i16 %10, i16 %12
  %cmp21.i.i = icmp sgt i16 %merged.select.i.i, -1
  %conv20.i.i = sext i16 %merged.select.i.i to i32, !sourceFile !3, !mergedLineNum !4
  %13 = select i1 %cmp21.i.i, i32 %node_idx.03.i.i, i32 0
  %moved.sel47.i.i = add nsw i32 %13, %conv20.i.i
  %cmp.i.i = icmp sgt i32 %moved.sel47.i.i, -1
  br i1 %cmp.i.i, label %while.body.i.i, label %eml_trees_predict_tree.exit.i, !llvm.loop !26, !sourceFile !3, !mergedLineNum !4

eml_trees_predict_tree.exit.i:                    ; preds = %while.body.i.i, %for.body.i
  %node_idx.0.lcssa.i.i = phi i32 [ %4, %for.body.i ], [ %moved.sel47.i.i, %while.body.i.i ]
  %conv26.i.i = xor i32 %node_idx.0.lcssa.i.i, -1
  %sext.i.i = shl i32 %conv26.i.i, 16
  %mul.i = ashr exact i32 %sext.i.i, 14
  %idx.ext.i = sext i32 %mul.i to i64, !sourceFile !3, !mergedLineNum !4
  %add.ptr.i = getelementptr inbounds i8, i8* %3, i64 %idx.ext.i, !sourceFile !3, !mergedLineNum !4
  %14 = bitcast i8* %add.ptr.i to float*, !sourceFile !3, !mergedLineNum !4
  %15 = load float, float* %14, align 4, !tbaa !29, !sourceFile !3, !mergedLineNum !4
  %add.i = fadd float %sum.029.i, %15, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %for.body.i, !llvm.loop !48, !sourceFile !3, !mergedLineNum !4

.loopexit:                                        ; preds = %eml_trees_predict_tree.exit.i, %for.cond.preheader.i
  %sum.0.lcssa.i = phi float [ 0.000000e+00, %for.cond.preheader.i ], [ %add.i, %eml_trees_predict_tree.exit.i ]
  %conv10.i = sitofp i32 %1 to float, !sourceFile !3, !mergedLineNum !4
  %div.i = fdiv float %sum.0.lcssa.i, %conv10.i, !sourceFile !3, !mergedLineNum !4
  br label %eml_trees_regress.exit

eml_trees_regress.exit:                           ; preds = %entry, %.loopexit
  %16 = phi float [ %div.i, %.loopexit ], [ 0x7FF8000000000000, %entry ]
  ret float %16, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @iris_predict(i16* nocapture readonly %features, i32 %features_length) local_unnamed_addr #4 {
entry:
  %votes = alloca [3 x i32], align 4, !sourceFile !3, !mergedLineNum !4
  %0 = bitcast [3 x i32]* %votes to i8*, !sourceFile !3, !mergedLineNum !4
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #13, !sourceFile !3, !mergedLineNum !4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %0, i8 0, i64 12, i1 false), !sourceFile !3, !mergedLineNum !4
  %features.val = load i16, i16* %features, align 2, !tbaa !20
  %features.idx = getelementptr i16, i16* %features, i64 2
  %features.idx.val = load i16, i16* %features.idx, align 2, !tbaa !20
  %features.idx16 = getelementptr i16, i16* %features, i64 3
  %features.idx16.val = load i16, i16* %features.idx16, align 2, !tbaa !20
  %1 = icmp slt i16 %features.idx16.val, 1
  %2 = icmp slt i16 %features.idx.val, 4
  %3 = sext i16 %features.val to i32, !sourceFile !3, !mergedLineNum !49
  %4 = select i1 %1, i32 6, i32 5
  %5 = icmp sgt i32 %4, %3, !sourceFile !3, !mergedLineNum !49
  %cmp.i = icmp slt i16 %features.idx16.val, 0
  %6 = select i1 %2, i1 true, i1 %1
  %7 = select i1 %1, i1 true, i1 %5
  %8 = select i1 %2, i64 1, i64 2
  %9 = select i1 %1, i64 %8, i64 1
  %10 = select i1 %5, i64 1, i64 2
  %11 = select i1 %2, i64 2, i64 %10
  %12 = select i1 %1, i64 %11, i64 2
  %13 = select i1 %7, i64 %9, i64 %12
  %14 = select i1 %6, i64 %13, i64 2
  %15 = select i1 %cmp.i, i64 0, i64 %14
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %votes, i64 0, i64 %15, !sourceFile !3, !mergedLineNum !4
  %16 = load i32, i32* %arrayidx, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %add = add nsw i32 %16, 1, !sourceFile !3, !mergedLineNum !4
  store i32 %add, i32* %arrayidx, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %votes, i64 0, i64 0, !sourceFile !3, !mergedLineNum !4
  %17 = load i32, i32* %arrayidx2, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %cmp3 = icmp sgt i32 %17, 0, !sourceFile !3, !mergedLineNum !4
  %moved.sel15 = select i1 %cmp3, i32 %17, i32 0
  %not.cmp3 = xor i1 %cmp3, true
  %moved.sel = sext i1 %not.cmp3 to i32
  %arrayidx2.1 = getelementptr inbounds [3 x i32], [3 x i32]* %votes, i64 0, i64 1, !sourceFile !3, !mergedLineNum !4
  %18 = load i32, i32* %arrayidx2.1, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %cmp3.1 = icmp sgt i32 %18, %moved.sel15, !sourceFile !3, !mergedLineNum !4
  %moved.sel15.1 = select i1 %cmp3.1, i32 %18, i32 %moved.sel15
  %moved.sel.1 = select i1 %cmp3.1, i32 1, i32 %moved.sel
  %arrayidx2.2 = getelementptr inbounds [3 x i32], [3 x i32]* %votes, i64 0, i64 2, !sourceFile !3, !mergedLineNum !4
  %19 = load i32, i32* %arrayidx2.2, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %cmp3.2 = icmp sgt i32 %19, %moved.sel15.1, !sourceFile !3, !mergedLineNum !4
  %moved.sel.2 = select i1 %cmp3.2, i32 2, i32 %moved.sel.1
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #13, !sourceFile !3, !mergedLineNum !4
  ret i32 %moved.sel.2, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nounwind uwtable
define dso_local void @init_papi_vars() local_unnamed_addr #5 {
entry:
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @values to i8*), i8 0, i64 40, i1 false)
  %call = tail call i32 @PAPI_library_init(i32 117506048) #13, !sourceFile !3, !mergedLineNum !4
  store i32 %call, i32* @retval, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %cmp1.not = icmp eq i32 %call, 117506048, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp1.not, label %if.end, label %if.then, !sourceFile !3, !mergedLineNum !4

if.then:                                          ; preds = %entry
  %puts44 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str.13, i64 0, i64 0))
  tail call void @exit(i32 -1) #14, !sourceFile !3, !mergedLineNum !4
  unreachable, !sourceFile !3, !mergedLineNum !4

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @PAPI_create_eventset(i32* nonnull @eventset) #13, !sourceFile !3, !mergedLineNum !4
  store i32 %call3, i32* @retval, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %tobool.not = icmp eq i32 %call3, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not, label %for.body11.preheader, label %if.then4, !sourceFile !3, !mergedLineNum !4

for.body11.preheader:                             ; preds = %if.end
  %0 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 0), align 16, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call14 = tail call i32 @PAPI_query_event(i32 %0) #13, !sourceFile !3, !mergedLineNum !4
  %cmp15.not = icmp eq i32 %call14, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp15.not, label %if.end17, label %for.inc32, !sourceFile !3, !mergedLineNum !4

if.then4:                                         ; preds = %if.end
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 -1) #14, !sourceFile !3, !mergedLineNum !4
  unreachable, !sourceFile !3, !mergedLineNum !4

if.end17:                                         ; preds = %for.body11.preheader
  %1 = load i32, i32* @eventset, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %2 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 0), align 16, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call20 = tail call i32 @PAPI_add_event(i32 %1, i32 %2) #13, !sourceFile !3, !mergedLineNum !4
  %cmp21 = icmp eq i32 %call20, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp21, label %if.then22, label %if.else, !sourceFile !3, !mergedLineNum !4

if.then22:                                        ; preds = %if.end17
  %3 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 0), align 16, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %4 = load i32, i32* @nevents, align 4, !tbaa !15
  %idxprom25 = sext i32 %4 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx26 = getelementptr inbounds [5 x i32], [5 x i32]* @events, i64 0, i64 %idxprom25, !sourceFile !3, !mergedLineNum !4
  store i32 %3, i32* %arrayidx26, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %inc27 = add nsw i32 %4, 1, !sourceFile !3, !mergedLineNum !4
  store i32 %inc27, i32* @nevents, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  br label %for.inc32, !sourceFile !3, !mergedLineNum !4

if.else:                                          ; preds = %if.end17
  %call30 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([5 x [256 x i8]], [5 x [256 x i8]]* @event_names, i64 0, i64 0, i64 0)), !sourceFile !3, !mergedLineNum !4
  br label %for.inc32, !sourceFile !3, !mergedLineNum !4

for.inc32:                                        ; preds = %if.then22, %if.else, %for.body11.preheader
  %5 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 1), align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call14.1 = tail call i32 @PAPI_query_event(i32 %5) #13, !sourceFile !3, !mergedLineNum !4
  %cmp15.not.1 = icmp eq i32 %call14.1, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp15.not.1, label %if.end17.1, label %for.inc32.1, !sourceFile !3, !mergedLineNum !4

if.end17.1:                                       ; preds = %for.inc32
  %6 = load i32, i32* @eventset, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %7 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 1), align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call20.1 = tail call i32 @PAPI_add_event(i32 %6, i32 %7) #13, !sourceFile !3, !mergedLineNum !4
  %cmp21.1 = icmp eq i32 %call20.1, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp21.1, label %if.then22.1, label %if.else.1, !sourceFile !3, !mergedLineNum !4

if.else.1:                                        ; preds = %if.end17.1
  %call30.1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([5 x [256 x i8]], [5 x [256 x i8]]* @event_names, i64 0, i64 1, i64 0)), !sourceFile !3, !mergedLineNum !4
  br label %for.inc32.1, !sourceFile !3, !mergedLineNum !4

if.then22.1:                                      ; preds = %if.end17.1
  %8 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 1), align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %9 = load i32, i32* @nevents, align 4, !tbaa !15
  %idxprom25.1 = sext i32 %9 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx26.1 = getelementptr inbounds [5 x i32], [5 x i32]* @events, i64 0, i64 %idxprom25.1, !sourceFile !3, !mergedLineNum !4
  store i32 %8, i32* %arrayidx26.1, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %inc27.1 = add nsw i32 %9, 1, !sourceFile !3, !mergedLineNum !4
  store i32 %inc27.1, i32* @nevents, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  br label %for.inc32.1, !sourceFile !3, !mergedLineNum !4

for.inc32.1:                                      ; preds = %if.then22.1, %if.else.1, %for.inc32
  %10 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 2), align 8, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call14.2 = tail call i32 @PAPI_query_event(i32 %10) #13, !sourceFile !3, !mergedLineNum !4
  %cmp15.not.2 = icmp eq i32 %call14.2, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp15.not.2, label %if.end17.2, label %for.inc32.2, !sourceFile !3, !mergedLineNum !4

if.end17.2:                                       ; preds = %for.inc32.1
  %11 = load i32, i32* @eventset, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %12 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 2), align 8, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call20.2 = tail call i32 @PAPI_add_event(i32 %11, i32 %12) #13, !sourceFile !3, !mergedLineNum !4
  %cmp21.2 = icmp eq i32 %call20.2, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp21.2, label %if.then22.2, label %if.else.2, !sourceFile !3, !mergedLineNum !4

if.else.2:                                        ; preds = %if.end17.2
  %call30.2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([5 x [256 x i8]], [5 x [256 x i8]]* @event_names, i64 0, i64 2, i64 0)), !sourceFile !3, !mergedLineNum !4
  br label %for.inc32.2, !sourceFile !3, !mergedLineNum !4

if.then22.2:                                      ; preds = %if.end17.2
  %13 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 2), align 8, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %14 = load i32, i32* @nevents, align 4, !tbaa !15
  %idxprom25.2 = sext i32 %14 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx26.2 = getelementptr inbounds [5 x i32], [5 x i32]* @events, i64 0, i64 %idxprom25.2, !sourceFile !3, !mergedLineNum !4
  store i32 %13, i32* %arrayidx26.2, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %inc27.2 = add nsw i32 %14, 1, !sourceFile !3, !mergedLineNum !4
  store i32 %inc27.2, i32* @nevents, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  br label %for.inc32.2, !sourceFile !3, !mergedLineNum !4

for.inc32.2:                                      ; preds = %if.then22.2, %if.else.2, %for.inc32.1
  %15 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 3), align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call14.3 = tail call i32 @PAPI_query_event(i32 %15) #13, !sourceFile !3, !mergedLineNum !4
  %cmp15.not.3 = icmp eq i32 %call14.3, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp15.not.3, label %if.end17.3, label %for.inc32.3, !sourceFile !3, !mergedLineNum !4

if.end17.3:                                       ; preds = %for.inc32.2
  %16 = load i32, i32* @eventset, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %17 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 3), align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call20.3 = tail call i32 @PAPI_add_event(i32 %16, i32 %17) #13, !sourceFile !3, !mergedLineNum !4
  %cmp21.3 = icmp eq i32 %call20.3, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp21.3, label %if.then22.3, label %if.else.3, !sourceFile !3, !mergedLineNum !4

if.else.3:                                        ; preds = %if.end17.3
  %call30.3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([5 x [256 x i8]], [5 x [256 x i8]]* @event_names, i64 0, i64 3, i64 0)), !sourceFile !3, !mergedLineNum !4
  br label %for.inc32.3, !sourceFile !3, !mergedLineNum !4

if.then22.3:                                      ; preds = %if.end17.3
  %18 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 3), align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %19 = load i32, i32* @nevents, align 4, !tbaa !15
  %idxprom25.3 = sext i32 %19 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx26.3 = getelementptr inbounds [5 x i32], [5 x i32]* @events, i64 0, i64 %idxprom25.3, !sourceFile !3, !mergedLineNum !4
  store i32 %18, i32* %arrayidx26.3, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %inc27.3 = add nsw i32 %19, 1, !sourceFile !3, !mergedLineNum !4
  store i32 %inc27.3, i32* @nevents, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  br label %for.inc32.3, !sourceFile !3, !mergedLineNum !4

for.inc32.3:                                      ; preds = %if.then22.3, %if.else.3, %for.inc32.2
  %20 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 4), align 16, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call14.4 = tail call i32 @PAPI_query_event(i32 %20) #13, !sourceFile !3, !mergedLineNum !4
  %cmp15.not.4 = icmp eq i32 %call14.4, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp15.not.4, label %if.end17.4, label %for.inc32.4, !sourceFile !3, !mergedLineNum !4

if.end17.4:                                       ; preds = %for.inc32.3
  %21 = load i32, i32* @eventset, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %22 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 4), align 16, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call20.4 = tail call i32 @PAPI_add_event(i32 %21, i32 %22) #13, !sourceFile !3, !mergedLineNum !4
  %cmp21.4 = icmp eq i32 %call20.4, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp21.4, label %if.then22.4, label %if.else.4, !sourceFile !3, !mergedLineNum !4

if.else.4:                                        ; preds = %if.end17.4
  %call30.4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([5 x [256 x i8]], [5 x [256 x i8]]* @event_names, i64 0, i64 4, i64 0)), !sourceFile !3, !mergedLineNum !4
  br label %for.inc32.4, !sourceFile !3, !mergedLineNum !4

if.then22.4:                                      ; preds = %if.end17.4
  %23 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @events, i64 0, i64 4), align 16, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %24 = load i32, i32* @nevents, align 4, !tbaa !15
  %idxprom25.4 = sext i32 %24 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx26.4 = getelementptr inbounds [5 x i32], [5 x i32]* @events, i64 0, i64 %idxprom25.4, !sourceFile !3, !mergedLineNum !4
  store i32 %23, i32* %arrayidx26.4, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %inc27.4 = add nsw i32 %24, 1, !sourceFile !3, !mergedLineNum !4
  store i32 %inc27.4, i32* @nevents, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  br label %for.inc32.4, !sourceFile !3, !mergedLineNum !4

for.inc32.4:                                      ; preds = %if.then22.4, %if.else.4, %for.inc32.3
  ret void, !sourceFile !3, !mergedLineNum !4
}

declare dso_local i32 @PAPI_library_init(i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #8

declare dso_local i32 @PAPI_create_eventset(i32*) local_unnamed_addr #6

declare dso_local i32 @PAPI_query_event(i32) local_unnamed_addr #6

declare dso_local i32 @PAPI_add_event(i32, i32) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @clear_cvals() local_unnamed_addr #9 {
entry:
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @cvalues to i8*), i8 0, i64 40, i1 false)
  ret void, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #5 {
entry:
  %cmp = icmp sgt i32 %argc, 1, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp, label %if.then, label %if.end5, !sourceFile !3, !mergedLineNum !4

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1, !sourceFile !3, !mergedLineNum !4
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !50, !sourceFile !3, !mergedLineNum !4
  %call.i = tail call i64 @strtol(i8* nocapture nonnull %0, i8** null, i32 10) #13, !sourceFile !3, !mergedLineNum !4
  %conv.i = trunc i64 %call.i to i32, !sourceFile !3, !mergedLineNum !4
  %call.off = add i32 %conv.i, -1
  %1 = icmp ugt i32 %call.off, 999999
  br i1 %1, label %if.then3, label %if.end5, !sourceFile !3, !mergedLineNum !4

if.then3:                                         ; preds = %if.then
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str.14, i64 0, i64 0))
  br label %cleanup64, !sourceFile !3, !mergedLineNum !4

if.end5:                                          ; preds = %if.then, %entry
  %num_samples.0 = phi i64 [ %call.i, %if.then ], [ 500000000, %entry ]
  %conv87 = and i64 %num_samples.0, 4294967295
  tail call void @srand(i32 42) #13, !sourceFile !3, !mergedLineNum !4
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %if.end5, %for.cond11.preheader
  %indvars.iv = phi i64 [ 0, %if.end5 ], [ %indvars.iv.next, %for.cond11.preheader ]
  %call16 = tail call i32 @rand() #13, !sourceFile !3, !mergedLineNum !4
  %call16.1 = tail call i32 @rand() #13, !sourceFile !3, !mergedLineNum !4
  %call16.2 = tail call i32 @rand() #13, !sourceFile !3, !mergedLineNum !4
  %call16.3 = tail call i32 @rand() #13, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %conv87
  br i1 %exitcond.not, label %for.body31.preheader, label %for.cond11.preheader, !llvm.loop !51, !sourceFile !3, !mergedLineNum !4

for.body31.preheader:                             ; preds = %for.cond11.preheader
  tail call void @init_papi_vars(), !sourceFile !3, !mergedLineNum !4
  %call24 = tail call i64 @PAPI_get_real_usec() #13, !sourceFile !3, !mergedLineNum !4
  store i64 %call24, i64* @t1, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %2 = load i32, i32* @eventset, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call25 = tail call i32 @PAPI_start(i32 %2) #13, !sourceFile !3, !mergedLineNum !4
  %3 = add nsw i64 %conv87, -1
  %xtraiter = and i64 %num_samples.0, 7
  %4 = icmp ult i64 %3, 7
  br i1 %4, label %for.cond.cleanup30.unr-lcssa, label %for.body31.preheader.new

for.body31.preheader.new:                         ; preds = %for.body31.preheader
  %unroll_iter = sub nsw i64 %conv87, %xtraiter
  br label %for.body31

for.cond.cleanup30.unr-lcssa:                     ; preds = %for.body31, %for.body31.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup30, label %for.body31.epil

for.body31.epil:                                  ; preds = %for.cond.cleanup30.unr-lcssa, %for.body31.epil
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body31.epil ], [ %xtraiter, %for.cond.cleanup30.unr-lcssa ]
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup30, label %for.body31.epil, !llvm.loop !54

for.cond.cleanup30:                               ; preds = %for.body31.epil, %for.cond.cleanup30.unr-lcssa
  %call38 = tail call i64 @PAPI_get_real_usec() #13, !sourceFile !3, !mergedLineNum !4
  %5 = load i64, i64* @t1, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %sub39 = sub nsw i64 %call38, %5, !sourceFile !3, !mergedLineNum !4
  %call40 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 %sub39), !sourceFile !3, !mergedLineNum !4
  %6 = load i32, i32* @eventset, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call41 = tail call i32 @PAPI_stop(i32 %6, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @values, i64 0, i64 0)) #13, !sourceFile !3, !mergedLineNum !4
  %7 = load i32, i32* @nevents, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %cmp4493 = icmp sgt i32 %7, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp4493, label %for.body47, label %for.cond.cleanup46, !sourceFile !3, !mergedLineNum !4

for.body31:                                       ; preds = %for.body31, %for.body31.preheader.new
  %niter = phi i64 [ %unroll_iter, %for.body31.preheader.new ], [ %niter.nsub.7, %for.body31 ]
  %niter.nsub.7 = add i64 %niter, -8
  %niter.ncmp.7 = icmp eq i64 %niter.nsub.7, 0
  br i1 %niter.ncmp.7, label %for.cond.cleanup30.unr-lcssa, label %for.body31, !llvm.loop !55, !sourceFile !3, !mergedLineNum !4

for.cond.cleanup46:                               ; preds = %for.body47, %for.cond.cleanup30
  %8 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @values, i64 0, i64 2), align 16, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %conv57 = sitofp i64 %8 to float, !sourceFile !3, !mergedLineNum !4
  %9 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @values, i64 0, i64 1), align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %conv58 = sitofp i64 %9 to float, !sourceFile !3, !mergedLineNum !4
  %div = fdiv float %conv57, %conv58, !sourceFile !3, !mergedLineNum !4
  %conv59 = fpext float %div to double, !sourceFile !3, !mergedLineNum !4
  %sub60 = fsub double 1.000000e+00, %conv59, !sourceFile !3, !mergedLineNum !4
  %mul61 = fmul double %sub60, 1.000000e+02, !sourceFile !3, !mergedLineNum !4
  %call62 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), double %mul61), !sourceFile !3, !mergedLineNum !4
  %putchar = tail call i32 @putchar(i32 10)
  br label %cleanup64, !sourceFile !3, !mergedLineNum !4

for.body47:                                       ; preds = %for.cond.cleanup30, %for.body47
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body47 ], [ 0, %for.cond.cleanup30 ]
  %arrayidx49 = getelementptr inbounds [5 x i32], [5 x i32]* @events, i64 0, i64 %indvars.iv99, !sourceFile !3, !mergedLineNum !4
  %10 = load i32, i32* %arrayidx49, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call50 = tail call i32 @PAPI_get_event_info(i32 %10, %struct.event_info* nonnull @info) #13, !sourceFile !3, !mergedLineNum !4
  %arrayidx52 = getelementptr inbounds [5 x i64], [5 x i64]* @values, i64 0, i64 %indvars.iv99, !sourceFile !3, !mergedLineNum !4
  %11 = load i64, i64* %arrayidx52, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %call53 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds (%struct.event_info, %struct.event_info* @info, i64 0, i32 2, i64 0), i64 %11), !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %12 = load i32, i32* @nevents, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %13 = sext i32 %12 to i64
  %cmp44 = icmp slt i64 %indvars.iv.next100, %13, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp44, label %for.body47, label %for.cond.cleanup46, !llvm.loop !56, !sourceFile !3, !mergedLineNum !4

cleanup64:                                        ; preds = %for.cond.cleanup46, %if.then3
  %retval.1 = phi i32 [ 1, %if.then3 ], [ 0, %for.cond.cleanup46 ], !sourceFile !3, !mergedLineNum !4
  ret i32 %retval.1, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #10

declare dso_local i64 @PAPI_get_real_usec() local_unnamed_addr #6

declare dso_local i32 @PAPI_start(i32) local_unnamed_addr #6

declare dso_local i32 @PAPI_stop(i32, i64*) local_unnamed_addr #6

declare dso_local i32 @PAPI_get_event_info(i32, %struct.event_info*) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (git@github.com:kirshanthans/llvm-project-exp.git 63be16900b7261c43bffac7ac5400488560f71a7)"}
!3 = !{!""}
!4 = !{!"-1"}
!5 = !{!6, !8, i64 50}
!6 = !{!"_EmlTrees", !7, i64 0, !10, i64 8, !7, i64 16, !10, i64 24, !7, i64 32, !10, i64 40, !8, i64 48, !8, i64 49, !8, i64 50}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !8, i64 48}
!12 = !{!6, !7, i64 16}
!13 = !{!6, !10, i64 24}
!14 = !{!6, !10, i64 40}
!15 = !{!7, !7, i64 0}
!16 = !{!6, !10, i64 8}
!17 = !{!18, !8, i64 0}
!18 = !{!"_EmlTreesNode", !8, i64 0, !19, i64 2, !19, i64 4, !19, i64 6}
!19 = !{!"short", !8, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!18, !19, i64 2}
!22 = !{!"-2,-1"}
!23 = !{!18, !19, i64 4}
!24 = !{!"-1,-2"}
!25 = !{!18, !19, i64 6}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!8, !8, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"float", !8, i64 0}
!31 = distinct !{!31, !27}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !27, !38}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !27, !38}
!41 = distinct !{!41, !27, !38}
!42 = distinct !{!42, !27, !43, !38}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!6, !8, i64 49}
!45 = distinct !{!45, !27}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !27}
!49 = !{!"-1,-2,-2,-2,-1,-2"}
!50 = !{!10, !10, i64 0}
!51 = distinct !{!51, !27}
!52 = !{!53, !53, i64 0}
!53 = !{!"long long", !8, i64 0}
!54 = distinct !{!54, !47}
!55 = distinct !{!55, !27}
!56 = distinct !{!56, !27}
