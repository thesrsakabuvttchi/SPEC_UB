; ModuleID = 'knn.c'
source_filename = "knn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._EmlNeighborsModel = type { i16, i16, i16, i16*, i16*, i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._EmlNeighborsDistanceItem = type { i16, i32 }
%struct.anon = type { i64, i64 }

@eml_neighbors_votes = dso_local local_unnamed_addr global [10 x i16] zeroinitializer, align 16
@iris_knn_data = internal constant [600 x i16] [i16 5, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 4, i16 2, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 5, i16 4, i16 1, i16 0, i16 5, i16 4, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 4, i16 1, i16 0, i16 5, i16 4, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 4, i16 2, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 4, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 5, i16 3, i16 1, i16 0, i16 7, i16 3, i16 4, i16 1, i16 6, i16 3, i16 4, i16 1, i16 6, i16 3, i16 4, i16 1, i16 5, i16 2, i16 4, i16 1, i16 6, i16 2, i16 4, i16 1, i16 5, i16 2, i16 4, i16 1, i16 6, i16 3, i16 4, i16 1, i16 4, i16 2, i16 3, i16 1, i16 6, i16 2, i16 4, i16 1, i16 5, i16 2, i16 3, i16 1, i16 5, i16 2, i16 3, i16 1, i16 5, i16 3, i16 4, i16 1, i16 6, i16 2, i16 4, i16 1, i16 6, i16 2, i16 4, i16 1, i16 5, i16 2, i16 3, i16 1, i16 6, i16 3, i16 4, i16 1, i16 5, i16 3, i16 4, i16 1, i16 5, i16 2, i16 4, i16 1, i16 6, i16 2, i16 4, i16 1, i16 5, i16 2, i16 3, i16 1, i16 5, i16 3, i16 4, i16 1, i16 6, i16 2, i16 4, i16 1, i16 6, i16 2, i16 4, i16 1, i16 6, i16 2, i16 4, i16 1, i16 6, i16 2, i16 4, i16 1, i16 6, i16 3, i16 4, i16 1, i16 6, i16 2, i16 4, i16 1, i16 6, i16 3, i16 5, i16 1, i16 6, i16 2, i16 4, i16 1, i16 5, i16 2, i16 3, i16 1, i16 5, i16 2, i16 3, i16 1, i16 5, i16 2, i16 3, i16 1, i16 5, i16 2, i16 3, i16 1, i16 6, i16 2, i16 5, i16 1, i16 5, i16 3, i16 4, i16 1, i16 6, i16 3, i16 4, i16 1, i16 6, i16 3, i16 4, i16 1, i16 6, i16 2, i16 4, i16 1, i16 5, i16 3, i16 4, i16 1, i16 5, i16 2, i16 4, i16 1, i16 5, i16 2, i16 4, i16 1, i16 6, i16 3, i16 4, i16 1, i16 5, i16 2, i16 4, i16 1, i16 5, i16 2, i16 3, i16 1, i16 5, i16 2, i16 4, i16 1, i16 5, i16 3, i16 4, i16 1, i16 5, i16 2, i16 4, i16 1, i16 6, i16 2, i16 4, i16 1, i16 5, i16 2, i16 3, i16 1, i16 5, i16 2, i16 4, i16 1, i16 6, i16 3, i16 6, i16 2, i16 5, i16 2, i16 5, i16 1, i16 7, i16 3, i16 5, i16 2, i16 6, i16 2, i16 5, i16 1, i16 6, i16 3, i16 5, i16 2, i16 7, i16 3, i16 6, i16 2, i16 4, i16 2, i16 4, i16 1, i16 7, i16 2, i16 6, i16 1, i16 6, i16 2, i16 5, i16 1, i16 7, i16 3, i16 6, i16 2, i16 6, i16 3, i16 5, i16 2, i16 6, i16 2, i16 5, i16 1, i16 6, i16 3, i16 5, i16 2, i16 5, i16 2, i16 5, i16 2, i16 5, i16 2, i16 5, i16 2, i16 6, i16 3, i16 5, i16 2, i16 6, i16 3, i16 5, i16 1, i16 7, i16 3, i16 6, i16 2, i16 7, i16 2, i16 6, i16 2, i16 6, i16 2, i16 5, i16 1, i16 6, i16 3, i16 5, i16 2, i16 5, i16 2, i16 4, i16 2, i16 7, i16 2, i16 6, i16 2, i16 6, i16 2, i16 4, i16 1, i16 6, i16 3, i16 5, i16 2, i16 7, i16 3, i16 6, i16 1, i16 6, i16 2, i16 4, i16 1, i16 6, i16 3, i16 4, i16 1, i16 6, i16 2, i16 5, i16 2, i16 7, i16 3, i16 5, i16 1, i16 7, i16 2, i16 6, i16 1, i16 7, i16 3, i16 6, i16 2, i16 6, i16 2, i16 5, i16 2, i16 6, i16 2, i16 5, i16 1, i16 6, i16 2, i16 5, i16 1, i16 7, i16 3, i16 6, i16 2, i16 6, i16 3, i16 5, i16 2, i16 6, i16 3, i16 5, i16 1, i16 6, i16 3, i16 4, i16 1, i16 6, i16 3, i16 5, i16 2, i16 6, i16 3, i16 5, i16 2, i16 6, i16 3, i16 5, i16 2, i16 5, i16 2, i16 5, i16 1, i16 6, i16 3, i16 5, i16 2, i16 6, i16 3, i16 5, i16 2, i16 6, i16 3, i16 5, i16 2, i16 6, i16 2, i16 5, i16 1, i16 6, i16 3, i16 5, i16 2, i16 6, i16 3, i16 5, i16 2, i16 5, i16 3, i16 5, i16 1], align 16
@iris_knn_labels = internal constant [150 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2], align 16
@iris_knn = dso_local global %struct._EmlNeighborsModel { i16 4, i16 150, i16 150, i16* getelementptr inbounds ([600 x i16], [600 x i16]* @iris_knn_data, i32 0, i32 0), i16* getelementptr inbounds ([150 x i16], [150 x i16]* @iris_knn_labels, i32 0, i32 0), i16 3 }, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Completed %d KNN inferences in %.3f seconds\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @eml_isqrt(i32 %x) local_unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %q.0 = phi i32 [ 1, %entry ], [ %shl, %while.cond ]
  %cmp.not = icmp sgt i32 %q.0, %x
  %shl = shl i32 %q.0, 2
  br i1 %cmp.not, label %while.cond1.preheader, label %while.cond, !llvm.loop !3

while.cond1.preheader:                            ; preds = %while.cond
  %cmp223 = icmp sgt i32 %q.0, 1
  br i1 %cmp223, label %while.body3, label %while.end7

while.body3:                                      ; preds = %while.cond1.preheader, %while.body3
  %x.addr.026 = phi i32 [ %spec.select21, %while.body3 ], [ %x, %while.cond1.preheader ]
  %r.025 = phi i32 [ %spec.select, %while.body3 ], [ 0, %while.cond1.preheader ]
  %q.124 = phi i32 [ %shr22, %while.body3 ], [ %q.0, %while.cond1.preheader ]
  %shr22 = lshr i32 %q.124, 2
  %0 = add i32 %r.025, %shr22
  %sub4 = sub i32 %x.addr.026, %0
  %shr5 = ashr i32 %r.025, 1
  %cmp6 = icmp sgt i32 %sub4, -1
  %add = select i1 %cmp6, i32 %shr22, i32 0
  %spec.select = add nsw i32 %add, %shr5
  %spec.select21 = select i1 %cmp6, i32 %sub4, i32 %x.addr.026
  %cmp2 = icmp ugt i32 %q.124, 7
  br i1 %cmp2, label %while.body3, label %while.end7, !llvm.loop !5

while.end7:                                       ; preds = %while.body3, %while.cond1.preheader
  %r.0.lcssa = phi i32 [ 0, %while.cond1.preheader ], [ %spec.select, %while.body3 ]
  ret i32 %r.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @eml_distance_euclidean_int16(i16* nocapture readonly %a, i16* nocapture readonly %b, i32 %length) local_unnamed_addr #2 {
entry:
  %cmp14 = icmp sgt i32 %length, 0
  br i1 %cmp14, label %for.body.preheader, label %while.cond.i.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %length to i64
  %min.iters.check = icmp ult i32 %length, 8
  br i1 %min.iters.check, label %for.body.preheader21, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %16, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %17, %vector.body ]
  %0 = getelementptr inbounds i16, i16* %a, i64 %index
  %1 = bitcast i16* %0 to <4 x i16>*
  %wide.load = load <4 x i16>, <4 x i16>* %1, align 2, !tbaa !6
  %2 = getelementptr inbounds i16, i16* %0, i64 4
  %3 = bitcast i16* %2 to <4 x i16>*
  %wide.load18 = load <4 x i16>, <4 x i16>* %3, align 2, !tbaa !6
  %4 = sext <4 x i16> %wide.load to <4 x i32>
  %5 = sext <4 x i16> %wide.load18 to <4 x i32>
  %6 = getelementptr inbounds i16, i16* %b, i64 %index
  %7 = bitcast i16* %6 to <4 x i16>*
  %wide.load19 = load <4 x i16>, <4 x i16>* %7, align 2, !tbaa !6
  %8 = getelementptr inbounds i16, i16* %6, i64 4
  %9 = bitcast i16* %8 to <4 x i16>*
  %wide.load20 = load <4 x i16>, <4 x i16>* %9, align 2, !tbaa !6
  %10 = sext <4 x i16> %wide.load19 to <4 x i32>
  %11 = sext <4 x i16> %wide.load20 to <4 x i32>
  %12 = sub nsw <4 x i32> %4, %10
  %13 = sub nsw <4 x i32> %5, %11
  %14 = mul nsw <4 x i32> %12, %12
  %15 = mul nsw <4 x i32> %13, %13
  %16 = add <4 x i32> %14, %vec.phi
  %17 = add <4 x i32> %15, %vec.phi17
  %index.next = add nuw i64 %index, 8
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %17, %16
  %19 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %while.cond.i.preheader, label %for.body.preheader21

for.body.preheader21:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %ret.016.ph = phi i32 [ 0, %for.body.preheader ], [ %19, %middle.block ]
  br label %for.body

while.cond.i.preheader:                           ; preds = %for.body, %middle.block, %entry
  %ret.0.lcssa = phi i32 [ 0, %entry ], [ %19, %middle.block ], [ %add, %for.body ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.preheader, %while.cond.i
  %q.0.i = phi i32 [ %shl.i, %while.cond.i ], [ 1, %while.cond.i.preheader ]
  %cmp.not.i = icmp sgt i32 %q.0.i, %ret.0.lcssa
  %shl.i = shl i32 %q.0.i, 2
  br i1 %cmp.not.i, label %while.cond1.preheader.i, label %while.cond.i, !llvm.loop !3

while.cond1.preheader.i:                          ; preds = %while.cond.i
  %cmp223.i = icmp sgt i32 %q.0.i, 1
  br i1 %cmp223.i, label %while.body3.i, label %eml_isqrt.exit

while.body3.i:                                    ; preds = %while.cond1.preheader.i, %while.body3.i
  %x.addr.026.i = phi i32 [ %spec.select21.i, %while.body3.i ], [ %ret.0.lcssa, %while.cond1.preheader.i ]
  %r.025.i = phi i32 [ %spec.select.i, %while.body3.i ], [ 0, %while.cond1.preheader.i ]
  %q.124.i = phi i32 [ %shr22.i, %while.body3.i ], [ %q.0.i, %while.cond1.preheader.i ]
  %shr22.i = lshr i32 %q.124.i, 2
  %20 = add i32 %r.025.i, %shr22.i
  %sub4.i = sub i32 %x.addr.026.i, %20
  %shr5.i = ashr i32 %r.025.i, 1
  %cmp6.i = icmp sgt i32 %sub4.i, -1
  %add.i = select i1 %cmp6.i, i32 %shr22.i, i32 0
  %spec.select.i = add nsw i32 %add.i, %shr5.i
  %spec.select21.i = select i1 %cmp6.i, i32 %sub4.i, i32 %x.addr.026.i
  %cmp2.i = icmp ugt i32 %q.124.i, 7
  br i1 %cmp2.i, label %while.body3.i, label %eml_isqrt.exit, !llvm.loop !5

eml_isqrt.exit:                                   ; preds = %while.body3.i, %while.cond1.preheader.i
  %r.0.lcssa.i = phi i32 [ 0, %while.cond1.preheader.i ], [ %spec.select.i, %while.body3.i ]
  ret i32 %r.0.lcssa.i

for.body:                                         ; preds = %for.body.preheader21, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader21 ]
  %ret.016 = phi i32 [ %add, %for.body ], [ %ret.016.ph, %for.body.preheader21 ]
  %arrayidx = getelementptr inbounds i16, i16* %a, i64 %indvars.iv
  %21 = load i16, i16* %arrayidx, align 2, !tbaa !6
  %conv = sext i16 %21 to i32
  %arrayidx2 = getelementptr inbounds i16, i16* %b, i64 %indvars.iv
  %22 = load i16, i16* %arrayidx2, align 2, !tbaa !6
  %conv3 = sext i16 %22 to i32
  %sub = sub nsw i32 %conv, %conv3
  %mul = mul nsw i32 %sub, %sub
  %add = add i32 %mul, %ret.016
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %while.cond.i.preheader, label %for.body, !llvm.loop !12
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @eml_neighbors_sort_distances(%struct._EmlNeighborsDistanceItem* nocapture %distances, i64 %length) local_unnamed_addr #3 {
entry:
  %q_st = alloca [48 x %struct.anon], align 16
  %cmp = icmp ugt i64 %length, 1
  br i1 %cmp, label %do.body1, label %do.end179

do.body1:                                         ; preds = %entry
  %sub = add i64 %length, -1
  %0 = bitcast [48 x %struct.anon]* %q_st to i8*
  call void @llvm.lifetime.start.p0i8(i64 768, i8* nonnull %0) #16
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %do.body1
  %q_r.0.ph = phi i64 [ %sub, %do.body1 ], [ %q_r.0.ph.be, %while.cond.outer.backedge ]
  %q_sp.0.ph = phi i64 [ 0, %do.body1 ], [ %q_sp.0.ph.be, %while.cond.outer.backedge ]
  %q_l.0.ph = phi i64 [ 0, %do.body1 ], [ %q_l.0.ph.be, %while.cond.outer.backedge ]
  %distance45 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %q_r.0.ph, i32 1
  %arrayidx44 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %q_r.0.ph
  %1 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx44 to i64*
  %arrayidx14 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %q_r.0.ph
  %distance15 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %q_r.0.ph, i32 1
  %2 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx14 to i64*
  %3 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx14 to i64*
  br label %while.cond.outer345

while.cond.outer345:                              ; preds = %while.cond.outer, %if.else115
  %q_sp.0.ph346 = phi i64 [ %q_sp.0.ph, %while.cond.outer ], [ %inc120, %if.else115 ]
  %q_l.0.ph347 = phi i64 [ %q_l.0.ph, %while.cond.outer ], [ %q_j.1, %if.else115 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer345, %do.body125
  %q_l.0 = phi i64 [ %q_j.1, %do.body125 ], [ %q_l.0.ph347, %while.cond.outer345 ]
  %sub2 = sub i64 %q_r.0.ph, %q_l.0
  %add = add i64 %sub2, 1
  %cmp3 = icmp ugt i64 %add, 15
  br i1 %cmp3, label %if.then4, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond
  %q_i140.0339 = add i64 %q_l.0, 1
  %cmp143.not340 = icmp ugt i64 %q_i140.0339, %q_r.0.ph
  br i1 %cmp143.not340, label %for.end162, label %for.cond144.preheader

if.then4:                                         ; preds = %while.cond
  %shr = lshr i64 %sub2, 1
  %add7 = add i64 %shr, %q_l.0
  %arrayidx = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %add7
  %distance = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %add7, i32 1
  %4 = load i32, i32* %distance, align 4, !tbaa !14
  %add9 = add i64 %q_l.0, 1
  %arrayidx10 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %add9
  %distance11 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %add9, i32 1
  %5 = load i32, i32* %distance11, align 4, !tbaa !14
  %cmp12 = icmp ult i32 %4, %5
  br i1 %cmp12, label %if.then13, label %if.else43

if.then13:                                        ; preds = %if.then4
  %6 = load i32, i32* %distance15, align 4, !tbaa !14
  %cmp18 = icmp ult i32 %6, %4
  %7 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx10 to i64*
  %8 = load i64, i64* %7, align 4
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then13
  %9 = load i64, i64* %3, align 4
  store i64 %9, i64* %7, align 4
  store i64 %8, i64* %3, align 4
  br label %do.end

if.else:                                          ; preds = %if.then13
  %10 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx to i64*
  %11 = load i64, i64* %10, align 4
  store i64 %11, i64* %7, align 4
  store i64 %8, i64* %10, align 4
  %12 = load i32, i32* %distance15, align 4, !tbaa !14
  %13 = load i32, i32* %distance, align 4, !tbaa !14
  %cmp36 = icmp ult i32 %12, %13
  br i1 %cmp36, label %if.then37, label %do.end

if.then37:                                        ; preds = %if.else
  %14 = load i64, i64* %2, align 4
  store i64 %14, i64* %10, align 4
  store i64 %8, i64* %2, align 4
  br label %do.end

if.else43:                                        ; preds = %if.then4
  %15 = load i32, i32* %distance45, align 4, !tbaa !14
  %cmp48 = icmp ult i32 %15, %4
  br i1 %cmp48, label %if.then49, label %do.end

if.then49:                                        ; preds = %if.else43
  %16 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx to i64*
  %17 = load i64, i64* %16, align 4
  %18 = load i64, i64* %1, align 4
  store i64 %18, i64* %16, align 4
  store i64 %17, i64* %1, align 4
  %19 = load i32, i32* %distance, align 4, !tbaa !14
  %20 = load i32, i32* %distance11, align 4, !tbaa !14
  %cmp59 = icmp ult i32 %19, %20
  br i1 %cmp59, label %if.then60, label %do.end

if.then60:                                        ; preds = %if.then49
  %21 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx10 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = load i64, i64* %16, align 4
  store i64 %23, i64* %21, align 4
  store i64 %22, i64* %16, align 4
  br label %do.end

do.end:                                           ; preds = %if.else43, %if.then60, %if.then49, %if.then19, %if.then37, %if.else
  %arrayidx70 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %q_l.0
  %24 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx70 to i64*
  %25 = load i64, i64* %24, align 4
  %26 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx to i64*
  %27 = load i64, i64* %26, align 4
  store i64 %27, i64* %24, align 4
  store i64 %25, i64* %26, align 4
  %distance82 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %q_l.0, i32 1
  br label %while.cond75

while.cond75:                                     ; preds = %if.end95, %do.end
  %q_i.0 = phi i64 [ %add9, %do.end ], [ %inc, %if.end95 ]
  %q_j.0 = phi i64 [ %q_r.0.ph, %do.end ], [ %dec, %if.end95 ]
  %28 = load i32, i32* %distance82, align 4, !tbaa !14
  br label %do.body77

do.body77:                                        ; preds = %do.body77, %while.cond75
  %q_i.1 = phi i64 [ %q_i.0, %while.cond75 ], [ %inc, %do.body77 ]
  %inc = add i64 %q_i.1, 1
  %distance80 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %inc, i32 1
  %29 = load i32, i32* %distance80, align 4, !tbaa !14
  %cmp83 = icmp ult i32 %29, %28
  br i1 %cmp83, label %do.body77, label %do.body85, !llvm.loop !17

do.body85:                                        ; preds = %do.body77, %do.body85
  %q_j.1 = phi i64 [ %dec, %do.body85 ], [ %q_j.0, %do.body77 ]
  %dec = add i64 %q_j.1, -1
  %distance90 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %dec, i32 1
  %30 = load i32, i32* %distance90, align 4, !tbaa !14
  %cmp91 = icmp ult i32 %28, %30
  br i1 %cmp91, label %do.body85, label %do.end92, !llvm.loop !18

do.end92:                                         ; preds = %do.body85
  %arrayidx89.le = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %dec
  %cmp93.not = icmp ult i64 %inc, %dec
  br i1 %cmp93.not, label %if.end95, label %while.end

if.end95:                                         ; preds = %do.end92
  %arrayidx79.le = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %inc
  %31 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx79.le to i64*
  %32 = load i64, i64* %31, align 4
  %33 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx89.le to i64*
  %34 = load i64, i64* %33, align 4
  store i64 %34, i64* %31, align 4
  store i64 %32, i64* %33, align 4
  br label %while.cond75

while.end:                                        ; preds = %do.end92
  %35 = load i64, i64* %24, align 4
  %36 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx89.le to i64*
  %37 = load i64, i64* %36, align 4
  store i64 %37, i64* %24, align 4
  store i64 %35, i64* %36, align 4
  %dec105 = add i64 %q_j.1, -2
  %sub108 = sub i64 %dec105, %q_l.0
  %sub109 = sub i64 %q_r.0.ph, %q_j.1
  %cmp110.not = icmp ult i64 %sub108, %sub109
  br i1 %cmp110.not, label %do.body125, label %do.body112

do.body112:                                       ; preds = %while.end
  %cmp113 = icmp eq i64 %q_r.0.ph, %q_j.1
  br i1 %cmp113, label %while.cond.outer.backedge, label %if.else115

if.else115:                                       ; preds = %do.body112
  %q_l117 = getelementptr inbounds [48 x %struct.anon], [48 x %struct.anon]* %q_st, i64 0, i64 %q_sp.0.ph346, i32 0
  store i64 %q_l.0, i64* %q_l117, align 16, !tbaa !19
  %q_r119 = getelementptr inbounds [48 x %struct.anon], [48 x %struct.anon]* %q_st, i64 0, i64 %q_sp.0.ph346, i32 1
  store i64 %dec105, i64* %q_r119, align 8, !tbaa !22
  %inc120 = add i64 %q_sp.0.ph346, 1
  br label %while.cond.outer345

do.body125:                                       ; preds = %while.end
  %cmp126 = icmp eq i64 %dec105, %q_l.0
  br i1 %cmp126, label %while.cond, label %if.else128

if.else128:                                       ; preds = %do.body125
  %q_l130 = getelementptr inbounds [48 x %struct.anon], [48 x %struct.anon]* %q_st, i64 0, i64 %q_sp.0.ph346, i32 0
  store i64 %q_j.1, i64* %q_l130, align 16, !tbaa !19
  %q_r132 = getelementptr inbounds [48 x %struct.anon], [48 x %struct.anon]* %q_st, i64 0, i64 %q_sp.0.ph346, i32 1
  store i64 %q_r.0.ph, i64* %q_r132, align 8, !tbaa !22
  %inc133 = add i64 %q_sp.0.ph346, 1
  br label %while.cond.outer.backedge

for.cond144.preheader:                            ; preds = %for.cond.preheader, %for.inc160
  %q_i140.0341 = phi i64 [ %q_i140.0, %for.inc160 ], [ %q_i140.0339, %for.cond.preheader ]
  %cmp145337 = icmp ugt i64 %q_i140.0341, %q_l.0
  br i1 %cmp145337, label %land.rhs, label %for.inc160

land.rhs:                                         ; preds = %for.cond144.preheader, %for.body152
  %q_j141.0338 = phi i64 [ %sub148, %for.body152 ], [ %q_i140.0341, %for.cond144.preheader ]
  %distance147 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %q_j141.0338, i32 1
  %38 = load i32, i32* %distance147, align 4, !tbaa !14
  %sub148 = add i64 %q_j141.0338, -1
  %distance150 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %sub148, i32 1
  %39 = load i32, i32* %distance150, align 4, !tbaa !14
  %cmp151 = icmp ult i32 %38, %39
  br i1 %cmp151, label %for.body152, label %for.inc160

for.body152:                                      ; preds = %land.rhs
  %arrayidx149 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %sub148
  %40 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx149 to <2 x i64>*
  %41 = load <2 x i64>, <2 x i64>* %40, align 4
  %shuffle = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %42 = bitcast %struct._EmlNeighborsDistanceItem* %arrayidx149 to <2 x i64>*
  store <2 x i64> %shuffle, <2 x i64>* %42, align 4
  %cmp145 = icmp ugt i64 %sub148, %q_l.0
  br i1 %cmp145, label %land.rhs, label %for.inc160, !llvm.loop !23

for.inc160:                                       ; preds = %for.body152, %land.rhs, %for.cond144.preheader
  %q_i140.0 = add i64 %q_i140.0341, 1
  %cmp143.not = icmp ugt i64 %q_i140.0, %q_r.0.ph
  br i1 %cmp143.not, label %for.end162, label %for.cond144.preheader, !llvm.loop !24

for.end162:                                       ; preds = %for.inc160, %for.cond.preheader
  %cmp165 = icmp eq i64 %q_sp.0.ph346, 0
  br i1 %cmp165, label %while.end174, label %if.end167

if.end167:                                        ; preds = %for.end162
  %dec168 = add i64 %q_sp.0.ph346, -1
  %q_l170 = getelementptr inbounds [48 x %struct.anon], [48 x %struct.anon]* %q_st, i64 0, i64 %dec168, i32 0
  %43 = load i64, i64* %q_l170, align 16, !tbaa !19
  %q_r172 = getelementptr inbounds [48 x %struct.anon], [48 x %struct.anon]* %q_st, i64 0, i64 %dec168, i32 1
  %44 = load i64, i64* %q_r172, align 8, !tbaa !22
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %do.body112, %if.end167, %if.else128
  %q_r.0.ph.be = phi i64 [ %dec105, %if.else128 ], [ %44, %if.end167 ], [ %dec105, %do.body112 ]
  %q_sp.0.ph.be = phi i64 [ %inc133, %if.else128 ], [ %dec168, %if.end167 ], [ %q_sp.0.ph346, %do.body112 ]
  %q_l.0.ph.be = phi i64 [ %q_l.0, %if.else128 ], [ %43, %if.end167 ], [ %q_l.0, %do.body112 ]
  br label %while.cond.outer

while.end174:                                     ; preds = %for.end162
  call void @llvm.lifetime.end.p0i8(i64 768, i8* nonnull %0) #16
  br label %do.end179

do.end179:                                        ; preds = %while.end174, %entry
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @eml_neighbors_check(%struct._EmlNeighborsModel* nocapture readonly %self, i16 signext %data_length, i16 signext %labels_length, i16 signext %distances_length) local_unnamed_addr #5 {
entry:
  %max_items = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 2
  %0 = load i16, i16* %max_items, align 4, !tbaa !25
  %conv = sext i16 %0 to i32
  %n_features = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 0
  %1 = load i16, i16* %n_features, align 8, !tbaa !28
  %conv1 = zext i16 %1 to i32
  %mul = mul nsw i32 %conv1, %conv
  %conv2 = sext i16 %data_length to i32
  %cmp = icmp sgt i32 %mul, %conv2
  %cmp7 = icmp sgt i16 %0, %labels_length
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  %cmp14 = icmp sgt i16 %0, %distances_length
  %narrow = select i1 %or.cond, i1 true, i1 %cmp14
  %retval.0 = zext i1 %narrow to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local i32 @eml_neighbors_add_item(%struct._EmlNeighborsModel* nocapture %self, i16* nocapture readonly %values, i16 signext %values_length, i16 signext %label) local_unnamed_addr #6 {
entry:
  %conv = sext i16 %values_length to i32
  %n_features = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 0
  %0 = load i16, i16* %n_features, align 8, !tbaa !28
  %conv1 = zext i16 %0 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %do.body3, label %return

do.body3:                                         ; preds = %entry
  %n_items = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 1
  %1 = load i16, i16* %n_items, align 2, !tbaa !29
  %max_items = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 2
  %2 = load i16, i16* %max_items, align 4, !tbaa !25
  %cmp6 = icmp slt i16 %1, %2
  br i1 %cmp6, label %do.end10, label %return

do.end10:                                         ; preds = %do.body3
  %conv4 = sext i16 %1 to i64
  %inc = add nsw i16 %1, 1
  store i16 %inc, i16* %n_items, align 2, !tbaa !29
  %data13 = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 3
  %3 = load i16*, i16** %data13, align 8, !tbaa !30
  %conv15 = zext i16 %0 to i64
  %mul = mul nsw i64 %conv4, %conv15
  %add.ptr = getelementptr inbounds i16, i16* %3, i64 %mul
  %4 = bitcast i16* %add.ptr to i8*
  %5 = bitcast i16* %values to i8*
  %conv16 = sext i16 %values_length to i64
  %mul17 = shl nsw i64 %conv16, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %4, i8* align 2 %5, i64 %mul17, i1 false)
  %labels = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 4
  %6 = load i16*, i16** %labels, align 8, !tbaa !31
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %conv4
  store i16 %label, i16* %arrayidx, align 2, !tbaa !6
  br label %return

return:                                           ; preds = %do.body3, %entry, %do.end10
  %retval.0 = phi i32 [ 0, %do.end10 ], [ 1, %entry ], [ 1, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i32 @eml_neighbors_infer(%struct._EmlNeighborsModel* nocapture readonly %self, i16* nocapture readonly %features, i32 %features_length, %struct._EmlNeighborsDistanceItem* nocapture %distances, i32 %distances_length) local_unnamed_addr #7 {
entry:
  %n_items = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 1
  %0 = load i16, i16* %n_items, align 2, !tbaa !29
  %conv = sext i16 %0 to i32
  %cmp.not = icmp sgt i32 %conv, %distances_length
  br i1 %cmp.not, label %return, label %do.body2

do.body2:                                         ; preds = %entry
  %n_features = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 0
  %1 = load i16, i16* %n_features, align 8, !tbaa !28
  %conv3 = zext i16 %1 to i32
  %cmp4 = icmp eq i32 %conv3, %features_length
  br i1 %cmp4, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %do.body2
  %wide.trip.count.i = zext i32 %features_length to i64
  %cmp1133 = icmp sgt i16 %0, 0
  br i1 %cmp1133, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp14.i = icmp sgt i32 %features_length, 0
  %data = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 3
  %2 = load i16*, i16** %data, align 8, !tbaa !30
  %wide.trip.count39 = zext i32 %conv to i64
  br i1 %cmp14.i, label %for.body.us.preheader, label %eml_distance_euclidean_int16.exit.preheader

eml_distance_euclidean_int16.exit.preheader:      ; preds = %for.body.lr.ph
  %3 = add nsw i64 %wide.trip.count39, -1
  %xtraiter = and i64 %wide.trip.count39, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %return.loopexit50.unr-lcssa, label %eml_distance_euclidean_int16.exit.preheader.new

eml_distance_euclidean_int16.exit.preheader.new:  ; preds = %eml_distance_euclidean_int16.exit.preheader
  %unroll_iter = and i64 %wide.trip.count39, 4294967292
  br label %eml_distance_euclidean_int16.exit

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %min.iters.check = icmp ult i32 %features_length, 8
  %n.vec = and i64 %wide.trip.count.i, 4294967288
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %eml_distance_euclidean_int16.exit.us
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %eml_distance_euclidean_int16.exit.us ], [ 0, %for.body.us.preheader ]
  %i.034.us = phi i32 [ %inc.us, %eml_distance_euclidean_int16.exit.us ], [ 0, %for.body.us.preheader ]
  %5 = mul nuw nsw i64 %indvars.iv36, %wide.trip.count.i
  br i1 %min.iters.check, label %for.body.i.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.body.us, %vector.body
  %index43 = phi i64 [ %index.next, %vector.body ], [ 0, %for.body.us ]
  %vec.phi = phi <4 x i32> [ %23, %vector.body ], [ zeroinitializer, %for.body.us ]
  %vec.phi44 = phi <4 x i32> [ %24, %vector.body ], [ zeroinitializer, %for.body.us ]
  %6 = getelementptr inbounds i16, i16* %features, i64 %index43
  %7 = bitcast i16* %6 to <4 x i16>*
  %wide.load = load <4 x i16>, <4 x i16>* %7, align 2, !tbaa !6
  %8 = getelementptr inbounds i16, i16* %6, i64 4
  %9 = bitcast i16* %8 to <4 x i16>*
  %wide.load45 = load <4 x i16>, <4 x i16>* %9, align 2, !tbaa !6
  %10 = sext <4 x i16> %wide.load to <4 x i32>
  %11 = sext <4 x i16> %wide.load45 to <4 x i32>
  %12 = add nuw nsw i64 %index43, %5
  %13 = getelementptr inbounds i16, i16* %2, i64 %12
  %14 = bitcast i16* %13 to <4 x i16>*
  %wide.load46 = load <4 x i16>, <4 x i16>* %14, align 2, !tbaa !6
  %15 = getelementptr inbounds i16, i16* %13, i64 4
  %16 = bitcast i16* %15 to <4 x i16>*
  %wide.load47 = load <4 x i16>, <4 x i16>* %16, align 2, !tbaa !6
  %17 = sext <4 x i16> %wide.load46 to <4 x i32>
  %18 = sext <4 x i16> %wide.load47 to <4 x i32>
  %19 = sub nsw <4 x i32> %10, %17
  %20 = sub nsw <4 x i32> %11, %18
  %21 = mul nsw <4 x i32> %19, %19
  %22 = mul nsw <4 x i32> %20, %20
  %23 = add <4 x i32> %21, %vec.phi
  %24 = add <4 x i32> %22, %vec.phi44
  %index.next = add nuw i64 %index43, 8
  %25 = icmp eq i64 %index.next, %n.vec
  br i1 %25, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %24, %23
  %26 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br i1 %cmp.n, label %while.cond.i.preheader.i.loopexit.us, label %for.body.i.us.preheader

for.body.i.us.preheader:                          ; preds = %for.body.us, %middle.block
  %indvars.iv.i.us.ph = phi i64 [ 0, %for.body.us ], [ %n.vec, %middle.block ]
  %ret.016.i.us.ph = phi i32 [ 0, %for.body.us ], [ %26, %middle.block ]
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us.preheader, %for.body.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ %indvars.iv.i.us.ph, %for.body.i.us.preheader ]
  %ret.016.i.us = phi i32 [ %add.i.us, %for.body.i.us ], [ %ret.016.i.us.ph, %for.body.i.us.preheader ]
  %arrayidx.i.us = getelementptr inbounds i16, i16* %features, i64 %indvars.iv.i.us
  %27 = load i16, i16* %arrayidx.i.us, align 2, !tbaa !6
  %conv.i.us = sext i16 %27 to i32
  %arrayidx2.i.idx.us = add nuw nsw i64 %indvars.iv.i.us, %5
  %arrayidx2.i.us = getelementptr inbounds i16, i16* %2, i64 %arrayidx2.i.idx.us
  %28 = load i16, i16* %arrayidx2.i.us, align 2, !tbaa !6
  %conv3.i.us = sext i16 %28 to i32
  %sub.i.us = sub nsw i32 %conv.i.us, %conv3.i.us
  %mul.i.us = mul nsw i32 %sub.i.us, %sub.i.us
  %add.i.us = add i32 %mul.i.us, %ret.016.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %while.cond.i.preheader.i.loopexit.us, label %for.body.i.us, !llvm.loop !33

while.cond.i.i.us:                                ; preds = %while.cond.i.i.us, %while.cond.i.preheader.i.loopexit.us
  %q.0.i.i.us = phi i32 [ %shl.i.i.us, %while.cond.i.i.us ], [ 1, %while.cond.i.preheader.i.loopexit.us ]
  %cmp.not.i.i.us = icmp sgt i32 %q.0.i.i.us, %add.i.us.lcssa
  %shl.i.i.us = shl i32 %q.0.i.i.us, 2
  br i1 %cmp.not.i.i.us, label %while.cond1.preheader.i.i.us, label %while.cond.i.i.us, !llvm.loop !3

while.cond1.preheader.i.i.us:                     ; preds = %while.cond.i.i.us
  %cmp223.i.i.us = icmp sgt i32 %q.0.i.i.us, 1
  br i1 %cmp223.i.i.us, label %while.body3.i.i.us, label %eml_distance_euclidean_int16.exit.us

while.body3.i.i.us:                               ; preds = %while.cond1.preheader.i.i.us, %while.body3.i.i.us
  %x.addr.026.i.i.us = phi i32 [ %spec.select21.i.i.us, %while.body3.i.i.us ], [ %add.i.us.lcssa, %while.cond1.preheader.i.i.us ]
  %r.025.i.i.us = phi i32 [ %spec.select.i.i.us, %while.body3.i.i.us ], [ 0, %while.cond1.preheader.i.i.us ]
  %q.124.i.i.us = phi i32 [ %shr22.i.i.us, %while.body3.i.i.us ], [ %q.0.i.i.us, %while.cond1.preheader.i.i.us ]
  %shr22.i.i.us = lshr i32 %q.124.i.i.us, 2
  %29 = add i32 %r.025.i.i.us, %shr22.i.i.us
  %sub4.i.i.us = sub i32 %x.addr.026.i.i.us, %29
  %shr5.i.i.us = ashr i32 %r.025.i.i.us, 1
  %cmp6.i.i.us = icmp sgt i32 %sub4.i.i.us, -1
  %add.i.i.us = select i1 %cmp6.i.i.us, i32 %shr22.i.i.us, i32 0
  %spec.select.i.i.us = add nsw i32 %add.i.i.us, %shr5.i.i.us
  %spec.select21.i.i.us = select i1 %cmp6.i.i.us, i32 %sub4.i.i.us, i32 %x.addr.026.i.i.us
  %cmp2.i.i.us = icmp ugt i32 %q.124.i.i.us, 7
  br i1 %cmp2.i.i.us, label %while.body3.i.i.us, label %eml_distance_euclidean_int16.exit.us, !llvm.loop !5

eml_distance_euclidean_int16.exit.us:             ; preds = %while.body3.i.i.us, %while.cond1.preheader.i.i.us
  %r.0.lcssa.i.i.us = phi i32 [ 0, %while.cond1.preheader.i.i.us ], [ %spec.select.i.i.us, %while.body3.i.i.us ]
  %conv15.us = trunc i32 %i.034.us to i16
  %index.us = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv36, i32 0
  store i16 %conv15.us, i16* %index.us, align 4, !tbaa !34
  %distance18.us = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv36, i32 1
  store i32 %r.0.lcssa.i.i.us, i32* %distance18.us, align 4, !tbaa !14
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %inc.us = add nuw nsw i32 %i.034.us, 1
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %return, label %for.body.us, !llvm.loop !35

while.cond.i.preheader.i.loopexit.us:             ; preds = %for.body.i.us, %middle.block
  %add.i.us.lcssa = phi i32 [ %26, %middle.block ], [ %add.i.us, %for.body.i.us ]
  br label %while.cond.i.i.us

eml_distance_euclidean_int16.exit:                ; preds = %eml_distance_euclidean_int16.exit, %eml_distance_euclidean_int16.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %eml_distance_euclidean_int16.exit.preheader.new ], [ %indvars.iv.next.3, %eml_distance_euclidean_int16.exit ]
  %i.034 = phi i32 [ 0, %eml_distance_euclidean_int16.exit.preheader.new ], [ %inc.3, %eml_distance_euclidean_int16.exit ]
  %niter = phi i64 [ %unroll_iter, %eml_distance_euclidean_int16.exit.preheader.new ], [ %niter.nsub.3, %eml_distance_euclidean_int16.exit ]
  %conv15 = trunc i32 %i.034 to i16
  %index = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv, i32 0
  store i16 %conv15, i16* %index, align 4, !tbaa !34
  %distance18 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv, i32 1
  store i32 0, i32* %distance18, align 4, !tbaa !14
  %indvars.iv.next = or i64 %indvars.iv, 1
  %30 = trunc i32 %i.034 to i16
  %conv15.1 = or i16 %30, 1
  %index.1 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.next, i32 0
  store i16 %conv15.1, i16* %index.1, align 4, !tbaa !34
  %distance18.1 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.next, i32 1
  store i32 0, i32* %distance18.1, align 4, !tbaa !14
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %31 = trunc i32 %i.034 to i16
  %conv15.2 = or i16 %31, 2
  %index.2 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.next.1, i32 0
  store i16 %conv15.2, i16* %index.2, align 4, !tbaa !34
  %distance18.2 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.next.1, i32 1
  store i32 0, i32* %distance18.2, align 4, !tbaa !14
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %32 = trunc i32 %i.034 to i16
  %conv15.3 = or i16 %32, 3
  %index.3 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.next.2, i32 0
  store i16 %conv15.3, i16* %index.3, align 4, !tbaa !34
  %distance18.3 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.next.2, i32 1
  store i32 0, i32* %distance18.3, align 4, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %inc.3 = add nuw nsw i32 %i.034, 4
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %return.loopexit50.unr-lcssa, label %eml_distance_euclidean_int16.exit, !llvm.loop !35

return.loopexit50.unr-lcssa:                      ; preds = %eml_distance_euclidean_int16.exit, %eml_distance_euclidean_int16.exit.preheader
  %indvars.iv.unr = phi i64 [ 0, %eml_distance_euclidean_int16.exit.preheader ], [ %indvars.iv.next.3, %eml_distance_euclidean_int16.exit ]
  %i.034.unr = phi i32 [ 0, %eml_distance_euclidean_int16.exit.preheader ], [ %inc.3, %eml_distance_euclidean_int16.exit ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %return, label %eml_distance_euclidean_int16.exit.epil

eml_distance_euclidean_int16.exit.epil:           ; preds = %return.loopexit50.unr-lcssa, %eml_distance_euclidean_int16.exit.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %eml_distance_euclidean_int16.exit.epil ], [ %indvars.iv.unr, %return.loopexit50.unr-lcssa ]
  %i.034.epil = phi i32 [ %inc.epil, %eml_distance_euclidean_int16.exit.epil ], [ %i.034.unr, %return.loopexit50.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %eml_distance_euclidean_int16.exit.epil ], [ %xtraiter, %return.loopexit50.unr-lcssa ]
  %conv15.epil = trunc i32 %i.034.epil to i16
  %index.epil = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.epil, i32 0
  store i16 %conv15.epil, i16* %index.epil, align 4, !tbaa !34
  %distance18.epil = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.epil, i32 1
  store i32 0, i32* %distance18.epil, align 4, !tbaa !14
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %inc.epil = add nuw nsw i32 %i.034.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %return, label %eml_distance_euclidean_int16.exit.epil, !llvm.loop !36

return:                                           ; preds = %return.loopexit50.unr-lcssa, %eml_distance_euclidean_int16.exit.epil, %eml_distance_euclidean_int16.exit.us, %for.cond.preheader, %do.body2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %do.body2 ], [ 0, %for.cond.preheader ], [ 0, %eml_distance_euclidean_int16.exit.us ], [ 0, %eml_distance_euclidean_int16.exit.epil ], [ 0, %return.loopexit50.unr-lcssa ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @eml_neighbors_find_nearest(%struct._EmlNeighborsModel* nocapture readonly %self, %struct._EmlNeighborsDistanceItem* nocapture %distances, i32 %distances_length, i32 %k, i16* nocapture %out) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp sgt i32 %k, %distances_length
  br i1 %cmp.not, label %return, label %do.end

do.end:                                           ; preds = %entry
  %conv = sext i32 %distances_length to i64
  %call = tail call i32 @eml_neighbors_sort_distances(%struct._EmlNeighborsDistanceItem* %distances, i64 %conv)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) bitcast ([10 x i16]* @eml_neighbors_votes to i8*), i8 0, i64 20, i1 false)
  %cmp173 = icmp sgt i32 %k, 0
  br i1 %cmp173, label %for.body.lr.ph, label %for.cond21.preheader

for.body.lr.ph:                                   ; preds = %do.end
  %labels = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 4
  %0 = load i16*, i16** %labels, align 8, !tbaa !31
  %wide.trip.count = zext i32 %k to i64
  br label %for.body

for.cond21.preheader.loopexit:                    ; preds = %if.end12
  %.pre = load i16, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eml_neighbors_votes, i64 0, i64 0), align 16, !tbaa !6
  %.pre81 = load i16, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eml_neighbors_votes, i64 0, i64 1), align 2, !tbaa !6
  %.pre82 = load i16, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eml_neighbors_votes, i64 0, i64 2), align 4, !tbaa !6
  %.pre83 = load i16, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eml_neighbors_votes, i64 0, i64 3), align 2, !tbaa !6
  %.pre84 = load i16, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eml_neighbors_votes, i64 0, i64 4), align 8, !tbaa !6
  %.pre85 = load i16, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eml_neighbors_votes, i64 0, i64 5), align 2, !tbaa !6
  %.pre86 = load i16, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eml_neighbors_votes, i64 0, i64 6), align 4, !tbaa !6
  %.pre87 = load i16, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eml_neighbors_votes, i64 0, i64 7), align 2, !tbaa !6
  %.pre88 = load i16, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eml_neighbors_votes, i64 0, i64 8), align 16, !tbaa !6
  %.pre89 = load i16, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eml_neighbors_votes, i64 0, i64 9), align 2, !tbaa !6
  %phi.cast = sext i16 %.pre to i32
  %phi.cast90 = sext i16 %.pre81 to i32
  %phi.cast91 = sext i16 %.pre82 to i32
  %phi.cast92 = sext i16 %.pre83 to i32
  %phi.cast93 = sext i16 %.pre84 to i32
  %phi.cast94 = sext i16 %.pre85 to i32
  %phi.cast95 = sext i16 %.pre86 to i32
  %phi.cast96 = sext i16 %.pre87 to i32
  %phi.cast97 = sext i16 %.pre88 to i32
  %phi.cast98 = sext i16 %.pre89 to i32
  br label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %for.cond21.preheader.loopexit, %do.end
  %1 = phi i32 [ %phi.cast98, %for.cond21.preheader.loopexit ], [ 0, %do.end ]
  %2 = phi i32 [ %phi.cast97, %for.cond21.preheader.loopexit ], [ 0, %do.end ]
  %3 = phi i32 [ %phi.cast96, %for.cond21.preheader.loopexit ], [ 0, %do.end ]
  %4 = phi i32 [ %phi.cast95, %for.cond21.preheader.loopexit ], [ 0, %do.end ]
  %5 = phi i32 [ %phi.cast94, %for.cond21.preheader.loopexit ], [ 0, %do.end ]
  %6 = phi i32 [ %phi.cast93, %for.cond21.preheader.loopexit ], [ 0, %do.end ]
  %7 = phi i32 [ %phi.cast92, %for.cond21.preheader.loopexit ], [ 0, %do.end ]
  %8 = phi i32 [ %phi.cast91, %for.cond21.preheader.loopexit ], [ 0, %do.end ]
  %9 = phi i32 [ %phi.cast90, %for.cond21.preheader.loopexit ], [ 0, %do.end ]
  %10 = phi i32 [ %phi.cast, %for.cond21.preheader.loopexit ], [ 0, %do.end ]
  %cmp29 = icmp sgt i32 %10, 0
  %not.cmp29 = xor i1 %cmp29, true
  %spec.select71 = select i1 %cmp29, i32 %10, i32 0
  %cmp29.1 = icmp slt i32 %spec.select71, %9
  %spec.select71.1 = select i1 %cmp29.1, i32 %9, i32 %spec.select71
  %cmp29.2 = icmp slt i32 %spec.select71.1, %8
  %spec.select71.2 = select i1 %cmp29.2, i32 %8, i32 %spec.select71.1
  %cmp29.3 = icmp slt i32 %spec.select71.2, %7
  %spec.select71.3 = select i1 %cmp29.3, i32 %7, i32 %spec.select71.2
  %cmp29.4 = icmp slt i32 %spec.select71.3, %6
  %spec.select71.4 = select i1 %cmp29.4, i32 %6, i32 %spec.select71.3
  %cmp29.5 = icmp slt i32 %spec.select71.4, %5
  %spec.select71.5 = select i1 %cmp29.5, i32 %5, i32 %spec.select71.4
  %cmp29.6 = icmp slt i32 %spec.select71.5, %4
  %spec.select71.6 = select i1 %cmp29.6, i32 %4, i32 %spec.select71.5
  %cmp29.7 = icmp slt i32 %spec.select71.6, %3
  %spec.select71.7 = select i1 %cmp29.7, i32 %3, i32 %spec.select71.6
  %cmp29.8 = icmp slt i32 %spec.select71.7, %2
  %spec.select71.8 = select i1 %cmp29.8, i32 %2, i32 %spec.select71.7
  %cmp29.9 = icmp slt i32 %spec.select71.8, %1
  %11 = sext i1 %not.cmp29 to i16
  %12 = select i1 %cmp29.1, i16 1, i16 %11
  %13 = select i1 %cmp29.2, i16 2, i16 %12
  %14 = select i1 %cmp29.3, i16 3, i16 %13
  %15 = select i1 %cmp29.4, i16 4, i16 %14
  %16 = select i1 %cmp29.5, i16 5, i16 %15
  %17 = select i1 %cmp29.6, i16 6, i16 %16
  %18 = select i1 %cmp29.7, i16 7, i16 %17
  %19 = select i1 %cmp29.8, i16 8, i16 %18
  %conv40 = select i1 %cmp29.9, i16 9, i16 %19
  store i16 %conv40, i16* %out, align 2, !tbaa !6
  br label %return

for.body:                                         ; preds = %for.body.lr.ph, %if.end12
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end12 ]
  %d.sroa.0.0..sroa_idx = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv, i32 0
  %d.sroa.0.0.copyload = load i16, i16* %d.sroa.0.0..sroa_idx, align 4, !tbaa.struct !38
  %idxprom3 = sext i16 %d.sroa.0.0.copyload to i64
  %arrayidx4 = getelementptr inbounds i16, i16* %0, i64 %idxprom3
  %20 = load i16, i16* %arrayidx4, align 2, !tbaa !6
  %21 = icmp ugt i16 %20, 9
  br i1 %21, label %return, label %if.end12

if.end12:                                         ; preds = %for.body
  %idxprom1372 = zext i16 %20 to i64
  %arrayidx14 = getelementptr inbounds [10 x i16], [10 x i16]* @eml_neighbors_votes, i64 0, i64 %idxprom1372
  %22 = load i16, i16* %arrayidx14, align 2, !tbaa !6
  %add = add i16 %22, 1
  store i16 %add, i16* %arrayidx14, align 2, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond21.preheader.loopexit, label %for.body, !llvm.loop !40

return:                                           ; preds = %for.body, %for.cond21.preheader, %entry
  %retval.4 = phi i32 [ 1, %entry ], [ 0, %for.cond21.preheader ], [ 5, %for.body ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @eml_neighbors_predict(%struct._EmlNeighborsModel* nocapture readonly %self, i16* nocapture readonly %features, i32 %features_length, %struct._EmlNeighborsDistanceItem* nocapture %distances, i32 %distances_length, i16* nocapture %out) local_unnamed_addr #3 {
entry:
  %label = alloca i16, align 2
  %n_items.i = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 1
  %0 = load i16, i16* %n_items.i, align 2, !tbaa !29
  %conv.i = sext i16 %0 to i32
  %cmp.not.i = icmp sgt i32 %conv.i, %distances_length
  br i1 %cmp.not.i, label %cleanup8, label %do.body2.i

do.body2.i:                                       ; preds = %entry
  %n_features.i = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 0
  %1 = load i16, i16* %n_features.i, align 8, !tbaa !28
  %conv3.i = zext i16 %1 to i32
  %cmp4.i = icmp eq i32 %conv3.i, %features_length
  br i1 %cmp4.i, label %for.cond.preheader.i, label %cleanup8

for.cond.preheader.i:                             ; preds = %do.body2.i
  %wide.trip.count.i.i = zext i32 %features_length to i64
  %cmp1133.i = icmp sgt i16 %0, 0
  br i1 %cmp1133.i, label %for.body.lr.ph.i, label %if.end

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %cmp14.i.i = icmp sgt i32 %features_length, 0
  %data.i = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 3
  %2 = load i16*, i16** %data.i, align 8, !tbaa !30
  %wide.trip.count39.i = zext i32 %conv.i to i64
  br i1 %cmp14.i.i, label %for.body.us.i.preheader, label %eml_distance_euclidean_int16.exit.i.preheader

eml_distance_euclidean_int16.exit.i.preheader:    ; preds = %for.body.lr.ph.i
  %3 = add nsw i64 %wide.trip.count39.i, -1
  %xtraiter = and i64 %wide.trip.count39.i, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %if.end.loopexit29.unr-lcssa, label %eml_distance_euclidean_int16.exit.i.preheader.new

eml_distance_euclidean_int16.exit.i.preheader.new: ; preds = %eml_distance_euclidean_int16.exit.i.preheader
  %unroll_iter = and i64 %wide.trip.count39.i, 4294967292
  br label %eml_distance_euclidean_int16.exit.i

for.body.us.i.preheader:                          ; preds = %for.body.lr.ph.i
  %min.iters.check = icmp ult i32 %features_length, 8
  %n.vec = and i64 %wide.trip.count.i.i, 4294967288
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %for.body.us.i.preheader, %eml_distance_euclidean_int16.exit.us.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %eml_distance_euclidean_int16.exit.us.i ], [ 0, %for.body.us.i.preheader ]
  %i.034.us.i = phi i32 [ %inc.us.i, %eml_distance_euclidean_int16.exit.us.i ], [ 0, %for.body.us.i.preheader ]
  %5 = mul nuw nsw i64 %indvars.iv36.i, %wide.trip.count.i.i
  br i1 %min.iters.check, label %for.body.i.us.i.preheader, label %vector.body

vector.body:                                      ; preds = %for.body.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body.us.i ]
  %vec.phi = phi <4 x i32> [ %23, %vector.body ], [ zeroinitializer, %for.body.us.i ]
  %vec.phi23 = phi <4 x i32> [ %24, %vector.body ], [ zeroinitializer, %for.body.us.i ]
  %6 = getelementptr inbounds i16, i16* %features, i64 %index
  %7 = bitcast i16* %6 to <4 x i16>*
  %wide.load = load <4 x i16>, <4 x i16>* %7, align 2, !tbaa !6
  %8 = getelementptr inbounds i16, i16* %6, i64 4
  %9 = bitcast i16* %8 to <4 x i16>*
  %wide.load24 = load <4 x i16>, <4 x i16>* %9, align 2, !tbaa !6
  %10 = sext <4 x i16> %wide.load to <4 x i32>
  %11 = sext <4 x i16> %wide.load24 to <4 x i32>
  %12 = add nuw nsw i64 %index, %5
  %13 = getelementptr inbounds i16, i16* %2, i64 %12
  %14 = bitcast i16* %13 to <4 x i16>*
  %wide.load25 = load <4 x i16>, <4 x i16>* %14, align 2, !tbaa !6
  %15 = getelementptr inbounds i16, i16* %13, i64 4
  %16 = bitcast i16* %15 to <4 x i16>*
  %wide.load26 = load <4 x i16>, <4 x i16>* %16, align 2, !tbaa !6
  %17 = sext <4 x i16> %wide.load25 to <4 x i32>
  %18 = sext <4 x i16> %wide.load26 to <4 x i32>
  %19 = sub nsw <4 x i32> %10, %17
  %20 = sub nsw <4 x i32> %11, %18
  %21 = mul nsw <4 x i32> %19, %19
  %22 = mul nsw <4 x i32> %20, %20
  %23 = add <4 x i32> %21, %vec.phi
  %24 = add <4 x i32> %22, %vec.phi23
  %index.next = add nuw i64 %index, 8
  %25 = icmp eq i64 %index.next, %n.vec
  br i1 %25, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %24, %23
  %26 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br i1 %cmp.n, label %while.cond.i.i.us.i.preheader, label %for.body.i.us.i.preheader

for.body.i.us.i.preheader:                        ; preds = %for.body.us.i, %middle.block
  %indvars.iv.i.us.i.ph = phi i64 [ 0, %for.body.us.i ], [ %n.vec, %middle.block ]
  %ret.016.i.us.i.ph = phi i32 [ 0, %for.body.us.i ], [ %26, %middle.block ]
  br label %for.body.i.us.i

for.body.i.us.i:                                  ; preds = %for.body.i.us.i.preheader, %for.body.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %for.body.i.us.i ], [ %indvars.iv.i.us.i.ph, %for.body.i.us.i.preheader ]
  %ret.016.i.us.i = phi i32 [ %add.i.us.i, %for.body.i.us.i ], [ %ret.016.i.us.i.ph, %for.body.i.us.i.preheader ]
  %arrayidx.i.us.i = getelementptr inbounds i16, i16* %features, i64 %indvars.iv.i.us.i
  %27 = load i16, i16* %arrayidx.i.us.i, align 2, !tbaa !6
  %conv.i.us.i = sext i16 %27 to i32
  %arrayidx2.i.idx.us.i = add nuw nsw i64 %indvars.iv.i.us.i, %5
  %arrayidx2.i.us.i = getelementptr inbounds i16, i16* %2, i64 %arrayidx2.i.idx.us.i
  %28 = load i16, i16* %arrayidx2.i.us.i, align 2, !tbaa !6
  %conv3.i.us.i = sext i16 %28 to i32
  %sub.i.us.i = sub nsw i32 %conv.i.us.i, %conv3.i.us.i
  %mul.i.us.i = mul nsw i32 %sub.i.us.i, %sub.i.us.i
  %add.i.us.i = add i32 %mul.i.us.i, %ret.016.i.us.i
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %while.cond.i.i.us.i.preheader, label %for.body.i.us.i, !llvm.loop !42

while.cond.i.i.us.i.preheader:                    ; preds = %for.body.i.us.i, %middle.block
  %add.i.us.i.lcssa = phi i32 [ %26, %middle.block ], [ %add.i.us.i, %for.body.i.us.i ]
  br label %while.cond.i.i.us.i

while.cond.i.i.us.i:                              ; preds = %while.cond.i.i.us.i.preheader, %while.cond.i.i.us.i
  %q.0.i.i.us.i = phi i32 [ %shl.i.i.us.i, %while.cond.i.i.us.i ], [ 1, %while.cond.i.i.us.i.preheader ]
  %cmp.not.i.i.us.i = icmp sgt i32 %q.0.i.i.us.i, %add.i.us.i.lcssa
  %shl.i.i.us.i = shl i32 %q.0.i.i.us.i, 2
  br i1 %cmp.not.i.i.us.i, label %while.cond1.preheader.i.i.us.i, label %while.cond.i.i.us.i, !llvm.loop !3

while.cond1.preheader.i.i.us.i:                   ; preds = %while.cond.i.i.us.i
  %cmp223.i.i.us.i = icmp sgt i32 %q.0.i.i.us.i, 1
  br i1 %cmp223.i.i.us.i, label %while.body3.i.i.us.i, label %eml_distance_euclidean_int16.exit.us.i

while.body3.i.i.us.i:                             ; preds = %while.cond1.preheader.i.i.us.i, %while.body3.i.i.us.i
  %x.addr.026.i.i.us.i = phi i32 [ %spec.select21.i.i.us.i, %while.body3.i.i.us.i ], [ %add.i.us.i.lcssa, %while.cond1.preheader.i.i.us.i ]
  %r.025.i.i.us.i = phi i32 [ %spec.select.i.i.us.i, %while.body3.i.i.us.i ], [ 0, %while.cond1.preheader.i.i.us.i ]
  %q.124.i.i.us.i = phi i32 [ %shr22.i.i.us.i, %while.body3.i.i.us.i ], [ %q.0.i.i.us.i, %while.cond1.preheader.i.i.us.i ]
  %shr22.i.i.us.i = lshr i32 %q.124.i.i.us.i, 2
  %29 = add i32 %r.025.i.i.us.i, %shr22.i.i.us.i
  %sub4.i.i.us.i = sub i32 %x.addr.026.i.i.us.i, %29
  %shr5.i.i.us.i = ashr i32 %r.025.i.i.us.i, 1
  %cmp6.i.i.us.i = icmp sgt i32 %sub4.i.i.us.i, -1
  %add.i.i.us.i = select i1 %cmp6.i.i.us.i, i32 %shr22.i.i.us.i, i32 0
  %spec.select.i.i.us.i = add nsw i32 %add.i.i.us.i, %shr5.i.i.us.i
  %spec.select21.i.i.us.i = select i1 %cmp6.i.i.us.i, i32 %sub4.i.i.us.i, i32 %x.addr.026.i.i.us.i
  %cmp2.i.i.us.i = icmp ugt i32 %q.124.i.i.us.i, 7
  br i1 %cmp2.i.i.us.i, label %while.body3.i.i.us.i, label %eml_distance_euclidean_int16.exit.us.i, !llvm.loop !5

eml_distance_euclidean_int16.exit.us.i:           ; preds = %while.body3.i.i.us.i, %while.cond1.preheader.i.i.us.i
  %r.0.lcssa.i.i.us.i = phi i32 [ 0, %while.cond1.preheader.i.i.us.i ], [ %spec.select.i.i.us.i, %while.body3.i.i.us.i ]
  %conv15.us.i = trunc i32 %i.034.us.i to i16
  %index.us.i = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv36.i, i32 0
  store i16 %conv15.us.i, i16* %index.us.i, align 4, !tbaa !34
  %distance18.us.i = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv36.i, i32 1
  store i32 %r.0.lcssa.i.i.us.i, i32* %distance18.us.i, align 4, !tbaa !14
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %inc.us.i = add nuw nsw i32 %i.034.us.i, 1
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %if.end, label %for.body.us.i, !llvm.loop !35

eml_distance_euclidean_int16.exit.i:              ; preds = %eml_distance_euclidean_int16.exit.i, %eml_distance_euclidean_int16.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %eml_distance_euclidean_int16.exit.i.preheader.new ], [ %indvars.iv.next.i.3, %eml_distance_euclidean_int16.exit.i ]
  %i.034.i = phi i32 [ 0, %eml_distance_euclidean_int16.exit.i.preheader.new ], [ %inc.i.3, %eml_distance_euclidean_int16.exit.i ]
  %niter = phi i64 [ %unroll_iter, %eml_distance_euclidean_int16.exit.i.preheader.new ], [ %niter.nsub.3, %eml_distance_euclidean_int16.exit.i ]
  %conv15.i = trunc i32 %i.034.i to i16
  %index.i = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.i, i32 0
  store i16 %conv15.i, i16* %index.i, align 4, !tbaa !34
  %distance18.i = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.i, i32 1
  store i32 0, i32* %distance18.i, align 4, !tbaa !14
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %30 = trunc i32 %i.034.i to i16
  %conv15.i.1 = or i16 %30, 1
  %index.i.1 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.next.i, i32 0
  store i16 %conv15.i.1, i16* %index.i.1, align 4, !tbaa !34
  %distance18.i.1 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.next.i, i32 1
  store i32 0, i32* %distance18.i.1, align 4, !tbaa !14
  %indvars.iv.next.i.1 = or i64 %indvars.iv.i, 2
  %31 = trunc i32 %i.034.i to i16
  %conv15.i.2 = or i16 %31, 2
  %index.i.2 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.next.i.1, i32 0
  store i16 %conv15.i.2, i16* %index.i.2, align 4, !tbaa !34
  %distance18.i.2 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.next.i.1, i32 1
  store i32 0, i32* %distance18.i.2, align 4, !tbaa !14
  %indvars.iv.next.i.2 = or i64 %indvars.iv.i, 3
  %32 = trunc i32 %i.034.i to i16
  %conv15.i.3 = or i16 %32, 3
  %index.i.3 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.next.i.2, i32 0
  store i16 %conv15.i.3, i16* %index.i.3, align 4, !tbaa !34
  %distance18.i.3 = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.next.i.2, i32 1
  store i32 0, i32* %distance18.i.3, align 4, !tbaa !14
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %inc.i.3 = add nuw nsw i32 %i.034.i, 4
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %if.end.loopexit29.unr-lcssa, label %eml_distance_euclidean_int16.exit.i, !llvm.loop !35

if.end.loopexit29.unr-lcssa:                      ; preds = %eml_distance_euclidean_int16.exit.i, %eml_distance_euclidean_int16.exit.i.preheader
  %indvars.iv.i.unr = phi i64 [ 0, %eml_distance_euclidean_int16.exit.i.preheader ], [ %indvars.iv.next.i.3, %eml_distance_euclidean_int16.exit.i ]
  %i.034.i.unr = phi i32 [ 0, %eml_distance_euclidean_int16.exit.i.preheader ], [ %inc.i.3, %eml_distance_euclidean_int16.exit.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end, label %eml_distance_euclidean_int16.exit.i.epil

eml_distance_euclidean_int16.exit.i.epil:         ; preds = %if.end.loopexit29.unr-lcssa, %eml_distance_euclidean_int16.exit.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %eml_distance_euclidean_int16.exit.i.epil ], [ %indvars.iv.i.unr, %if.end.loopexit29.unr-lcssa ]
  %i.034.i.epil = phi i32 [ %inc.i.epil, %eml_distance_euclidean_int16.exit.i.epil ], [ %i.034.i.unr, %if.end.loopexit29.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %eml_distance_euclidean_int16.exit.i.epil ], [ %xtraiter, %if.end.loopexit29.unr-lcssa ]
  %conv15.i.epil = trunc i32 %i.034.i.epil to i16
  %index.i.epil = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.i.epil, i32 0
  store i16 %conv15.i.epil, i16* %index.i.epil, align 4, !tbaa !34
  %distance18.i.epil = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %distances, i64 %indvars.iv.i.epil, i32 1
  store i32 0, i32* %distance18.i.epil, align 4, !tbaa !14
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %inc.i.epil = add nuw nsw i32 %i.034.i.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %if.end, label %eml_distance_euclidean_int16.exit.i.epil, !llvm.loop !43

if.end:                                           ; preds = %if.end.loopexit29.unr-lcssa, %eml_distance_euclidean_int16.exit.i.epil, %eml_distance_euclidean_int16.exit.us.i, %for.cond.preheader.i
  %33 = bitcast i16* %label to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %33) #16
  store i16 -1, i16* %label, align 2, !tbaa !6
  %k_neighbors = getelementptr inbounds %struct._EmlNeighborsModel, %struct._EmlNeighborsModel* %self, i64 0, i32 5
  %34 = load i16, i16* %k_neighbors, align 8, !tbaa !44
  %conv1 = sext i16 %34 to i32
  %call2 = call i32 @eml_neighbors_find_nearest(%struct._EmlNeighborsModel* %self, %struct._EmlNeighborsDistanceItem* %distances, i32 %conv.i, i32 %conv1, i16* nonnull %label)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %35 = load i16, i16* %label, align 2, !tbaa !6
  store i16 %35, i16* %out, align 2, !tbaa !6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %33) #16
  br label %cleanup8

cleanup8:                                         ; preds = %do.body2.i, %entry, %cleanup
  %retval.1 = phi i32 [ %call2, %cleanup ], [ 1, %entry ], [ 1, %do.body2.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #9 {
entry:
  %label.i = alloca i16, align 2
  %call = tail call noalias align 16 dereferenceable_or_null(800000) i8* @malloc(i64 800000) #16
  %0 = bitcast i8* %call to [4 x i16]*
  %call2 = tail call noalias align 16 dereferenceable_or_null(1200) i8* @malloc(i64 1200) #16
  %1 = bitcast i8* %call2 to %struct._EmlNeighborsDistanceItem*
  %tobool = icmp ne i8* %call, null
  %tobool5 = icmp ne i8* %call2, null
  %or.cond38 = and i1 %tobool, %tobool5
  br i1 %or.cond38, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !45
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %2) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @srand(i32 42) #16
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %if.end, %for.cond7.preheader
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.cond7.preheader ]
  %call11 = tail call i32 @rand() #16
  %rem = srem i32 %call11, 10
  %conv = trunc i32 %rem to i16
  %arrayidx13 = getelementptr inbounds [4 x i16], [4 x i16]* %0, i64 %indvars.iv, i64 0
  store i16 %conv, i16* %arrayidx13, align 8, !tbaa !6
  %call11.1 = tail call i32 @rand() #16
  %rem.1 = srem i32 %call11.1, 10
  %conv.1 = trunc i32 %rem.1 to i16
  %arrayidx13.1 = getelementptr inbounds [4 x i16], [4 x i16]* %0, i64 %indvars.iv, i64 1
  store i16 %conv.1, i16* %arrayidx13.1, align 2, !tbaa !6
  %call11.2 = tail call i32 @rand() #16
  %rem.2 = srem i32 %call11.2, 10
  %conv.2 = trunc i32 %rem.2 to i16
  %arrayidx13.2 = getelementptr inbounds [4 x i16], [4 x i16]* %0, i64 %indvars.iv, i64 2
  store i16 %conv.2, i16* %arrayidx13.2, align 4, !tbaa !6
  %call11.3 = tail call i32 @rand() #16
  %rem.3 = srem i32 %call11.3, 10
  %conv.3 = trunc i32 %rem.3 to i16
  %arrayidx13.3 = getelementptr inbounds [4 x i16], [4 x i16]* %0, i64 %indvars.iv, i64 3
  store i16 %conv.3, i16* %arrayidx13.3, align 2, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.cond7.preheader, !llvm.loop !46

for.cond.cleanup:                                 ; preds = %for.cond7.preheader
  %call17 = tail call i64 @clock() #16
  %4 = bitcast i16* %label.i to i8*
  %.pre71 = load i16, i16* getelementptr inbounds (%struct._EmlNeighborsModel, %struct._EmlNeighborsModel* @iris_knn, i64 0, i32 1), align 2, !tbaa !29
  %.pre73 = load i16, i16* getelementptr inbounds (%struct._EmlNeighborsModel, %struct._EmlNeighborsModel* @iris_knn, i64 0, i32 0), align 8
  br label %for.body23

for.cond.cleanup22:                               ; preds = %eml_neighbors_predict.exit
  %call33 = tail call i64 @clock() #16
  %sub = sub nsw i64 %call33, %call17
  %conv34 = sitofp i64 %sub to double
  %div = fdiv double %conv34, 1.000000e+06
  %call35 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 100000, double %div)
  tail call void @free(i8* %call) #16
  tail call void @free(i8* %call2) #16
  br label %cleanup

for.body23:                                       ; preds = %for.cond.cleanup, %eml_neighbors_predict.exit
  %5 = phi i16 [ %.pre73, %for.cond.cleanup ], [ %15, %eml_neighbors_predict.exit ]
  %6 = phi i16 [ %.pre71, %for.cond.cleanup ], [ %16, %eml_neighbors_predict.exit ]
  %indvars.iv68 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next69, %eml_neighbors_predict.exit ]
  %conv.i.i = sext i16 %6 to i32
  %cmp.not.i.i = icmp slt i16 %6, 151
  %cmp4.i.i = icmp eq i16 %5, 4
  %or.cond = select i1 %cmp.not.i.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond, label %for.cond.preheader.i.i, label %eml_neighbors_predict.exit

for.cond.preheader.i.i:                           ; preds = %for.body23
  %cmp1133.i.i = icmp sgt i16 %6, 0
  br i1 %cmp1133.i.i, label %for.body.lr.ph.i.i, label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %7 = load i16*, i16** getelementptr inbounds (%struct._EmlNeighborsModel, %struct._EmlNeighborsModel* @iris_knn, i64 0, i32 3), align 8, !tbaa !30
  %wide.trip.count39.i.i = zext i32 %conv.i.i to i64
  %arrayidx.i.us.i.i.phi.trans.insert = getelementptr inbounds [4 x i16], [4 x i16]* %0, i64 %indvars.iv68, i64 0
  %.pre74 = load i16, i16* %arrayidx.i.us.i.i.phi.trans.insert, align 8, !tbaa !6
  %arrayidx.i.us.i.i.1.phi.trans.insert = getelementptr inbounds [4 x i16], [4 x i16]* %0, i64 %indvars.iv68, i64 1
  %.pre75 = load i16, i16* %arrayidx.i.us.i.i.1.phi.trans.insert, align 2, !tbaa !6
  %arrayidx.i.us.i.i.2.phi.trans.insert = getelementptr inbounds [4 x i16], [4 x i16]* %0, i64 %indvars.iv68, i64 2
  %.pre76 = load i16, i16* %arrayidx.i.us.i.i.2.phi.trans.insert, align 4, !tbaa !6
  %arrayidx.i.us.i.i.3.phi.trans.insert = getelementptr inbounds [4 x i16], [4 x i16]* %0, i64 %indvars.iv68, i64 3
  %.pre77 = load i16, i16* %arrayidx.i.us.i.i.3.phi.trans.insert, align 2, !tbaa !6
  %conv.i.us.i.i = sext i16 %.pre74 to i32
  %conv.i.us.i.i.1 = sext i16 %.pre75 to i32
  %conv.i.us.i.i.2 = sext i16 %.pre76 to i32
  %conv.i.us.i.i.3 = sext i16 %.pre77 to i32
  br label %for.body.us.i.i

for.body.us.i.i:                                  ; preds = %eml_distance_euclidean_int16.exit.us.i.i, %for.body.lr.ph.i.i
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i, %eml_distance_euclidean_int16.exit.us.i.i ], [ 0, %for.body.lr.ph.i.i ]
  %i.034.us.i.i = phi i32 [ %inc.us.i.i, %eml_distance_euclidean_int16.exit.us.i.i ], [ 0, %for.body.lr.ph.i.i ]
  %8 = shl nuw nsw i64 %indvars.iv36.i.i, 2
  %arrayidx2.i.us.i.i = getelementptr inbounds i16, i16* %7, i64 %8
  %9 = load i16, i16* %arrayidx2.i.us.i.i, align 2, !tbaa !6
  %conv3.i.us.i.i = sext i16 %9 to i32
  %sub.i.us.i.i = sub nsw i32 %conv.i.us.i.i, %conv3.i.us.i.i
  %mul.i.us.i.i = mul nsw i32 %sub.i.us.i.i, %sub.i.us.i.i
  %arrayidx2.i.idx.us.i.i.1 = or i64 %8, 1
  %arrayidx2.i.us.i.i.1 = getelementptr inbounds i16, i16* %7, i64 %arrayidx2.i.idx.us.i.i.1
  %10 = load i16, i16* %arrayidx2.i.us.i.i.1, align 2, !tbaa !6
  %conv3.i.us.i.i.1 = sext i16 %10 to i32
  %sub.i.us.i.i.1 = sub nsw i32 %conv.i.us.i.i.1, %conv3.i.us.i.i.1
  %mul.i.us.i.i.1 = mul nsw i32 %sub.i.us.i.i.1, %sub.i.us.i.i.1
  %add.i.us.i.i.1 = add nuw i32 %mul.i.us.i.i.1, %mul.i.us.i.i
  %arrayidx2.i.idx.us.i.i.2 = or i64 %8, 2
  %arrayidx2.i.us.i.i.2 = getelementptr inbounds i16, i16* %7, i64 %arrayidx2.i.idx.us.i.i.2
  %11 = load i16, i16* %arrayidx2.i.us.i.i.2, align 2, !tbaa !6
  %conv3.i.us.i.i.2 = sext i16 %11 to i32
  %sub.i.us.i.i.2 = sub nsw i32 %conv.i.us.i.i.2, %conv3.i.us.i.i.2
  %mul.i.us.i.i.2 = mul nsw i32 %sub.i.us.i.i.2, %sub.i.us.i.i.2
  %add.i.us.i.i.2 = add i32 %mul.i.us.i.i.2, %add.i.us.i.i.1
  %arrayidx2.i.idx.us.i.i.3 = or i64 %8, 3
  %arrayidx2.i.us.i.i.3 = getelementptr inbounds i16, i16* %7, i64 %arrayidx2.i.idx.us.i.i.3
  %12 = load i16, i16* %arrayidx2.i.us.i.i.3, align 2, !tbaa !6
  %conv3.i.us.i.i.3 = sext i16 %12 to i32
  %sub.i.us.i.i.3 = sub nsw i32 %conv.i.us.i.i.3, %conv3.i.us.i.i.3
  %mul.i.us.i.i.3 = mul nsw i32 %sub.i.us.i.i.3, %sub.i.us.i.i.3
  %add.i.us.i.i.3 = add i32 %mul.i.us.i.i.3, %add.i.us.i.i.2
  br label %while.cond.i.i.us.i.i

while.cond.i.i.us.i.i:                            ; preds = %for.body.us.i.i, %while.cond.i.i.us.i.i
  %q.0.i.i.us.i.i = phi i32 [ %shl.i.i.us.i.i, %while.cond.i.i.us.i.i ], [ 1, %for.body.us.i.i ]
  %cmp.not.i.i.us.i.i = icmp sgt i32 %q.0.i.i.us.i.i, %add.i.us.i.i.3
  %shl.i.i.us.i.i = shl i32 %q.0.i.i.us.i.i, 2
  br i1 %cmp.not.i.i.us.i.i, label %while.cond1.preheader.i.i.us.i.i, label %while.cond.i.i.us.i.i, !llvm.loop !3

while.cond1.preheader.i.i.us.i.i:                 ; preds = %while.cond.i.i.us.i.i
  %cmp223.i.i.us.i.i = icmp sgt i32 %q.0.i.i.us.i.i, 1
  br i1 %cmp223.i.i.us.i.i, label %while.body3.i.i.us.i.i, label %eml_distance_euclidean_int16.exit.us.i.i

while.body3.i.i.us.i.i:                           ; preds = %while.cond1.preheader.i.i.us.i.i, %while.body3.i.i.us.i.i
  %x.addr.026.i.i.us.i.i = phi i32 [ %spec.select21.i.i.us.i.i, %while.body3.i.i.us.i.i ], [ %add.i.us.i.i.3, %while.cond1.preheader.i.i.us.i.i ]
  %r.025.i.i.us.i.i = phi i32 [ %spec.select.i.i.us.i.i, %while.body3.i.i.us.i.i ], [ 0, %while.cond1.preheader.i.i.us.i.i ]
  %q.124.i.i.us.i.i = phi i32 [ %shr22.i.i.us.i.i, %while.body3.i.i.us.i.i ], [ %q.0.i.i.us.i.i, %while.cond1.preheader.i.i.us.i.i ]
  %shr22.i.i.us.i.i = lshr i32 %q.124.i.i.us.i.i, 2
  %13 = add i32 %r.025.i.i.us.i.i, %shr22.i.i.us.i.i
  %sub4.i.i.us.i.i = sub i32 %x.addr.026.i.i.us.i.i, %13
  %shr5.i.i.us.i.i = ashr i32 %r.025.i.i.us.i.i, 1
  %cmp6.i.i.us.i.i = icmp sgt i32 %sub4.i.i.us.i.i, -1
  %add.i.i.us.i.i = select i1 %cmp6.i.i.us.i.i, i32 %shr22.i.i.us.i.i, i32 0
  %spec.select.i.i.us.i.i = add nsw i32 %add.i.i.us.i.i, %shr5.i.i.us.i.i
  %spec.select21.i.i.us.i.i = select i1 %cmp6.i.i.us.i.i, i32 %sub4.i.i.us.i.i, i32 %x.addr.026.i.i.us.i.i
  %cmp2.i.i.us.i.i = icmp ugt i32 %q.124.i.i.us.i.i, 7
  br i1 %cmp2.i.i.us.i.i, label %while.body3.i.i.us.i.i, label %eml_distance_euclidean_int16.exit.us.i.i, !llvm.loop !5

eml_distance_euclidean_int16.exit.us.i.i:         ; preds = %while.body3.i.i.us.i.i, %while.cond1.preheader.i.i.us.i.i
  %r.0.lcssa.i.i.us.i.i = phi i32 [ 0, %while.cond1.preheader.i.i.us.i.i ], [ %spec.select.i.i.us.i.i, %while.body3.i.i.us.i.i ]
  %conv15.us.i.i = trunc i32 %i.034.us.i.i to i16
  %index.us.i.i = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %1, i64 %indvars.iv36.i.i, i32 0
  store i16 %conv15.us.i.i, i16* %index.us.i.i, align 8, !tbaa !34
  %distance18.us.i.i = getelementptr inbounds %struct._EmlNeighborsDistanceItem, %struct._EmlNeighborsDistanceItem* %1, i64 %indvars.iv36.i.i, i32 1
  store i32 %r.0.lcssa.i.i.us.i.i, i32* %distance18.us.i.i, align 4, !tbaa !14
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 1
  %inc.us.i.i = add nuw nsw i32 %i.034.us.i.i, 1
  %exitcond40.not.i.i = icmp eq i64 %indvars.iv.next37.i.i, %wide.trip.count39.i.i
  br i1 %exitcond40.not.i.i, label %if.end.i, label %for.body.us.i.i, !llvm.loop !35

if.end.i:                                         ; preds = %eml_distance_euclidean_int16.exit.us.i.i, %for.cond.preheader.i.i
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %4) #16
  store i16 -1, i16* %label.i, align 2, !tbaa !6
  %14 = load i16, i16* getelementptr inbounds (%struct._EmlNeighborsModel, %struct._EmlNeighborsModel* @iris_knn, i64 0, i32 5), align 8, !tbaa !44
  %conv1.i = sext i16 %14 to i32
  %call2.i = call i32 @eml_neighbors_find_nearest(%struct._EmlNeighborsModel* nonnull @iris_knn, %struct._EmlNeighborsDistanceItem* nonnull %1, i32 %conv.i.i, i32 %conv1.i, i16* nonnull %label.i) #16
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %4) #16
  %.pre = load i16, i16* getelementptr inbounds (%struct._EmlNeighborsModel, %struct._EmlNeighborsModel* @iris_knn, i64 0, i32 1), align 2, !tbaa !29
  %.pre72 = load i16, i16* getelementptr inbounds (%struct._EmlNeighborsModel, %struct._EmlNeighborsModel* @iris_knn, i64 0, i32 0), align 8
  br label %eml_neighbors_predict.exit

eml_neighbors_predict.exit:                       ; preds = %for.body23, %if.end.i
  %15 = phi i16 [ %5, %for.body23 ], [ %.pre72, %if.end.i ]
  %16 = phi i16 [ %6, %for.body23 ], [ %.pre, %if.end.i ]
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %exitcond70.not = icmp eq i64 %indvars.iv.next69, 100000
  br i1 %exitcond70.not, label %for.cond.cleanup22, label %for.body23, !llvm.loop !47

cleanup:                                          ; preds = %for.cond.cleanup22, %if.then
  %retval.0 = phi i32 [ 0, %for.cond.cleanup22 ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef align 16 i8* @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare dso_local void @srand(i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #11

; Function Attrs: nounwind
declare dso_local i64 @clock() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nofree nosync nounwind readnone willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (git@github.com:kirshanthans/llvm-project-exp.git 63be16900b7261c43bffac7ac5400488560f71a7)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !4, !11}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !4, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!15, !16, i64 4}
!15 = !{!"_EmlNeighborsDistanceItem", !7, i64 0, !16, i64 4}
!16 = !{!"int", !8, i64 0}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = !{!20, !21, i64 0}
!20 = !{!"", !21, i64 0, !21, i64 8}
!21 = !{!"long", !8, i64 0}
!22 = !{!20, !21, i64 8}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = !{!26, !7, i64 4}
!26 = !{!"_EmlNeighborsModel", !7, i64 0, !7, i64 2, !7, i64 4, !27, i64 8, !27, i64 16, !7, i64 24}
!27 = !{!"any pointer", !8, i64 0}
!28 = !{!26, !7, i64 0}
!29 = !{!26, !7, i64 2}
!30 = !{!26, !27, i64 8}
!31 = !{!26, !27, i64 16}
!32 = distinct !{!32, !4, !11}
!33 = distinct !{!33, !4, !13, !11}
!34 = !{!15, !7, i64 0}
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{i64 0, i64 2, !6, i64 4, i64 4, !39}
!39 = !{!16, !16, i64 0}
!40 = distinct !{!40, !4}
!41 = distinct !{!41, !4, !11}
!42 = distinct !{!42, !4, !13, !11}
!43 = distinct !{!43, !37}
!44 = !{!26, !7, i64 24}
!45 = !{!27, !27, i64 0}
!46 = distinct !{!46, !4}
!47 = distinct !{!47, !4}
