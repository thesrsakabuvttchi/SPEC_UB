; ModuleID = 'relu.ll'
source_filename = "relu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_info = type { i32, [1024 x i8], [64 x i8], [1024 x i8], i32, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [256 x i8], [12 x i32], [12 x [256 x i8]], [1024 x i8] }

@nevents = dso_local local_unnamed_addr global i32 0, align 4
@eventset = dso_local global i32 -1, align 4
@events = dso_local local_unnamed_addr global [5 x i32] [i32 -2147483591, i32 -2147483603, i32 -2147483593, i32 -2147483602, i32 -2147483598], align 16
@event_names = dso_local global [5 x [256 x i8]] [[256 x i8] c"PAPI_RES_STL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"PAPI_BR_NTK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"PAPI_BR_INS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"PAPI_BR_MSP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"PAPI_TOT_INS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@values = dso_local global [5 x i64] zeroinitializer, align 16
@retval = dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Failed %s\0A\00", align 1
@cvalues = dso_local local_unnamed_addr global [5 x i64] zeroinitializer, align 16
@t1 = dso_local local_unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Time taken (Branching): %lld usec\0A\00", align 1
@info = dso_local global %struct.event_info zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"%20s = %lld\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Branch accuracy: %lf%%\0A\00", align 1
@errors = dso_local local_unnamed_addr global i32 0, align 4
@spread = dso_local local_unnamed_addr global [5 x double] zeroinitializer, align 16
@t2 = dso_local local_unnamed_addr global i64 0, align 8
@t3 = dso_local local_unnamed_addr global i64 0, align 8
@str = private unnamed_addr constant [25 x i8] c"Error creating eventset!\00", align 1
@str.7 = private unnamed_addr constant [15 x i8] c"Version Error!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @init_papi_vars() local_unnamed_addr #0 {
entry:
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @values to i8*), i8 0, i64 40, i1 false)
  %call = call i32 @PAPI_library_init(i32 117506048) #12
  store i32 %call, i32* @retval, align 4, !tbaa !3
  %cmp1.not = icmp eq i32 %call, 117506048
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %puts44 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str.7, i64 0, i64 0))
  call void @exit(i32 -1) #13
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i32 @PAPI_create_eventset(i32* nonnull @eventset) #12
  store i32 %call3, i32* @retval, align 4, !tbaa !3
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.body11, label %if.then4

if.then4:                                         ; preds = %if.end
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 -1) #13
  unreachable

for.cond.cleanup10:                               ; preds = %for.inc32
  ret void

for.body11:                                       ; preds = %for.inc32, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc32 ], [ 0, %if.end ]
  %arrayidx13 = getelementptr inbounds [5 x i32], [5 x i32]* @events, i64 0, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx13, align 4, !tbaa !3
  %call14 = call i32 @PAPI_query_event(i32 %0) #12
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end17, label %for.inc32

if.end17:                                         ; preds = %for.body11
  %1 = load i32, i32* @eventset, align 4, !tbaa !3
  %2 = load i32, i32* %arrayidx13, align 4, !tbaa !3
  %call20 = call i32 @PAPI_add_event(i32 %1, i32 %2) #12
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %split.bb, label %split.bb1

for.inc32:                                        ; preds = %split.bb, %split.bb1, %for.body11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.cond.cleanup10, label %for.body11, !llvm.loop !7

split.bb:                                         ; preds = %if.end17
  %3 = load i32, i32* %arrayidx13, align 4
  %4 = load i32, i32* @nevents, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [5 x i32], [5 x i32]* @events, i64 0, i64 %5
  store i32 %3, i32* %6, align 4
  %7 = add nsw i32 %4, 1
  store i32 %7, i32* @nevents, align 4
  br label %for.inc32

split.bb1:                                        ; preds = %if.end17
  %8 = getelementptr inbounds [5 x [256 x i8]], [5 x [256 x i8]]* @event_names, i64 0, i64 %indvars.iv, i64 0
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* nonnull %8)
  br label %for.inc32
}

declare dso_local i32 @PAPI_library_init(i32) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #3

declare dso_local i32 @PAPI_create_eventset(i32*) local_unnamed_addr #1

declare dso_local i32 @PAPI_query_event(i32) local_unnamed_addr #1

declare dso_local i32 @PAPI_add_event(i32, i32) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @clear_cvals() local_unnamed_addr #4 {
entry:
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @cvalues to i8*), i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @setup(float* nocapture %arr, i64 %n) local_unnamed_addr #0 {
entry:
  br label %for.body

for.cond5.preheader:                              ; preds = %for.body
  %cmp625 = icmp ugt i64 %n, 10000000
  br i1 %cmp625, label %for.body9.preheader, label %for.cond.cleanup8

for.body9.preheader:                              ; preds = %for.cond5.preheader
  %scevgep = getelementptr float, float* %arr, i64 10000000
  %scevgep27 = bitcast float* %scevgep to i8*
  %0 = shl i64 %n, 2
  %1 = add i64 %0, -40000000
  call void @llvm.memset.p0i8.i64(i8* align 4 %scevgep27, i8 0, i64 %1, i1 false)
  br label %for.cond.cleanup8

for.body:                                         ; preds = %for.body, %entry
  %i.024 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %call = call i32 @rand() #12
  %conv2 = sitofp i32 %call to float
  %div = fmul float %conv2, 0x3E00000000000000
  %2 = call float @llvm.fmuladd.f32(float %div, float 2.000000e+00, float -1.000000e+00)
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %i.024
  store float %2, float* %arrayidx, align 4, !tbaa !10
  %inc = add nuw nsw i64 %i.024, 1
  %exitcond.not = icmp eq i64 %inc, 10000000
  br i1 %exitcond.not, label %for.cond5.preheader, label %for.body, !llvm.loop !12

for.cond.cleanup8:                                ; preds = %for.body9.preheader, %for.cond5.preheader
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i32 @array_RELU(float* nocapture %arr1) local_unnamed_addr #7 {
entry:
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc
  ret i32 0

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds float, float* %arr1, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4, !tbaa !10
  %cmp1 = fcmp olt float %0, 0.000000e+00
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10000001
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %call = call noalias align 16 dereferenceable_or_null(40000004) i8* @calloc(i64 10000001, i64 4) #12
  %0 = bitcast i8* %call to float*
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %i.024.i = phi i64 [ 0, %entry ], [ %inc.i, %for.body.i ]
  %call.i = call i32 @rand() #12
  %conv2.i = sitofp i32 %call.i to float
  %div.i = fmul float %conv2.i, 0x3E00000000000000
  %1 = call float @llvm.fmuladd.f32(float %div.i, float 2.000000e+00, float -1.000000e+00) #12
  %arrayidx.i = getelementptr inbounds float, float* %0, i64 %i.024.i
  store float %1, float* %arrayidx.i, align 4, !tbaa !10
  %inc.i = add nuw nsw i64 %i.024.i, 1
  %exitcond.not.i = icmp eq i64 %inc.i, 10000000
  br i1 %exitcond.not.i, label %setup.exit, label %for.body.i, !llvm.loop !12

setup.exit:                                       ; preds = %for.body.i
  call void @init_papi_vars()
  %call1 = call i64 @PAPI_get_real_usec() #12
  store i64 %call1, i64* @t1, align 8, !tbaa !14
  %2 = load i32, i32* @eventset, align 4, !tbaa !3
  %call2 = call i32 @PAPI_start(i32 %2) #12
  br label %for.body.i24

for.body.i24:                                     ; preds = %for.inc.i, %setup.exit
  %indvars.iv.i = phi i64 [ 0, %setup.exit ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i23 = getelementptr inbounds float, float* %0, i64 %indvars.iv.i
  %3 = load float, float* %arrayidx.i23, align 4, !tbaa !10
  %cmp1.i = fcmp olt float %3, 0.000000e+00
  br i1 %cmp1.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i24
  store float 0.000000e+00, float* %arrayidx.i23, align 4, !tbaa !10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i, 10000001
  br i1 %exitcond.not.i25, label %array_RELU.exit, label %for.body.i24, !llvm.loop !13

array_RELU.exit:                                  ; preds = %for.inc.i
  %call4 = call i64 @PAPI_get_real_usec() #12
  %4 = load i64, i64* @t1, align 8, !tbaa !14
  %sub = sub nsw i64 %call4, %4
  %call5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %sub)
  %5 = load i32, i32* @eventset, align 4, !tbaa !3
  %call6 = call i32 @PAPI_stop(i32 %5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @values, i64 0, i64 0)) #12
  %6 = load i32, i32* @nevents, align 4, !tbaa !3
  %cmp26 = icmp sgt i32 %6, 0
  br i1 %cmp26, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %array_RELU.exit
  %7 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @values, i64 0, i64 2), align 16, !tbaa !14
  %conv = sitofp i64 %7 to float
  %8 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @values, i64 0, i64 1), align 8, !tbaa !14
  %conv11 = sitofp i64 %8 to float
  %div = fdiv float %conv, %conv11
  %conv12 = fpext float %div to double
  %sub13 = fsub double 1.000000e+00, %conv12
  %mul = fmul double %sub13, 1.000000e+02
  %call14 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), double %mul)
  %putchar = call i32 @putchar(i32 10)
  call void @free(i8* %call) #12
  ret i32 0

for.body:                                         ; preds = %for.body, %array_RELU.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %array_RELU.exit ]
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @events, i64 0, i64 %indvars.iv
  %9 = load i32, i32* %arrayidx, align 4, !tbaa !3
  %call7 = call i32 @PAPI_get_event_info(i32 %9, %struct.event_info* nonnull @info) #12
  %arrayidx9 = getelementptr inbounds [5 x i64], [5 x i64]* @values, i64 0, i64 %indvars.iv
  %10 = load i64, i64* %arrayidx9, align 8, !tbaa !14
  %call10 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds (%struct.event_info, %struct.event_info* @info, i64 0, i32 2, i64 0), i64 %10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = load i32, i32* @nevents, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %12
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !16
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local noalias noundef align 16 i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

declare dso_local i64 @PAPI_get_real_usec() local_unnamed_addr #1

declare dso_local i32 @PAPI_start(i32) local_unnamed_addr #1

declare dso_local i32 @PAPI_stop(i32, i64*) local_unnamed_addr #1

declare dso_local i32 @PAPI_get_event_info(i32, %struct.event_info*) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (git@github.com:kirshanthans/llvm-project-exp.git 63be16900b7261c43bffac7ac5400488560f71a7)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !5, i64 0}
!12 = distinct !{!12, !8, !9}
!13 = distinct !{!13, !8, !9}
!14 = !{!15, !15, i64 0}
!15 = !{!"long long", !5, i64 0}
!16 = distinct !{!16, !8, !9}
