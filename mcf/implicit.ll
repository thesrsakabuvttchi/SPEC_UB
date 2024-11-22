; ModuleID = './implicit.c'
source_filename = "./implicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i32, i64, %struct.node*, %struct.node*, i16, %struct.arc*, %struct.arc*, i64, i64 }
%struct.list_elem = type { %struct.arc*, %struct.list_elem* }

@.str = private unnamed_addr constant [20 x i8] c"net->max_new_m >= 3\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"./implicit.c\00", align 1
@__PRETTY_FUNCTION__.resize_prob = private unnamed_addr constant [30 x i8] c"long resize_prob(network_t *)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"network %s: not enough memory\0A\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define dso_local i64 @refreshArcPointers(%struct.network* %net, i64 (%struct.network*, i64)* nocapture %getPos, %struct.arc* %sorted_array) local_unnamed_addr #0 {
entry:
  %n = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %nodes = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 21
  %0 = load i64, i64* %n, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %cmp.not65 = icmp slt i64 %0, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.not65, label %for.end, label %for.body, !sourceFile !3, !mergedLineNum !4

for.body:                                         ; preds = %entry, %for.inc
  %i.066 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %1 = load %struct.node*, %struct.node** %nodes, align 8, !tbaa !12, !sourceFile !3, !mergedLineNum !4
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %1, i64 %i.066, i32 6, !sourceFile !3, !mergedLineNum !4
  %2 = load %struct.arc*, %struct.arc** %basic_arc, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !4
  %tobool.not = icmp eq %struct.arc* %2, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not, label %if.end, label %land.lhs.true, !sourceFile !3, !mergedLineNum !4

land.lhs.true:                                    ; preds = %for.body
  %id = getelementptr inbounds %struct.arc, %struct.arc* %2, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %3 = load i32, i32* %id, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp2 = icmp sgt i32 %3, -1
  br i1 %cmp2, label %if.then, label %if.end, !sourceFile !3, !mergedLineNum !4

if.then:                                          ; preds = %land.lhs.true
  %conv64 = zext i32 %3 to i64
  %call = tail call i64 %getPos(%struct.network* nonnull %net, i64 %conv64) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %sorted_array, i64 %call, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx, %struct.arc** %basic_arc, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !4
  br label %if.end, !sourceFile !3, !mergedLineNum !4

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %firstin = getelementptr inbounds %struct.node, %struct.node* %1, i64 %i.066, i32 8, !sourceFile !3, !mergedLineNum !4
  %4 = load %struct.arc*, %struct.arc** %firstin, align 8, !tbaa !19, !sourceFile !3, !mergedLineNum !4
  %tobool6.not = icmp eq %struct.arc* %4, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool6.not, label %if.end19, label %land.lhs.true7, !sourceFile !3, !mergedLineNum !4

land.lhs.true7:                                   ; preds = %if.end
  %id9 = getelementptr inbounds %struct.arc, %struct.arc* %4, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %5 = load i32, i32* %id9, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp10 = icmp sgt i32 %5, -1
  br i1 %cmp10, label %if.then12, label %if.end19, !sourceFile !3, !mergedLineNum !4

if.then12:                                        ; preds = %land.lhs.true7
  %conv1563 = zext i32 %5 to i64
  %call16 = tail call i64 %getPos(%struct.network* nonnull %net, i64 %conv1563) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx17 = getelementptr inbounds %struct.arc, %struct.arc* %sorted_array, i64 %call16, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx17, %struct.arc** %firstin, align 8, !tbaa !19, !sourceFile !3, !mergedLineNum !4
  br label %if.end19, !sourceFile !3, !mergedLineNum !4

if.end19:                                         ; preds = %if.then12, %land.lhs.true7, %if.end
  %firstout = getelementptr inbounds %struct.node, %struct.node* %1, i64 %i.066, i32 7, !sourceFile !3, !mergedLineNum !4
  %6 = load %struct.arc*, %struct.arc** %firstout, align 8, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  %tobool20.not = icmp eq %struct.arc* %6, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool20.not, label %for.inc, label %land.lhs.true21, !sourceFile !3, !mergedLineNum !4

land.lhs.true21:                                  ; preds = %if.end19
  %id23 = getelementptr inbounds %struct.arc, %struct.arc* %6, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %7 = load i32, i32* %id23, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp24 = icmp sgt i32 %7, -1
  br i1 %cmp24, label %if.then26, label %for.inc, !sourceFile !3, !mergedLineNum !4

if.then26:                                        ; preds = %land.lhs.true21
  %conv2962 = zext i32 %7 to i64
  %call30 = tail call i64 %getPos(%struct.network* nonnull %net, i64 %conv2962) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx31 = getelementptr inbounds %struct.arc, %struct.arc* %sorted_array, i64 %call30, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx31, %struct.arc** %firstout, align 8, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  br label %for.inc, !sourceFile !3, !mergedLineNum !4

for.inc:                                          ; preds = %if.end19, %land.lhs.true21, %if.then26
  %inc = add nuw nsw i64 %i.066, 1, !sourceFile !3, !mergedLineNum !4
  %8 = load i64, i64* %n, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %cmp.not.not = icmp slt i64 %i.066, %8
  br i1 %cmp.not.not, label %for.body, label %for.end, !llvm.loop !21, !sourceFile !3, !mergedLineNum !4

for.end:                                          ; preds = %for.inc, %entry
  ret i64 0, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nounwind uwtable
define dso_local i64 @refreshPositions(%struct.network* %net, i64 (%struct.network*, i64)* nocapture %getPos, i64 %new_m) local_unnamed_addr #0 {
entry:
  %sorted_arcs = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 25, !sourceFile !3, !mergedLineNum !4
  %0 = load %struct.arc*, %struct.arc** %sorted_arcs, align 8, !tbaa !23, !sourceFile !3, !mergedLineNum !4
  %n.i = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %nodes.i = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 21
  %1 = load i64, i64* %n.i, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %cmp.not65.i = icmp slt i64 %1, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.not65.i, label %refreshArcPointers.exit, label %for.body.i, !sourceFile !3, !mergedLineNum !4

for.body.i:                                       ; preds = %entry, %for.inc.i
  %i.066.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %entry ]
  %2 = load %struct.node*, %struct.node** %nodes.i, align 8, !tbaa !12, !sourceFile !3, !mergedLineNum !4
  %basic_arc.i = getelementptr inbounds %struct.node, %struct.node* %2, i64 %i.066.i, i32 6, !sourceFile !3, !mergedLineNum !4
  %3 = load %struct.arc*, %struct.arc** %basic_arc.i, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !4
  %tobool.not.i = icmp eq %struct.arc* %3, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true.i:                                  ; preds = %for.body.i
  %id.i = getelementptr inbounds %struct.arc, %struct.arc* %3, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %4 = load i32, i32* %id.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp2.i = icmp sgt i32 %4, -1
  br i1 %cmp2.i, label %if.then.i, label %if.end.i, !sourceFile !3, !mergedLineNum !4

if.then.i:                                        ; preds = %land.lhs.true.i
  %conv64.i = zext i32 %4 to i64
  %call.i = tail call i64 %getPos(%struct.network* nonnull %net, i64 %conv64.i) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx.i = getelementptr inbounds %struct.arc, %struct.arc* %0, i64 %call.i, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx.i, %struct.arc** %basic_arc.i, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !4
  br label %if.end.i, !sourceFile !3, !mergedLineNum !4

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i, %for.body.i
  %firstin.i = getelementptr inbounds %struct.node, %struct.node* %2, i64 %i.066.i, i32 8, !sourceFile !3, !mergedLineNum !4
  %5 = load %struct.arc*, %struct.arc** %firstin.i, align 8, !tbaa !19, !sourceFile !3, !mergedLineNum !4
  %tobool6.not.i = icmp eq %struct.arc* %5, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool6.not.i, label %if.end19.i, label %land.lhs.true7.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true7.i:                                 ; preds = %if.end.i
  %id9.i = getelementptr inbounds %struct.arc, %struct.arc* %5, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %6 = load i32, i32* %id9.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp10.i = icmp sgt i32 %6, -1
  br i1 %cmp10.i, label %if.then12.i, label %if.end19.i, !sourceFile !3, !mergedLineNum !4

if.then12.i:                                      ; preds = %land.lhs.true7.i
  %conv1563.i = zext i32 %6 to i64
  %call16.i = tail call i64 %getPos(%struct.network* nonnull %net, i64 %conv1563.i) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx17.i = getelementptr inbounds %struct.arc, %struct.arc* %0, i64 %call16.i, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx17.i, %struct.arc** %firstin.i, align 8, !tbaa !19, !sourceFile !3, !mergedLineNum !4
  br label %if.end19.i, !sourceFile !3, !mergedLineNum !4

if.end19.i:                                       ; preds = %if.then12.i, %land.lhs.true7.i, %if.end.i
  %firstout.i = getelementptr inbounds %struct.node, %struct.node* %2, i64 %i.066.i, i32 7, !sourceFile !3, !mergedLineNum !4
  %7 = load %struct.arc*, %struct.arc** %firstout.i, align 8, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  %tobool20.not.i = icmp eq %struct.arc* %7, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool20.not.i, label %for.inc.i, label %land.lhs.true21.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true21.i:                                ; preds = %if.end19.i
  %id23.i = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %8 = load i32, i32* %id23.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp24.i = icmp sgt i32 %8, -1
  br i1 %cmp24.i, label %if.then26.i, label %for.inc.i, !sourceFile !3, !mergedLineNum !4

if.then26.i:                                      ; preds = %land.lhs.true21.i
  %conv2962.i = zext i32 %8 to i64
  %call30.i = tail call i64 %getPos(%struct.network* nonnull %net, i64 %conv2962.i) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx31.i = getelementptr inbounds %struct.arc, %struct.arc* %0, i64 %call30.i, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx31.i, %struct.arc** %firstout.i, align 8, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  br label %for.inc.i, !sourceFile !3, !mergedLineNum !4

for.inc.i:                                        ; preds = %if.then26.i, %land.lhs.true21.i, %if.end19.i
  %inc.i = add nuw nsw i64 %i.066.i, 1, !sourceFile !3, !mergedLineNum !4
  %9 = load i64, i64* %n.i, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %cmp.not.not.i = icmp slt i64 %i.066.i, %9
  br i1 %cmp.not.not.i, label %for.body.i, label %refreshArcPointers.exit, !llvm.loop !21, !sourceFile !3, !mergedLineNum !4

refreshArcPointers.exit:                          ; preds = %for.inc.i, %entry
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 23
  %cmp30 = icmp sgt i64 %new_m, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp30, label %for.body, label %for.end, !sourceFile !3, !mergedLineNum !4

for.body:                                         ; preds = %refreshArcPointers.exit, %for.inc
  %position.031 = phi i64 [ %inc, %for.inc ], [ 0, %refreshArcPointers.exit ]
  %10 = load %struct.arc*, %struct.arc** %arcs, align 8, !tbaa !24, !sourceFile !3, !mergedLineNum !4
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %position.031, !sourceFile !3, !mergedLineNum !4
  %id = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %11 = load i32, i32* %id, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp1 = icmp slt i32 %11, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp1, label %for.inc, label %if.end, !sourceFile !3, !mergedLineNum !4

if.end:                                           ; preds = %for.body
  %conv29 = zext i32 %11 to i64
  %call3 = tail call i64 %getPos(%struct.network* nonnull %net, i64 %conv29) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %0, i64 %call3, !sourceFile !3, !mergedLineNum !4
  %12 = bitcast %struct.arc* %arrayidx to i8*, !sourceFile !3, !mergedLineNum !4
  %13 = bitcast %struct.arc* %add.ptr to i8*, !sourceFile !3, !mergedLineNum !4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %12, i8* noundef nonnull align 8 dereferenceable(72) %13, i64 72, i1 false), !tbaa.struct !25, !sourceFile !3, !mergedLineNum !4
  br label %for.inc, !sourceFile !3, !mergedLineNum !4

for.inc:                                          ; preds = %for.body, %if.end
  %inc = add nuw nsw i64 %position.031, 1, !sourceFile !3, !mergedLineNum !4
  %exitcond.not = icmp eq i64 %inc, %new_m
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !30, !sourceFile !3, !mergedLineNum !4

for.end:                                          ; preds = %for.inc, %refreshArcPointers.exit
  %14 = load %struct.arc*, %struct.arc** %arcs, align 8, !tbaa !24, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %0, %struct.arc** %arcs, align 8, !tbaa !24, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %14, %struct.arc** %sorted_arcs, align 8, !tbaa !23, !sourceFile !3, !mergedLineNum !4
  %add.ptr7 = getelementptr inbounds %struct.arc, %struct.arc* %0, i64 %new_m, !sourceFile !3, !mergedLineNum !4
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 24, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %add.ptr7, %struct.arc** %stop_arcs, align 8, !tbaa !31, !sourceFile !3, !mergedLineNum !4
  ret i64 0, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @marc_arcs(%struct.network* nocapture %net, i64* nocapture %new_arcs, i64* nocapture readonly %new_arcs_array, %struct.arc*** nocapture readonly %arcs_pointer_sorted) local_unnamed_addr #0 {
entry:
  %n_trips = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 3, !sourceFile !3, !mergedLineNum !4
  %0 = load i64, i64* %n_trips, align 8, !tbaa !32, !sourceFile !3, !mergedLineNum !4
  %cmp = icmp slt i64 %0, 15001
  %max_residual_new_m = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 8
  %1 = load i64, i64* %max_residual_new_m, align 8, !tbaa !33
  %. = select i1 %cmp, i64 -1000000, i64 -4000000
  %sub4 = add nsw i64 %1, %.
  store i64 0, i64* %new_arcs, align 8, !tbaa !27, !sourceFile !3, !mergedLineNum !4
  %2 = load i64, i64* %new_arcs_array, align 8, !tbaa !27, !sourceFile !3, !mergedLineNum !4
  store i64 %2, i64* %new_arcs, align 8, !tbaa !27, !sourceFile !3, !mergedLineNum !4
  %m = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 5, !sourceFile !3, !mergedLineNum !4
  %cmp9144 = icmp sgt i64 %2, 0, !sourceFile !3, !mergedLineNum !4
  %cmp10145 = icmp sgt i64 %sub4, 0, !sourceFile !3, !mergedLineNum !4
  %3 = select i1 %cmp9144, i1 %cmp10145, i1 false, !sourceFile !3, !mergedLineNum !4
  br i1 %3, label %while.body.lr.ph, label %for.cond38, !sourceFile !3, !mergedLineNum !4

while.body.lr.ph:                                 ; preds = %entry
  %4 = load %struct.arc**, %struct.arc*** %arcs_pointer_sorted, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %5 = load i64, i64* %m, align 8, !tbaa !34, !sourceFile !3, !mergedLineNum !4
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %incdec.ptr150 = phi %struct.arc** [ %4, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %inc37148 = phi i64 [ 0, %while.body.lr.ph ], [ %inc37, %while.body ]
  %start_id.0147 = phi i64 [ %5, %while.body.lr.ph ], [ %inc33, %while.body ]
  %global_new.0146 = phi i64 [ 0, %while.body.lr.ph ], [ %inc34, %while.body ]
  %6 = load i64, i64* %new_arcs_array, align 8, !tbaa !27, !sourceFile !3, !mergedLineNum !4
  %cmp13 = icmp slt i64 %inc37148, %6, !sourceFile !3, !mergedLineNum !4
  %7 = load %struct.arc*, %struct.arc** %incdec.ptr150, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !35
  %merged.select = select i1 %cmp13, %struct.arc* %7, %struct.arc* null
  %inc33 = add nsw i64 %start_id.0147, 1, !sourceFile !3, !mergedLineNum !4
  %conv = trunc i64 %start_id.0147 to i32, !sourceFile !3, !mergedLineNum !4
  %id = getelementptr inbounds %struct.arc, %struct.arc* %merged.select, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  store i32 %conv, i32* %id, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %merged.select, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  store i64 1, i64* %flow, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %inc34 = add nuw nsw i64 %global_new.0146, 1, !sourceFile !3, !mergedLineNum !4
  %incdec.ptr = getelementptr inbounds %struct.arc*, %struct.arc** %incdec.ptr150, i64 1, !sourceFile !3, !mergedLineNum !4
  %inc37 = add nuw nsw i64 %inc37148, 1, !sourceFile !3, !mergedLineNum !4
  %8 = load i64, i64* %new_arcs, align 8, !tbaa !27, !sourceFile !3, !mergedLineNum !4
  %cmp9 = icmp slt i64 %inc34, %8, !sourceFile !3, !mergedLineNum !4
  %cmp10 = icmp slt i64 %inc34, %sub4, !sourceFile !3, !mergedLineNum !4
  %9 = select i1 %cmp9, i1 %cmp10, i1 false, !sourceFile !3, !mergedLineNum !4
  br i1 %9, label %while.body, label %for.cond38, !llvm.loop !37, !sourceFile !3, !mergedLineNum !4

for.cond38:                                       ; preds = %while.body, %entry
  %10 = phi i64 [ 0, %entry ], [ %inc37, %while.body ]
  store i64 %10, i64* %new_arcs, align 8, !tbaa !27
  %max_elems = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 32, !sourceFile !3, !mergedLineNum !4
  store i64 4000, i64* %max_elems, align 8, !tbaa !38, !sourceFile !3, !mergedLineNum !4
  %11 = load i64, i64* %new_arcs, align 8, !tbaa !27, !sourceFile !3, !mergedLineNum !4
  %12 = load i64, i64* %m, align 8, !tbaa !34, !sourceFile !3, !mergedLineNum !4
  %add48 = add i64 %11, -1, !sourceFile !3, !mergedLineNum !4
  %sub49 = add i64 %add48, %12
  %div = sdiv i64 %sub49, 4000, !sourceFile !3, !mergedLineNum !4
  %add50 = add nsw i64 %div, 1, !sourceFile !3, !mergedLineNum !4
  %nr_group = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 30, !sourceFile !3, !mergedLineNum !4
  store i64 %add50, i64* %nr_group, align 8, !tbaa !39, !sourceFile !3, !mergedLineNum !4
  %13 = load i64, i64* %new_arcs, align 8, !tbaa !27, !sourceFile !3, !mergedLineNum !4
  %add52 = add nsw i64 %13, %12, !sourceFile !3, !mergedLineNum !4
  %rem = srem i64 %add52, 4000, !sourceFile !3, !mergedLineNum !4
  %cmp53.not = icmp eq i64 %rem, 0, !sourceFile !3, !mergedLineNum !4
  %sub60.neg = add nsw i64 %div, -3999
  %sub61 = add nsw i64 %sub60.neg, %rem
  %sub61.sink = select i1 %cmp53.not, i64 %add50, i64 %sub61
  %14 = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 31
  store i64 %sub61.sink, i64* %14, align 8
  %cmp68151 = icmp slt i64 %sub61.sink, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp68151, label %while.body70.preheader, label %while.end76, !sourceFile !3, !mergedLineNum !4

while.body70.preheader:                           ; preds = %for.cond38
  %15 = add nsw i64 %sub61.sink, %div
  %16 = add nsw i64 %15, 1
  %smax = call i64 @llvm.smax.i64(i64 %16, i64 0)
  %17 = xor i64 %sub61.sink, -1
  %18 = add i64 %smax, %17
  %19 = sub i64 %18, %div
  %20 = icmp ne i64 %19, 0
  %umin = zext i1 %20 to i64
  %21 = sub i64 %19, %umin
  %22 = udiv i64 %21, %add50
  %23 = add i64 %22, %umin
  %24 = add i64 %23, 1
  %min.iters.check = icmp ult i64 %24, 4
  br i1 %min.iters.check, label %while.body70.preheader153, label %vector.ph

vector.ph:                                        ; preds = %while.body70.preheader
  %n.vec = and i64 %24, -4
  %25 = mul i64 %n.vec, %add50
  %ind.end = add i64 %sub61.sink, %25
  %26 = add i64 %n.vec, -4
  %27 = lshr exact i64 %26, 2
  %28 = add nuw nsw i64 %27, 1
  %xtraiter = and i64 %28, 7
  %29 = icmp ult i64 %26, 28
  br i1 %29, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %28, 9223372036854775800
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %vec.phi = phi <2 x i64> [ <i64 4000, i64 0>, %vector.ph.new ], [ %30, %vector.body ]
  %vec.phi152 = phi <2 x i64> [ zeroinitializer, %vector.ph.new ], [ %31, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.7, %vector.body ]
  %30 = add <2 x i64> %vec.phi, <i64 -8, i64 -8>
  %31 = add <2 x i64> %vec.phi152, <i64 -8, i64 -8>
  %niter.nsub.7 = add i64 %niter, -8
  %niter.ncmp.7 = icmp eq i64 %niter.nsub.7, 0
  br i1 %niter.ncmp.7, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !40

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa157.ph = phi <2 x i64> [ undef, %vector.ph ], [ %30, %vector.body ]
  %.lcssa.ph = phi <2 x i64> [ undef, %vector.ph ], [ %31, %vector.body ]
  %vec.phi.unr = phi <2 x i64> [ <i64 4000, i64 0>, %vector.ph ], [ %30, %vector.body ]
  %vec.phi152.unr = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %31, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %vec.phi.epil = phi <2 x i64> [ %32, %vector.body.epil ], [ %vec.phi.unr, %middle.block.unr-lcssa ]
  %vec.phi152.epil = phi <2 x i64> [ %33, %vector.body.epil ], [ %vec.phi152.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter, %middle.block.unr-lcssa ]
  %32 = add <2 x i64> %vec.phi.epil, <i64 -1, i64 -1>
  %33 = add <2 x i64> %vec.phi152.epil, <i64 -1, i64 -1>
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !42

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %.lcssa157 = phi <2 x i64> [ %.lcssa157.ph, %middle.block.unr-lcssa ], [ %32, %vector.body.epil ]
  %.lcssa = phi <2 x i64> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %33, %vector.body.epil ]
  %bin.rdx = add <2 x i64> %.lcssa, %.lcssa157
  %34 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %cmp.n = icmp eq i64 %24, %n.vec
  br i1 %cmp.n, label %while.cond66.while.end76_crit_edge, label %while.body70.preheader153

while.body70.preheader153:                        ; preds = %while.body70.preheader, %middle.block
  %.ph = phi i64 [ 4000, %while.body70.preheader ], [ %34, %middle.block ]
  %.ph154 = phi i64 [ %sub61.sink, %while.body70.preheader ], [ %ind.end, %middle.block ]
  br label %while.body70

while.body70:                                     ; preds = %while.body70.preheader153, %while.body70
  %35 = phi i64 [ %dec, %while.body70 ], [ %.ph, %while.body70.preheader153 ]
  %36 = phi i64 [ %add73, %while.body70 ], [ %.ph154, %while.body70.preheader153 ]
  %add73 = add nsw i64 %36, %add50, !sourceFile !3, !mergedLineNum !4
  %dec = add nsw i64 %35, -1, !sourceFile !3, !mergedLineNum !4
  %cmp68 = icmp slt i64 %add73, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp68, label %while.body70, label %while.cond66.while.end76_crit_edge, !llvm.loop !44, !sourceFile !3, !mergedLineNum !4

while.cond66.while.end76_crit_edge:               ; preds = %while.body70, %middle.block
  %add73.lcssa = phi i64 [ %ind.end, %middle.block ], [ %add73, %while.body70 ]
  %dec.lcssa = phi i64 [ %34, %middle.block ], [ %dec, %while.body70 ]
  store i64 %add73.lcssa, i64* %14, align 8, !tbaa !46
  store i64 %dec.lcssa, i64* %max_elems, align 8, !tbaa !38
  br label %while.end76

while.end76:                                      ; preds = %while.cond66.while.end76_crit_edge, %for.cond38
  ret void, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef align 16 i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @arc_compare(%struct.arc** nocapture readonly %a1, %struct.arc** nocapture readonly %a2) #3 {
entry:
  %0 = load %struct.arc*, %struct.arc** %a1, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %0, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  %1 = load i64, i64* %flow, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %2 = load %struct.arc*, %struct.arc** %a2, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %flow1 = getelementptr inbounds %struct.arc, %struct.arc* %2, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  %3 = load i64, i64* %flow1, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp = icmp sgt i64 %1, %3, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp, label %return, label %if.end, !sourceFile !3, !mergedLineNum !4

if.end:                                           ; preds = %entry
  %cmp4 = icmp slt i64 %1, %3, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp4, label %return, label %if.end6, !sourceFile !3, !mergedLineNum !4

if.end6:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.arc, %struct.arc* %0, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %4 = load i32, i32* %id, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %id7 = getelementptr inbounds %struct.arc, %struct.arc* %2, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %5 = load i32, i32* %id7, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp8 = icmp slt i32 %4, %5, !sourceFile !3, !mergedLineNum !4
  %. = select i1 %cmp8, i32 -1, i32 1
  br label %return, !sourceFile !3, !mergedLineNum !4

return:                                           ; preds = %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ -1, %if.end ], [ %., %if.end6 ], !sourceFile !3, !mergedLineNum !4
  ret i32 %retval.0, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @resize_prob(%struct.network* %net) local_unnamed_addr #0 {
entry:
  %max_new_m = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 9, !sourceFile !3, !mergedLineNum !4
  %0 = load i64, i64* %max_new_m, align 8, !tbaa !47, !sourceFile !3, !mergedLineNum !4
  %cmp = icmp sgt i64 %0, 2
  br i1 %cmp, label %if.end, label %if.else, !sourceFile !3, !mergedLineNum !4

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 214, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.resize_prob, i64 0, i64 0)) #15, !sourceFile !3, !mergedLineNum !4
  unreachable, !sourceFile !3, !mergedLineNum !4

if.end:                                           ; preds = %entry
  %max_m = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 4, !sourceFile !3, !mergedLineNum !4
  %1 = load i64, i64* %max_m, align 8, !tbaa !48, !sourceFile !3, !mergedLineNum !4
  %add = add nsw i64 %1, %0, !sourceFile !3, !mergedLineNum !4
  store i64 %add, i64* %max_m, align 8, !tbaa !48, !sourceFile !3, !mergedLineNum !4
  %max_residual_new_m = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 8, !sourceFile !3, !mergedLineNum !4
  %2 = load i64, i64* %max_residual_new_m, align 8, !tbaa !33, !sourceFile !3, !mergedLineNum !4
  %add3 = add nsw i64 %2, %0, !sourceFile !3, !mergedLineNum !4
  store i64 %add3, i64* %max_residual_new_m, align 8, !tbaa !33, !sourceFile !3, !mergedLineNum !4
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 23, !sourceFile !3, !mergedLineNum !4
  %3 = bitcast %struct.arc** %arcs to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !24
  %mul = mul i64 %add, 72, !sourceFile !3, !mergedLineNum !4
  %call = tail call align 16 i8* @realloc(i8* %4, i64 %mul) #14, !sourceFile !3, !mergedLineNum !4
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then5, label %if.end8, !sourceFile !3, !mergedLineNum !4

if.then5:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 0, i64 0
  %call6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay), !sourceFile !3, !mergedLineNum !4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %call7 = tail call i32 @fflush(%struct._IO_FILE* %5), !sourceFile !3, !mergedLineNum !4
  br label %cleanup, !sourceFile !3, !mergedLineNum !4

if.end8:                                          ; preds = %if.end
  %6 = bitcast i8* %call to %struct.arc*
  %7 = load %struct.arc*, %struct.arc** %arcs, align 8, !tbaa !24, !sourceFile !3, !mergedLineNum !4
  store i8* %call, i8** %3, align 8, !tbaa !24
  %m = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 5, !sourceFile !3, !mergedLineNum !4
  %8 = load i64, i64* %m, align 8, !tbaa !34, !sourceFile !3, !mergedLineNum !4
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %6, i64 %8, !sourceFile !3, !mergedLineNum !4
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 24, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %add.ptr, %struct.arc** %stop_arcs, align 8, !tbaa !31, !sourceFile !3, !mergedLineNum !4
  %nodes = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 21, !sourceFile !3, !mergedLineNum !4
  %9 = load %struct.node*, %struct.node** %nodes, align 8, !tbaa !12, !sourceFile !3, !mergedLineNum !4
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 22, !sourceFile !3, !mergedLineNum !4
  %10 = load %struct.node*, %struct.node** %stop_nodes, align 8, !tbaa !49, !sourceFile !3, !mergedLineNum !4
  %11 = ptrtoint %struct.arc* %7 to i64
  %node.068 = getelementptr inbounds %struct.node, %struct.node* %9, i64 1
  %cmp1169 = icmp ult %struct.node* %node.068, %10, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp1169, label %for.body, label %for.end, !sourceFile !3, !mergedLineNum !4

for.body:                                         ; preds = %if.end8, %for.body
  %node.071 = phi %struct.node* [ %node.0, %for.body ], [ %node.068, %if.end8 ]
  %.pn70 = phi %struct.node* [ %node.071, %for.body ], [ %9, %if.end8 ]
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %.pn70, i64 1, i32 6, !sourceFile !3, !mergedLineNum !4
  %12 = load %struct.arc*, %struct.arc** %basic_arc, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !4
  %tobool12.not = icmp eq %struct.arc* %12, null, !sourceFile !3, !mergedLineNum !4
  %13 = getelementptr inbounds %struct.node, %struct.node* %.pn70, i64 1, i32 3, !sourceFile !3, !mergedLineNum !35
  %14 = load %struct.node*, %struct.node** %13, align 8, !tbaa !50, !sourceFile !3, !mergedLineNum !35
  %.not = icmp eq %struct.node* %14, %9, !sourceFile !3, !mergedLineNum !35
  %15 = ptrtoint %struct.arc* %12 to i64, !sourceFile !3, !mergedLineNum !51
  %16 = sub i64 %15, %11, !sourceFile !3, !mergedLineNum !51
  %17 = select i1 %tobool12.not, i1 true, i1 %.not
  %merged.select64 = select i1 %17, i64 1, i64 72
  %18 = sdiv exact i64 %16, %merged.select64, !sourceFile !3, !mergedLineNum !51
  %19 = getelementptr inbounds %struct.arc, %struct.arc* %6, i64 %18, !sourceFile !3, !mergedLineNum !51
  %merged.select65 = select i1 %17, %struct.arc* %12, %struct.arc* %19
  store %struct.arc* %merged.select65, %struct.arc** %basic_arc, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !51
  %node.0 = getelementptr inbounds %struct.node, %struct.node* %node.071, i64 1
  %cmp11 = icmp ult %struct.node* %node.0, %10, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp11, label %for.body, label %for.end, !llvm.loop !52, !sourceFile !3, !mergedLineNum !4

for.end:                                          ; preds = %for.body, %if.end8
  %sorted_arcs = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 25, !sourceFile !3, !mergedLineNum !4
  %20 = bitcast %struct.arc** %sorted_arcs to i8**
  %21 = load i8*, i8** %20, align 8, !tbaa !23
  %22 = load i64, i64* %max_m, align 8, !tbaa !48, !sourceFile !3, !mergedLineNum !4
  %mul22 = mul i64 %22, 72, !sourceFile !3, !mergedLineNum !4
  %call23 = tail call align 16 i8* @realloc(i8* %21, i64 %mul22) #14, !sourceFile !3, !mergedLineNum !4
  store i8* %call23, i8** %20, align 8, !tbaa !23
  br label %cleanup, !sourceFile !3, !mergedLineNum !4

cleanup:                                          ; preds = %for.end, %if.then5
  %retval.0 = phi i64 [ 0, %for.end ], [ -1, %if.then5 ], !sourceFile !3, !mergedLineNum !4
  ret i64 %retval.0, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local noalias noundef align 16 i8* @realloc(i8* nocapture, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @insert_new_arc(%struct.arc* nocapture %newarc, i64 %newpos, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost, i64 %m, i64 %number) local_unnamed_addr #7 {
entry:
  %tail1 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %newpos, i32 2, !sourceFile !3, !mergedLineNum !4
  store %struct.node* %tail, %struct.node** %tail1, align 8, !tbaa !53, !sourceFile !3, !mergedLineNum !4
  %head3 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %newpos, i32 3, !sourceFile !3, !mergedLineNum !4
  store %struct.node* %head, %struct.node** %head3, align 8, !tbaa !54, !sourceFile !3, !mergedLineNum !4
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %newpos, i32 8, !sourceFile !3, !mergedLineNum !4
  store i64 %cost, i64* %org_cost, align 8, !tbaa !55, !sourceFile !3, !mergedLineNum !4
  %cost6 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %newpos, i32 1, !sourceFile !3, !mergedLineNum !4
  store i64 %cost, i64* %cost6, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %newpos, i32 7, !sourceFile !3, !mergedLineNum !4
  store i64 %red_cost, i64* %flow, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %conv = trunc i64 %number to i32, !sourceFile !3, !mergedLineNum !4
  %id = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %newpos, i32 0, !sourceFile !3, !mergedLineNum !4
  store i32 %conv, i32* %id, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %tobool.not134 = icmp eq i64 %newpos, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not134, label %while.end, label %land.rhs.preheader, !sourceFile !3, !mergedLineNum !4

land.rhs.preheader:                               ; preds = %entry
  %add = add nsw i64 %newpos, 1, !sourceFile !3, !mergedLineNum !4
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %sub136 = phi i64 [ %sub9, %while.body ], [ %newpos, %land.rhs.preheader ]
  %pos.0135 = phi i64 [ %div, %while.body ], [ %add, %land.rhs.preheader ]
  %div = sdiv i64 %pos.0135, 2, !sourceFile !3, !mergedLineNum !4
  %sub9 = add nsw i64 %div, -1
  %flow11 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub9, i32 7, !sourceFile !3, !mergedLineNum !4
  %0 = load i64, i64* %flow11, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp = icmp slt i64 %0, %red_cost, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp, label %while.body, label %while.end, !sourceFile !3, !mergedLineNum !4

while.body:                                       ; preds = %land.rhs
  %tail16 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub9, i32 2, !sourceFile !3, !mergedLineNum !4
  %tail19 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub136, i32 2, !sourceFile !3, !mergedLineNum !4
  %head23 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub9, i32 3, !sourceFile !3, !mergedLineNum !4
  %1 = bitcast %struct.node** %tail16 to <2 x %struct.node*>*
  %2 = load <2 x %struct.node*>, <2 x %struct.node*>* %1, align 8, !tbaa !28
  %3 = bitcast %struct.node** %tail19 to <2 x %struct.node*>*
  store <2 x %struct.node*> %2, <2 x %struct.node*>* %3, align 8, !tbaa !28
  %cost30 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub9, i32 1, !sourceFile !3, !mergedLineNum !4
  %4 = load i64, i64* %cost30, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %cost33 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub136, i32 1, !sourceFile !3, !mergedLineNum !4
  store i64 %4, i64* %cost33, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %5 = load i64, i64* %cost30, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %org_cost40 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub136, i32 8, !sourceFile !3, !mergedLineNum !4
  store i64 %5, i64* %org_cost40, align 8, !tbaa !55, !sourceFile !3, !mergedLineNum !4
  %flow47 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub136, i32 7, !sourceFile !3, !mergedLineNum !4
  store i64 %0, i64* %flow47, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %id51 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub9, i32 0, !sourceFile !3, !mergedLineNum !4
  %6 = load i32, i32* %id51, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %id54 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub136, i32 0, !sourceFile !3, !mergedLineNum !4
  store i32 %6, i32* %id54, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  store %struct.node* %tail, %struct.node** %tail16, align 8, !tbaa !53, !sourceFile !3, !mergedLineNum !4
  store %struct.node* %head, %struct.node** %head23, align 8, !tbaa !54, !sourceFile !3, !mergedLineNum !4
  store i64 %cost, i64* %cost30, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %org_cost67 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub9, i32 8, !sourceFile !3, !mergedLineNum !4
  store i64 %cost, i64* %org_cost67, align 8, !tbaa !55, !sourceFile !3, !mergedLineNum !4
  store i64 %red_cost, i64* %flow11, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  store i32 %conv, i32* %id51, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %tobool.not = icmp eq i64 %sub9, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not, label %while.end, label %land.rhs, !llvm.loop !57, !sourceFile !3, !mergedLineNum !4

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  ret void, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @replace_weaker_arc(%struct.arc* %newarc, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost, i64 %max_new_par_residual_new_arcs, i64 %number) local_unnamed_addr #7 {
entry:
  %tail1 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  store %struct.node* %tail, %struct.node** %tail1, align 8, !tbaa !53, !sourceFile !3, !mergedLineNum !4
  %head3 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 0, i32 3, !sourceFile !3, !mergedLineNum !4
  store %struct.node* %head, %struct.node** %head3, align 8, !tbaa !54, !sourceFile !3, !mergedLineNum !4
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 0, i32 8, !sourceFile !3, !mergedLineNum !4
  store i64 %cost, i64* %org_cost, align 8, !tbaa !55, !sourceFile !3, !mergedLineNum !4
  %cost6 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  store i64 %cost, i64* %cost6, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  store i64 %red_cost, i64* %flow, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %conv = trunc i64 %number to i32, !sourceFile !3, !mergedLineNum !4
  %id = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  store i32 %conv, i32* %id, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %flow10 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 1, i32 7, !sourceFile !3, !mergedLineNum !4
  %0 = load i64, i64* %flow10, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %flow12 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 2, i32 7, !sourceFile !3, !mergedLineNum !4
  %1 = load i64, i64* %flow12, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp13 = icmp sgt i64 %0, %1, !sourceFile !3, !mergedLineNum !4
  %2 = select i1 %cmp13, i64 2, i64 3, !sourceFile !3, !mergedLineNum !4
  %cmp16.not153 = icmp sgt i64 %2, %max_new_par_residual_new_arcs, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp16.not153, label %while.end, label %land.rhs, !sourceFile !3, !mergedLineNum !4

land.rhs:                                         ; preds = %entry, %while.body
  %cmp.0155 = phi i64 [ %moved.sel, %while.body ], [ %2, %entry ]
  %pos.0154 = phi i64 [ %cmp.0155, %while.body ], [ 1, %entry ]
  %sub = add nsw i64 %cmp.0155, -1
  %flow19 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub, i32 7, !sourceFile !3, !mergedLineNum !4
  %3 = load i64, i64* %flow19, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp20 = icmp sgt i64 %3, %red_cost, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp20, label %while.body, label %while.end, !sourceFile !3, !mergedLineNum !4

while.body:                                       ; preds = %land.rhs
  %tail24 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub, i32 2, !sourceFile !3, !mergedLineNum !4
  %sub25 = add nsw i64 %pos.0154, -1
  %tail27 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub25, i32 2, !sourceFile !3, !mergedLineNum !4
  %head30 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub, i32 3, !sourceFile !3, !mergedLineNum !4
  %4 = bitcast %struct.node** %tail24 to <2 x %struct.node*>*
  %5 = load <2 x %struct.node*>, <2 x %struct.node*>* %4, align 8, !tbaa !28
  %6 = bitcast %struct.node** %tail27 to <2 x %struct.node*>*
  store <2 x %struct.node*> %5, <2 x %struct.node*>* %6, align 8, !tbaa !28
  %cost36 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub, i32 1, !sourceFile !3, !mergedLineNum !4
  %7 = load i64, i64* %cost36, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %cost39 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub25, i32 1, !sourceFile !3, !mergedLineNum !4
  store i64 %7, i64* %cost39, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %8 = load i64, i64* %cost36, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %org_cost45 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub25, i32 8, !sourceFile !3, !mergedLineNum !4
  store i64 %8, i64* %org_cost45, align 8, !tbaa !55, !sourceFile !3, !mergedLineNum !4
  %flow51 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub25, i32 7, !sourceFile !3, !mergedLineNum !4
  store i64 %3, i64* %flow51, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %id54 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub, i32 0, !sourceFile !3, !mergedLineNum !4
  %9 = load i32, i32* %id54, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %id57 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub25, i32 0, !sourceFile !3, !mergedLineNum !4
  store i32 %9, i32* %id57, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  store %struct.node* %tail, %struct.node** %tail24, align 8, !tbaa !53, !sourceFile !3, !mergedLineNum !4
  store %struct.node* %head, %struct.node** %head30, align 8, !tbaa !54, !sourceFile !3, !mergedLineNum !4
  store i64 %cost, i64* %cost36, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %org_cost69 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %sub, i32 8, !sourceFile !3, !mergedLineNum !4
  store i64 %cost, i64* %org_cost69, align 8, !tbaa !55, !sourceFile !3, !mergedLineNum !4
  store i64 %red_cost, i64* %flow19, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  store i32 %conv, i32* %id54, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %mul = shl nsw i64 %cmp.0155, 1
  %add = or i64 %mul, 1
  %cmp77.not = icmp sgt i64 %add, %max_new_par_residual_new_arcs, !sourceFile !3, !mergedLineNum !4
  %10 = add nsw i64 %mul, -1
  %11 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %10, i32 7, !sourceFile !3, !mergedLineNum !35
  %12 = load i64, i64* %11, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !35
  %13 = getelementptr inbounds %struct.arc, %struct.arc* %newarc, i64 %mul, i32 7, !sourceFile !3, !mergedLineNum !35
  %14 = load i64, i64* %13, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !35
  %15 = icmp slt i64 %12, %14, !sourceFile !3, !mergedLineNum !35
  %16 = select i1 %15, i64 %add, i64 %mul
  %moved.sel = select i1 %cmp77.not, i64 %mul, i64 %16
  %cmp16.not = icmp sgt i64 %moved.sel, %max_new_par_residual_new_arcs, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp16.not, label %while.end, label %land.rhs, !llvm.loop !58, !sourceFile !3, !mergedLineNum !4

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  ret void, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @calculate_max_redcost(%struct.network* nocapture readnone %net, i64* nocapture %max_redcost, %struct.arc*** nocapture readonly %arcs_pointer_sorted, i64 %num_threads) local_unnamed_addr #7 {
entry:
  store i64 0, i64* %max_redcost, align 8, !tbaa !27, !sourceFile !3, !mergedLineNum !4
  %cmp14 = icmp sgt i64 %num_threads, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp14, label %for.body.preheader, label %for.end, !sourceFile !3, !mergedLineNum !4

for.body.preheader:                               ; preds = %entry
  %xtraiter = and i64 %num_threads, 1
  %0 = icmp eq i64 %num_threads, 1
  br i1 %0, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %num_threads, -2
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %1 = phi i64 [ 0, %for.body.preheader.new ], [ %merged.select.1, %for.body ]
  %i.015 = phi i64 [ 0, %for.body.preheader.new ], [ %inc.1, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.1, %for.body ]
  %arrayidx = getelementptr inbounds %struct.arc**, %struct.arc*** %arcs_pointer_sorted, i64 %i.015, !sourceFile !3, !mergedLineNum !4
  %2 = load %struct.arc**, %struct.arc*** %arrayidx, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %3 = load %struct.arc*, %struct.arc** %2, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %3, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  %4 = load i64, i64* %flow, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp2 = icmp sgt i64 %4, %1, !sourceFile !3, !mergedLineNum !4
  %merged.select = select i1 %cmp2, i64 %4, i64 %1
  store i64 %merged.select, i64* %max_redcost, align 8, !tbaa !27, !sourceFile !3, !mergedLineNum !35
  %inc = or i64 %i.015, 1
  %arrayidx.1 = getelementptr inbounds %struct.arc**, %struct.arc*** %arcs_pointer_sorted, i64 %inc, !sourceFile !3, !mergedLineNum !4
  %5 = load %struct.arc**, %struct.arc*** %arrayidx.1, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %6 = load %struct.arc*, %struct.arc** %5, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %flow.1 = getelementptr inbounds %struct.arc, %struct.arc* %6, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  %7 = load i64, i64* %flow.1, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp2.1 = icmp sgt i64 %7, %merged.select, !sourceFile !3, !mergedLineNum !4
  %merged.select.1 = select i1 %cmp2.1, i64 %7, i64 %merged.select
  store i64 %merged.select.1, i64* %max_redcost, align 8, !tbaa !27, !sourceFile !3, !mergedLineNum !35
  %inc.1 = add nuw nsw i64 %i.015, 2, !sourceFile !3, !mergedLineNum !4
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body, !llvm.loop !59, !sourceFile !3, !mergedLineNum !4

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %.unr = phi i64 [ 0, %for.body.preheader ], [ %merged.select.1, %for.body ]
  %i.015.unr = phi i64 [ 0, %for.body.preheader ], [ %inc.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa
  %arrayidx.epil = getelementptr inbounds %struct.arc**, %struct.arc*** %arcs_pointer_sorted, i64 %i.015.unr, !sourceFile !3, !mergedLineNum !4
  %8 = load %struct.arc**, %struct.arc*** %arrayidx.epil, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %9 = load %struct.arc*, %struct.arc** %8, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %flow.epil = getelementptr inbounds %struct.arc, %struct.arc* %9, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  %10 = load i64, i64* %flow.epil, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp2.epil = icmp sgt i64 %10, %.unr, !sourceFile !3, !mergedLineNum !4
  %merged.select.epil = select i1 %cmp2.epil, i64 %10, i64 %.unr
  store i64 %merged.select.epil, i64* %max_redcost, align 8, !tbaa !27, !sourceFile !3, !mergedLineNum !35
  br label %for.end

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %entry
  ret void, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i64 @switch_arcs(%struct.network* nocapture readnone %net, i64* nocapture readonly %num_del_arcs, %struct.arc** nocapture readonly %deleted_arcs, %struct.arc* %arcnew, i32 %thread, i64 %max_new_par_residual_new_arcs, i64 %size_del, i64 %num_threads) local_unnamed_addr #8 {
entry:
  %flow12 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew, i64 0, i32 7
  %id22 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew, i64 0, i32 0
  %0 = bitcast %struct.arc* %arcnew to i8*
  %cmp85 = icmp sgt i64 %num_threads, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp85, label %for.body.preheader, label %for.end32, !sourceFile !3, !mergedLineNum !4

for.body.preheader:                               ; preds = %entry
  %conv = sext i32 %thread to i64, !sourceFile !3, !mergedLineNum !4
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc30
  %i.088 = phi i64 [ %inc31, %for.inc30 ], [ 0, %for.body.preheader ]
  %j.087 = phi i64 [ %rem, %for.inc30 ], [ %conv, %for.body.preheader ]
  %count.086 = phi i64 [ %count.1.lcssa, %for.inc30 ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i64, i64* %num_del_arcs, i64 %j.087, !sourceFile !3, !mergedLineNum !4
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !27, !sourceFile !3, !mergedLineNum !4
  %cmp2 = icmp slt i64 %1, %size_del, !sourceFile !3, !mergedLineNum !4
  %moved.sel = select i1 %cmp2, i64 %1, i64 %size_del
  %arrayidx9 = getelementptr inbounds %struct.arc*, %struct.arc** %deleted_arcs, i64 %j.087
  %cmp680 = icmp sgt i64 %moved.sel, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp680, label %for.body8, label %for.inc30, !sourceFile !3, !mergedLineNum !4

for.body8:                                        ; preds = %for.body, %for.inc
  %h.083 = phi i64 [ %inc29, %for.inc ], [ 0, %for.body ]
  %count.181 = phi i64 [ %count.2, %for.inc ], [ %count.086, %for.body ]
  %2 = load %struct.arc*, %struct.arc** %arrayidx9, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %arrayidx10 = getelementptr inbounds %struct.arc, %struct.arc* %2, i64 %h.083, !sourceFile !3, !mergedLineNum !4
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %2, i64 %h.083, i32 4, !sourceFile !3, !mergedLineNum !4
  %3 = load i16, i16* %ident, align 8, !tbaa !60, !sourceFile !3, !mergedLineNum !4
  %tobool.not = icmp eq i16 %3, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not, label %land.lhs.true, label %for.inc, !sourceFile !3, !mergedLineNum !4

land.lhs.true:                                    ; preds = %for.body8
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %2, i64 %h.083, i32 7, !sourceFile !3, !mergedLineNum !4
  %4 = load i64, i64* %flow, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %5 = load i64, i64* %flow12, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp13 = icmp slt i64 %4, %5, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp13, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false, !sourceFile !3, !mergedLineNum !4

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  %copy.sroa.0.0..sroa_idx.phi.trans.insert = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx10, i64 0, i32 0
  %copy.sroa.0.0.copyload.pre = load i32, i32* %copy.sroa.0.0..sroa_idx.phi.trans.insert, align 8, !tbaa.struct !25
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp18 = icmp eq i64 %4, %5, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp18, label %land.lhs.true20, label %for.inc, !sourceFile !3, !mergedLineNum !4

land.lhs.true20:                                  ; preds = %lor.lhs.false
  %id = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx10, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %6 = load i32, i32* %id, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %7 = load i32, i32* %id22, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp23 = icmp slt i32 %6, %7, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp23, label %if.then, label %for.inc, !sourceFile !3, !mergedLineNum !4

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true20
  %copy.sroa.0.0.copyload = phi i32 [ %copy.sroa.0.0.copyload.pre, %land.lhs.true.if.then_crit_edge ], [ %6, %land.lhs.true20 ]
  %8 = bitcast %struct.arc* %arrayidx10 to i8*, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.436.0..sroa_idx37 = getelementptr inbounds %struct.arc, %struct.arc* %2, i64 %h.083, i32 1, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.436.0.copyload = load i64, i64* %copy.sroa.436.0..sroa_idx37, align 8, !tbaa.struct !61, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.5.0..sroa_idx39 = getelementptr inbounds %struct.arc, %struct.arc* %2, i64 %h.083, i32 2, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.5.0.copyload = load %struct.node*, %struct.node** %copy.sroa.5.0..sroa_idx39, align 8, !tbaa.struct !62, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.6.0..sroa_idx41 = getelementptr inbounds %struct.arc, %struct.arc* %2, i64 %h.083, i32 3, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.6.0.copyload = load %struct.node*, %struct.node** %copy.sroa.6.0..sroa_idx41, align 8, !tbaa.struct !63, !sourceFile !3, !mergedLineNum !4
  %inc = add nsw i64 %count.181, 1, !sourceFile !3, !mergedLineNum !4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %8, i8* noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !25, !sourceFile !3, !mergedLineNum !4
  %conv28 = sext i32 %copy.sroa.0.0.copyload to i64, !sourceFile !3, !mergedLineNum !4
  tail call void @replace_weaker_arc(%struct.arc* nonnull %arcnew, %struct.node* %copy.sroa.5.0.copyload, %struct.node* %copy.sroa.6.0.copyload, i64 %copy.sroa.436.0.copyload, i64 %4, i64 %max_new_par_residual_new_arcs, i64 %conv28), !sourceFile !3, !mergedLineNum !4
  br label %for.inc, !sourceFile !3, !mergedLineNum !4

for.inc:                                          ; preds = %for.body8, %lor.lhs.false, %land.lhs.true20, %if.then
  %count.2 = phi i64 [ %count.181, %for.body8 ], [ %inc, %if.then ], [ %count.181, %land.lhs.true20 ], [ %count.181, %lor.lhs.false ], !sourceFile !3, !mergedLineNum !4
  %inc29 = add nuw nsw i64 %h.083, 1, !sourceFile !3, !mergedLineNum !4
  %exitcond.not = icmp eq i64 %inc29, %moved.sel
  br i1 %exitcond.not, label %for.inc30, label %for.body8, !llvm.loop !64, !sourceFile !3, !mergedLineNum !4

for.inc30:                                        ; preds = %for.inc, %for.body
  %count.1.lcssa = phi i64 [ %count.086, %for.body ], [ %count.2, %for.inc ]
  %inc31 = add nuw nsw i64 %i.088, 1, !sourceFile !3, !mergedLineNum !4
  %add = add nsw i64 %j.087, 1, !sourceFile !3, !mergedLineNum !4
  %rem = srem i64 %add, %num_threads, !sourceFile !3, !mergedLineNum !4
  %exitcond90.not = icmp eq i64 %inc31, %num_threads
  br i1 %exitcond90.not, label %for.end32, label %for.body, !llvm.loop !65, !sourceFile !3, !mergedLineNum !4

for.end32:                                        ; preds = %for.inc30, %entry
  %count.0.lcssa = phi i64 [ 0, %entry ], [ %count.1.lcssa, %for.inc30 ]
  ret i64 %count.0.lcssa, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nounwind uwtable
define dso_local i64 @price_out_impl(%struct.network* %net) local_unnamed_addr #0 {
entry:
  %bigM1 = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 18, !sourceFile !3, !mergedLineNum !4
  %0 = load i64, i64* %bigM1, align 8, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %call = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !sourceFile !3, !mergedLineNum !4
  %1 = bitcast i8* %call to i64*, !sourceFile !3, !mergedLineNum !4
  %call5 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !sourceFile !3, !mergedLineNum !4
  %n_trips = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 3, !sourceFile !3, !mergedLineNum !4
  %2 = load i64, i64* %n_trips, align 8, !tbaa !32, !sourceFile !3, !mergedLineNum !4
  %cmp = icmp slt i64 %2, 15001
  %m = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 5
  %3 = load i64, i64* %m, align 8, !tbaa !34
  %max_new_m = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 9
  %4 = load i64, i64* %max_new_m, align 8, !tbaa !47
  %add = add nsw i64 %4, %3
  %max_m = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 4
  %5 = load i64, i64* %max_m, align 8, !tbaa !48
  %cmp8 = icmp sgt i64 %add, %5
  br i1 %cmp, label %if.then, label %if.else, !sourceFile !3, !mergedLineNum !4

if.then:                                          ; preds = %entry
  br i1 %cmp8, label %land.lhs.true, label %if.end40, !sourceFile !3, !mergedLineNum !4

land.lhs.true:                                    ; preds = %if.then
  %mul11 = mul nsw i64 %2, %2, !sourceFile !3, !mergedLineNum !4
  %div = lshr i64 %mul11, 1
  %add13 = add nsw i64 %3, %div, !sourceFile !3, !mergedLineNum !4
  %cmp15 = icmp sgt i64 %add13, %5, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp15, label %if.then16, label %if.end40, !sourceFile !3, !mergedLineNum !4

if.then16:                                        ; preds = %land.lhs.true
  %call17 = tail call i64 @resize_prob(%struct.network* nonnull %net), !sourceFile !3, !mergedLineNum !4
  %tobool.not = icmp eq i64 %call17, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not, label %if.end40.sink.split, label %cleanup, !sourceFile !3, !mergedLineNum !4

if.else:                                          ; preds = %entry
  br i1 %cmp8, label %land.lhs.true25, label %if.end40, !sourceFile !3, !mergedLineNum !4

land.lhs.true25:                                  ; preds = %if.else
  %mul28 = mul nsw i64 %2, %2, !sourceFile !3, !mergedLineNum !4
  %div29 = lshr i64 %mul28, 1
  %add31 = add nsw i64 %3, %div29, !sourceFile !3, !mergedLineNum !4
  %cmp33 = icmp sgt i64 %add31, %5, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp33, label %if.then34, label %if.end40, !sourceFile !3, !mergedLineNum !4

if.then34:                                        ; preds = %land.lhs.true25
  %call35 = tail call i64 @resize_prob(%struct.network* nonnull %net), !sourceFile !3, !mergedLineNum !4
  %tobool36.not = icmp eq i64 %call35, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool36.not, label %if.end40.sink.split, label %cleanup, !sourceFile !3, !mergedLineNum !4

if.end40.sink.split:                              ; preds = %if.then34, %if.then16
  tail call void @refresh_neighbour_lists(%struct.network* nonnull %net, i64 (%struct.network*, i64)* nonnull @getOriginalArcPosition) #14
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %if.else, %land.lhs.true25, %if.then, %land.lhs.true
  %tobool245.not = phi i1 [ true, %if.else ], [ true, %land.lhs.true25 ], [ true, %if.then ], [ true, %land.lhs.true ], [ false, %if.end40.sink.split ]
  %6 = load i64, i64* %n_trips, align 8, !tbaa !32, !sourceFile !3, !mergedLineNum !4
  %cmp42 = icmp slt i64 %6, 15001
  %. = select i1 %cmp42, i64 1000, i64 2000
  %sorted_arcs = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 25, !sourceFile !3, !mergedLineNum !4
  %7 = load %struct.arc*, %struct.arc** %sorted_arcs, align 8, !tbaa !23, !sourceFile !3, !mergedLineNum !4
  %tobool46.not = icmp eq %struct.arc* %7, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool46.not, label %cleanup, label %if.end48, !sourceFile !3, !mergedLineNum !4

if.end48:                                         ; preds = %if.end40
  %max_residual_new_m = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 8, !sourceFile !3, !mergedLineNum !4
  %8 = load i64, i64* %max_residual_new_m, align 8, !tbaa !33, !sourceFile !3, !mergedLineNum !4
  %max_m50 = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 4, !sourceFile !3, !mergedLineNum !4
  %9 = load i64, i64* %max_m50, align 8, !tbaa !48, !sourceFile !3, !mergedLineNum !4
  store i64 0, i64* %1, align 16, !tbaa !27, !sourceFile !3, !mergedLineNum !4
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 24, !sourceFile !3, !mergedLineNum !4
  %10 = load %struct.arc*, %struct.arc** %stop_arcs, align 8, !tbaa !31, !sourceFile !3, !mergedLineNum !4
  %call61 = tail call noalias align 16 i8* @calloc(i64 %8, i64 8) #14, !sourceFile !3, !mergedLineNum !4
  %11 = bitcast i8* %call5 to i8**
  store i8* %call61, i8** %11, align 16, !tbaa !28
  %cmp64728 = icmp sgt i64 %8, 0, !sourceFile !3, !mergedLineNum !4
  %12 = bitcast i8* %call61 to %struct.arc**
  br i1 %cmp64728, label %for.body.preheader, label %for.end, !sourceFile !3, !mergedLineNum !4

for.body.preheader:                               ; preds = %if.end48
  %min.iters.check = icmp ult i64 %8, 4
  br i1 %min.iters.check, label %for.body.preheader893, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %8, -4
  %13 = add i64 %n.vec, -4
  %14 = lshr exact i64 %13, 2
  %15 = add nuw nsw i64 %14, 1
  %xtraiter = and i64 %15, 1
  %16 = icmp eq i64 %13, 0
  br i1 %16, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %15, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph.new ], [ %vec.ind.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %step.add = add <2 x i64> %vec.ind, <i64 2, i64 2>
  %17 = getelementptr inbounds %struct.arc, %struct.arc* %10, <2 x i64> %vec.ind
  %18 = getelementptr inbounds %struct.arc, %struct.arc* %10, <2 x i64> %step.add
  %19 = getelementptr inbounds %struct.arc*, %struct.arc** %12, i64 %index, !sourceFile !3, !mergedLineNum !4
  %20 = bitcast %struct.arc** %19 to <2 x %struct.arc*>*
  store <2 x %struct.arc*> %17, <2 x %struct.arc*>* %20, align 16, !tbaa !28
  %21 = getelementptr inbounds %struct.arc*, %struct.arc** %19, i64 2
  %22 = bitcast %struct.arc** %21 to <2 x %struct.arc*>*
  store <2 x %struct.arc*> %18, <2 x %struct.arc*>* %22, align 16, !tbaa !28
  %index.next = or i64 %index, 4
  %vec.ind.next = add <2 x i64> %vec.ind, <i64 4, i64 4>
  %step.add.1 = add <2 x i64> %vec.ind, <i64 6, i64 6>
  %23 = getelementptr inbounds %struct.arc, %struct.arc* %10, <2 x i64> %vec.ind.next
  %24 = getelementptr inbounds %struct.arc, %struct.arc* %10, <2 x i64> %step.add.1
  %25 = getelementptr inbounds %struct.arc*, %struct.arc** %12, i64 %index.next, !sourceFile !3, !mergedLineNum !4
  %26 = bitcast %struct.arc** %25 to <2 x %struct.arc*>*
  store <2 x %struct.arc*> %23, <2 x %struct.arc*>* %26, align 16, !tbaa !28
  %27 = getelementptr inbounds %struct.arc*, %struct.arc** %25, i64 2
  %28 = bitcast %struct.arc** %27 to <2 x %struct.arc*>*
  store <2 x %struct.arc*> %24, <2 x %struct.arc*>* %28, align 16, !tbaa !28
  %index.next.1 = add nuw i64 %index, 8
  %vec.ind.next.1 = add <2 x i64> %vec.ind, <i64 8, i64 8>
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !67

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.ind.unr = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %step.add.epil = add <2 x i64> %vec.ind.unr, <i64 2, i64 2>
  %29 = getelementptr inbounds %struct.arc, %struct.arc* %10, <2 x i64> %vec.ind.unr
  %30 = getelementptr inbounds %struct.arc, %struct.arc* %10, <2 x i64> %step.add.epil
  %31 = getelementptr inbounds %struct.arc*, %struct.arc** %12, i64 %index.unr, !sourceFile !3, !mergedLineNum !4
  %32 = bitcast %struct.arc** %31 to <2 x %struct.arc*>*
  store <2 x %struct.arc*> %29, <2 x %struct.arc*>* %32, align 16, !tbaa !28
  %33 = getelementptr inbounds %struct.arc*, %struct.arc** %31, i64 2
  %34 = bitcast %struct.arc** %33 to <2 x %struct.arc*>*
  store <2 x %struct.arc*> %30, <2 x %struct.arc*>* %34, align 16, !tbaa !28
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader893

for.body.preheader893:                            ; preds = %for.body.preheader, %middle.block
  %i.0729.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader893, %for.body
  %i.0729 = phi i64 [ %inc, %for.body ], [ %i.0729.ph, %for.body.preheader893 ]
  %arrayidx66 = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %i.0729, !sourceFile !3, !mergedLineNum !4
  %arrayidx69 = getelementptr inbounds %struct.arc*, %struct.arc** %12, i64 %i.0729, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx66, %struct.arc** %arrayidx69, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %inc = add nuw nsw i64 %i.0729, 1, !sourceFile !3, !mergedLineNum !4
  %exitcond.not = icmp eq i64 %inc, %8
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !68, !sourceFile !3, !mergedLineNum !4

for.end:                                          ; preds = %for.body, %middle.block, %if.end48
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 23, !sourceFile !3, !mergedLineNum !4
  %35 = load %struct.arc*, %struct.arc** %arcs, align 8, !tbaa !24, !sourceFile !3, !mergedLineNum !4
  %cmp71730 = icmp sgt i64 %6, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp71730, label %land.rhs, label %for.end81, !sourceFile !3, !mergedLineNum !4

land.rhs:                                         ; preds = %for.end, %for.inc78
  %i.1732 = phi i64 [ %inc79, %for.inc78 ], [ 0, %for.end ]
  %arcout.0731 = phi %struct.arc* [ %add.ptr80, %for.inc78 ], [ %35, %for.end ]
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %arcout.0731, i64 1, i32 4, !sourceFile !3, !mergedLineNum !4
  %36 = load i16, i16* %ident, align 8, !tbaa !60, !sourceFile !3, !mergedLineNum !4
  %cmp75 = icmp eq i16 %36, -1
  br i1 %cmp75, label %for.inc78, label %for.end81, !sourceFile !3, !mergedLineNum !4

for.inc78:                                        ; preds = %land.rhs
  %inc79 = add nuw nsw i64 %i.1732, 1, !sourceFile !3, !mergedLineNum !4
  %add.ptr80 = getelementptr inbounds %struct.arc, %struct.arc* %arcout.0731, i64 3, !sourceFile !3, !mergedLineNum !4
  %exitcond795.not = icmp eq i64 %inc79, %6
  br i1 %exitcond795.not, label %while.cond222.preheader, label %land.rhs, !llvm.loop !69, !sourceFile !3, !mergedLineNum !4

for.end81:                                        ; preds = %land.rhs, %for.end
  %arcout.0.lcssa = phi %struct.arc* [ %35, %for.end ], [ %arcout.0731, %land.rhs ]
  %i.1.lcssa = phi i64 [ 0, %for.end ], [ %i.1732, %land.rhs ]
  %flow12.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 0, i32 7
  %id22.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 0, i32 0
  %37 = bitcast %struct.arc* %10 to i8*
  %sub125 = add i64 %0, -15
  %cmp83759 = icmp slt i64 %i.1.lcssa, %6, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp83759, label %for.body85, label %while.cond222.preheader, !sourceFile !3, !mergedLineNum !4

for.body85:                                       ; preds = %for.end81, %for.inc208
  %38 = phi i64 [ %92, %for.inc208 ], [ 0, %for.end81 ]
  %39 = phi i64 [ %93, %for.inc208 ], [ 0, %for.end81 ]
  %i.2769 = phi i64 [ %inc209, %for.inc208 ], [ %i.1.lcssa, %for.end81 ]
  %id.0768 = phi i64 [ %id.2, %for.inc208 ], [ 0, %for.end81 ]
  %list_size.0767 = phi i64 [ %list_size.1, %for.inc208 ], [ -1, %for.end81 ]
  %first_replace.0766 = phi i16 [ %first_replace.5, %for.inc208 ], [ 1, %for.end81 ]
  %local_first_replace.0765 = phi i16 [ %local_first_replace.5, %for.inc208 ], [ 1, %for.end81 ]
  %arcout.1763 = phi %struct.arc* [ %add.ptr210, %for.inc208 ], [ %arcout.0.lcssa, %for.end81 ]
  %count.0762 = phi i64 [ %count.5, %for.inc208 ], [ 0, %for.end81 ]
  %first_list_elem.0761 = phi %struct.list_elem* [ %first_list_elem.1, %for.inc208 ], [ null, %for.end81 ]
  %max_redcost.0760 = phi i64 [ %max_redcost.2, %for.inc208 ], [ 0, %for.end81 ]
  %tobool86.not = icmp eq i16 %first_replace.0766, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool86.not, label %if.end88.loopexit, label %if.end88, !sourceFile !3, !mergedLineNum !4

if.end88.loopexit:                                ; preds = %for.body85
  %40 = load %struct.arc*, %struct.arc** %12, align 16, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %flow.i = getelementptr inbounds %struct.arc, %struct.arc* %40, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  %41 = load i64, i64* %flow.i, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp2.i = icmp sgt i64 %41, 0, !sourceFile !3, !mergedLineNum !4
  %merged.select.i = select i1 %cmp2.i, i64 %41, i64 0
  br label %if.end88

if.end88:                                         ; preds = %if.end88.loopexit, %for.body85
  %max_redcost.1 = phi i64 [ %max_redcost.0760, %for.body85 ], [ %merged.select.i, %if.end88.loopexit ]
  %rem = urem i64 %i.2769, %.
  %cmp89 = icmp eq i64 %rem, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp89, label %calculate_max_redcost.exit646, label %if.end100, !sourceFile !3, !mergedLineNum !4

calculate_max_redcost.exit646:                    ; preds = %if.end88
  %42 = load %struct.arc*, %struct.arc** %12, align 16, !tbaa !28, !sourceFile !3, !mergedLineNum !4
  %flow.i640 = getelementptr inbounds %struct.arc, %struct.arc* %42, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  %43 = load i64, i64* %flow.i640, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp2.i641 = icmp sgt i64 %43, 0, !sourceFile !3, !mergedLineNum !4
  %merged.select.i642 = select i1 %cmp2.i641, i64 %43, i64 0
  br i1 %tobool86.not, label %if.then93, label %if.end100, !sourceFile !3, !mergedLineNum !4

if.then93:                                        ; preds = %calculate_max_redcost.exit646
  %cmp2.i648 = icmp slt i64 %count.0762, %9, !sourceFile !3, !mergedLineNum !4
  %moved.sel.i = select i1 %cmp2.i648, i64 %count.0762, i64 %9
  %cmp680.i = icmp sgt i64 %moved.sel.i, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp680.i, label %for.body8.i, label %if.end100, !sourceFile !3, !mergedLineNum !4

for.body8.i:                                      ; preds = %if.then93, %for.inc.i
  %h.083.i = phi i64 [ %inc29.i, %for.inc.i ], [ 0, %if.then93 ]
  %arrayidx10.i = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %h.083.i, !sourceFile !3, !mergedLineNum !4
  %ident.i = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %h.083.i, i32 4, !sourceFile !3, !mergedLineNum !4
  %44 = load i16, i16* %ident.i, align 8, !tbaa !60, !sourceFile !3, !mergedLineNum !4
  %tobool.not.i = icmp eq i16 %44, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.inc.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true.i:                                  ; preds = %for.body8.i
  %flow.i650 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %h.083.i, i32 7, !sourceFile !3, !mergedLineNum !4
  %45 = load i64, i64* %flow.i650, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %46 = load i64, i64* %flow12.i, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp13.i = icmp slt i64 %45, %46, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp13.i, label %land.lhs.true.if.then_crit_edge.i, label %lor.lhs.false.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true.if.then_crit_edge.i:                ; preds = %land.lhs.true.i
  %copy.sroa.0.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx10.i, i64 0, i32 0
  %copy.sroa.0.0.copyload.pre.i = load i32, i32* %copy.sroa.0.0..sroa_idx.phi.trans.insert.i, align 8, !tbaa.struct !25
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %cmp18.i = icmp eq i64 %45, %46, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp18.i, label %land.lhs.true20.i, label %for.inc.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true20.i:                                ; preds = %lor.lhs.false.i
  %id.i = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx10.i, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %47 = load i32, i32* %id.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %48 = load i32, i32* %id22.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp23.i = icmp slt i32 %47, %48, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp23.i, label %if.then.i, label %for.inc.i, !sourceFile !3, !mergedLineNum !4

if.then.i:                                        ; preds = %land.lhs.true20.i, %land.lhs.true.if.then_crit_edge.i
  %copy.sroa.0.0.copyload.i = phi i32 [ %copy.sroa.0.0.copyload.pre.i, %land.lhs.true.if.then_crit_edge.i ], [ %47, %land.lhs.true20.i ]
  %49 = bitcast %struct.arc* %arrayidx10.i to i8*, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.436.0..sroa_idx37.i = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %h.083.i, i32 1, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.436.0.copyload.i = load i64, i64* %copy.sroa.436.0..sroa_idx37.i, align 8, !tbaa.struct !61, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.5.0..sroa_idx39.i = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %h.083.i, i32 2, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.5.0.copyload.i = load %struct.node*, %struct.node** %copy.sroa.5.0..sroa_idx39.i, align 8, !tbaa.struct !62, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.6.0..sroa_idx41.i = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %h.083.i, i32 3, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.6.0.copyload.i = load %struct.node*, %struct.node** %copy.sroa.6.0..sroa_idx41.i, align 8, !tbaa.struct !63, !sourceFile !3, !mergedLineNum !4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %49, i8* noundef nonnull align 8 dereferenceable(72) %37, i64 72, i1 false) #14, !tbaa.struct !25, !sourceFile !3, !mergedLineNum !4
  %conv28.i = sext i32 %copy.sroa.0.0.copyload.i to i64, !sourceFile !3, !mergedLineNum !4
  tail call void @replace_weaker_arc(%struct.arc* nonnull %10, %struct.node* %copy.sroa.5.0.copyload.i, %struct.node* %copy.sroa.6.0.copyload.i, i64 %copy.sroa.436.0.copyload.i, i64 %45, i64 %8, i64 %conv28.i) #14, !sourceFile !3, !mergedLineNum !4
  br label %for.inc.i, !sourceFile !3, !mergedLineNum !4

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true20.i, %lor.lhs.false.i, %for.body8.i
  %inc29.i = add nuw nsw i64 %h.083.i, 1, !sourceFile !3, !mergedLineNum !4
  %exitcond.not.i652 = icmp eq i64 %inc29.i, %moved.sel.i
  br i1 %exitcond.not.i652, label %if.end100, label %for.body8.i, !llvm.loop !64, !sourceFile !3, !mergedLineNum !4

if.end100:                                        ; preds = %for.inc.i, %if.then93, %calculate_max_redcost.exit646, %if.end88
  %50 = phi i64 [ %38, %calculate_max_redcost.exit646 ], [ %38, %if.end88 ], [ 0, %if.then93 ], [ 0, %for.inc.i ]
  %max_redcost.2 = phi i64 [ %merged.select.i642, %calculate_max_redcost.exit646 ], [ %max_redcost.1, %if.end88 ], [ %merged.select.i642, %if.then93 ], [ %merged.select.i642, %for.inc.i ]
  %count.1 = phi i64 [ %count.0762, %calculate_max_redcost.exit646 ], [ %count.0762, %if.end88 ], [ 0, %if.then93 ], [ 0, %for.inc.i ], !sourceFile !3, !mergedLineNum !4
  %ident102 = getelementptr inbounds %struct.arc, %struct.arc* %arcout.1763, i64 1, i32 4, !sourceFile !3, !mergedLineNum !4
  %51 = load i16, i16* %ident102, align 8, !tbaa !60, !sourceFile !3, !mergedLineNum !4
  %cmp104.not = icmp eq i16 %51, -1
  br i1 %cmp104.not, label %if.end111, label %if.then106, !sourceFile !3, !mergedLineNum !4

if.then106:                                       ; preds = %if.end100
  %arrayidx101 = getelementptr inbounds %struct.arc, %struct.arc* %arcout.1763, i64 1, !sourceFile !3, !mergedLineNum !4
  %call107 = tail call noalias align 16 dereferenceable_or_null(16) i8* @calloc(i64 1, i64 16) #14, !sourceFile !3, !mergedLineNum !4
  %52 = bitcast i8* %call107 to %struct.list_elem*, !sourceFile !3, !mergedLineNum !4
  %next = getelementptr inbounds %struct.list_elem, %struct.list_elem* %52, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  store %struct.list_elem* %first_list_elem.0761, %struct.list_elem** %next, align 8, !tbaa !70, !sourceFile !3, !mergedLineNum !4
  %arc109 = getelementptr inbounds %struct.list_elem, %struct.list_elem* %52, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx101, %struct.arc** %arc109, align 16, !tbaa !72, !sourceFile !3, !mergedLineNum !4
  %inc110 = add nsw i64 %list_size.0767, 1, !sourceFile !3, !mergedLineNum !4
  br label %if.end111, !sourceFile !3, !mergedLineNum !4

if.end111:                                        ; preds = %if.then106, %if.end100
  %first_list_elem.1 = phi %struct.list_elem* [ %52, %if.then106 ], [ %first_list_elem.0761, %if.end100 ], !sourceFile !3, !mergedLineNum !4
  %list_size.1 = phi i64 [ %inc110, %if.then106 ], [ %list_size.0767, %if.end100 ], !sourceFile !3, !mergedLineNum !4
  %ident112 = getelementptr inbounds %struct.arc, %struct.arc* %arcout.1763, i64 0, i32 4, !sourceFile !3, !mergedLineNum !4
  %53 = load i16, i16* %ident112, align 8, !tbaa !60, !sourceFile !3, !mergedLineNum !4
  %cmp114 = icmp eq i16 %53, -1
  br i1 %cmp114, label %if.then120, label %if.end122, !sourceFile !3, !mergedLineNum !4

if.then120:                                       ; preds = %if.end111
  %add121 = add nsw i64 %list_size.1, %id.0768, !sourceFile !3, !mergedLineNum !4
  br label %for.inc208, !sourceFile !3, !mergedLineNum !4

if.end122:                                        ; preds = %if.end111
  %head123 = getelementptr inbounds %struct.arc, %struct.arc* %arcout.1763, i64 0, i32 3, !sourceFile !3, !mergedLineNum !4
  %54 = load %struct.node*, %struct.node** %head123, align 8, !tbaa !54, !sourceFile !3, !mergedLineNum !4
  %time = getelementptr inbounds %struct.node, %struct.node* %54, i64 0, i32 13, !sourceFile !3, !mergedLineNum !4
  %55 = load i32, i32* %time, align 4, !tbaa !73, !sourceFile !3, !mergedLineNum !4
  %conv124 = sext i32 %55 to i64, !sourceFile !3, !mergedLineNum !4
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %arcout.1763, i64 0, i32 8, !sourceFile !3, !mergedLineNum !4
  %56 = load i64, i64* %org_cost, align 8, !tbaa !55, !sourceFile !3, !mergedLineNum !4
  %sub = sub i64 %sub125, %56
  %add126 = add i64 %sub, %conv124, !sourceFile !3, !mergedLineNum !4
  %potential = getelementptr inbounds %struct.node, %struct.node* %54, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %next127 = getelementptr inbounds %struct.list_elem, %struct.list_elem* %first_list_elem.1, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %iterator.0736748 = load %struct.list_elem*, %struct.list_elem** %next127, align 8, !tbaa !70
  %tobool128.not737749 = icmp eq %struct.list_elem* %iterator.0736748, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool128.not737749, label %for.inc208, label %while.body.lr.ph, !sourceFile !3, !mergedLineNum !4

while.body.lr.ph:                                 ; preds = %if.end122, %if.end205
  %57 = phi i64 [ %90, %if.end205 ], [ %50, %if.end122 ]
  %58 = phi i64 [ %91, %if.end205 ], [ %39, %if.end122 ]
  %iterator.0736754 = phi %struct.list_elem* [ %iterator.0736, %if.end205 ], [ %iterator.0736748, %if.end122 ]
  %id.1.ph753 = phi i64 [ %inc207, %if.end205 ], [ %id.0768, %if.end122 ]
  %first_replace.1.ph752 = phi i16 [ %first_replace.4, %if.end205 ], [ %first_replace.0766, %if.end122 ]
  %local_first_replace.1.ph751 = phi i16 [ %local_first_replace.4, %if.end205 ], [ %local_first_replace.0765, %if.end122 ]
  %count.2.ph750 = phi i64 [ %count.4, %if.end205 ], [ %count.1, %if.end122 ]
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.then137
  %iterator.0739 = phi %struct.list_elem* [ %iterator.0736754, %while.body.lr.ph ], [ %iterator.0, %if.then137 ]
  %id.1738 = phi i64 [ %id.1.ph753, %while.body.lr.ph ], [ %inc139, %if.then137 ]
  %arc129 = getelementptr inbounds %struct.list_elem, %struct.list_elem* %iterator.0739, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %59 = load %struct.arc*, %struct.arc** %arc129, align 8, !tbaa !72, !sourceFile !3, !mergedLineNum !4
  %tail130 = getelementptr inbounds %struct.arc, %struct.arc* %59, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %60 = load %struct.node*, %struct.node** %tail130, align 8, !tbaa !53, !sourceFile !3, !mergedLineNum !4
  %time131 = getelementptr inbounds %struct.node, %struct.node* %60, i64 0, i32 13, !sourceFile !3, !mergedLineNum !4
  %61 = load i32, i32* %time131, align 4, !tbaa !73, !sourceFile !3, !mergedLineNum !4
  %conv132 = sext i32 %61 to i64, !sourceFile !3, !mergedLineNum !4
  %org_cost133 = getelementptr inbounds %struct.arc, %struct.arc* %59, i64 0, i32 8, !sourceFile !3, !mergedLineNum !4
  %62 = load i64, i64* %org_cost133, align 8, !tbaa !55, !sourceFile !3, !mergedLineNum !4
  %add134 = add nsw i64 %62, %conv132, !sourceFile !3, !mergedLineNum !4
  %cmp135 = icmp sgt i64 %add134, %add126, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp135, label %if.then137, label %if.end140, !sourceFile !3, !mergedLineNum !4

if.then137:                                       ; preds = %while.body
  %next138 = getelementptr inbounds %struct.list_elem, %struct.list_elem* %iterator.0739, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %inc139 = add nsw i64 %id.1738, 1, !sourceFile !3, !mergedLineNum !4
  %iterator.0 = load %struct.list_elem*, %struct.list_elem** %next138, align 8, !tbaa !70
  %tobool128.not = icmp eq %struct.list_elem* %iterator.0, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool128.not, label %for.inc208, label %while.body, !llvm.loop !74, !sourceFile !3, !mergedLineNum !4

if.end140:                                        ; preds = %while.body
  %potential141 = getelementptr inbounds %struct.node, %struct.node* %60, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %63 = load i64, i64* %potential141, align 8, !tbaa !75, !sourceFile !3, !mergedLineNum !4
  %sub142 = sub nsw i64 30, %63, !sourceFile !3, !mergedLineNum !4
  %64 = load i64, i64* %potential, align 8, !tbaa !75, !sourceFile !3, !mergedLineNum !4
  %add144 = add nsw i64 %sub142, %64, !sourceFile !3, !mergedLineNum !4
  %cmp145 = icmp slt i64 %add144, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp145, label %if.then147, label %if.end205, !sourceFile !3, !mergedLineNum !4

if.then147:                                       ; preds = %if.end140
  %cmp150 = icmp slt i64 %58, %8, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp150, label %if.then152, label %if.else159, !sourceFile !3, !mergedLineNum !4

if.then152:                                       ; preds = %if.then147
  %tail1.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %58, i32 2, !sourceFile !3, !mergedLineNum !4
  store %struct.node* %60, %struct.node** %tail1.i, align 8, !tbaa !53, !sourceFile !3, !mergedLineNum !4
  %head3.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %58, i32 3, !sourceFile !3, !mergedLineNum !4
  store %struct.node* %54, %struct.node** %head3.i, align 8, !tbaa !54, !sourceFile !3, !mergedLineNum !4
  %org_cost.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %58, i32 8, !sourceFile !3, !mergedLineNum !4
  store i64 30, i64* %org_cost.i, align 8, !tbaa !55, !sourceFile !3, !mergedLineNum !4
  %cost6.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %58, i32 1, !sourceFile !3, !mergedLineNum !4
  store i64 30, i64* %cost6.i, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %flow.i653 = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %58, i32 7, !sourceFile !3, !mergedLineNum !4
  store i64 %add144, i64* %flow.i653, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %conv.i = trunc i64 %id.1738 to i32, !sourceFile !3, !mergedLineNum !4
  %id.i654 = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %58, i32 0, !sourceFile !3, !mergedLineNum !4
  store i32 %conv.i, i32* %id.i654, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %tobool.not134.i = icmp eq i64 %58, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not134.i, label %insert_new_arc.exit, label %land.rhs.preheader.i, !sourceFile !3, !mergedLineNum !4

land.rhs.preheader.i:                             ; preds = %if.then152
  %add.i = add nsw i64 %58, 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i, %land.rhs.preheader.i
  %sub136.i = phi i64 [ %sub9.i, %while.body.i ], [ %58, %land.rhs.preheader.i ]
  %pos.0135.i = phi i64 [ %div.i, %while.body.i ], [ %add.i, %land.rhs.preheader.i ]
  %div.i = sdiv i64 %pos.0135.i, 2, !sourceFile !3, !mergedLineNum !4
  %sub9.i = add nsw i64 %div.i, -1
  %flow11.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %sub9.i, i32 7, !sourceFile !3, !mergedLineNum !4
  %65 = load i64, i64* %flow11.i, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp.i = icmp slt i64 %65, %add144, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i, label %while.body.i, label %insert_new_arc.exit, !sourceFile !3, !mergedLineNum !4

while.body.i:                                     ; preds = %land.rhs.i
  %tail16.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %sub9.i, i32 2, !sourceFile !3, !mergedLineNum !4
  %tail19.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %sub136.i, i32 2, !sourceFile !3, !mergedLineNum !4
  %head23.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %sub9.i, i32 3, !sourceFile !3, !mergedLineNum !4
  %66 = bitcast %struct.node** %tail16.i to <2 x %struct.node*>*
  %67 = load <2 x %struct.node*>, <2 x %struct.node*>* %66, align 8, !tbaa !28
  %68 = bitcast %struct.node** %tail19.i to <2 x %struct.node*>*
  store <2 x %struct.node*> %67, <2 x %struct.node*>* %68, align 8, !tbaa !28
  %cost30.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %sub9.i, i32 1, !sourceFile !3, !mergedLineNum !4
  %69 = load i64, i64* %cost30.i, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %cost33.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %sub136.i, i32 1, !sourceFile !3, !mergedLineNum !4
  store i64 %69, i64* %cost33.i, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %70 = load i64, i64* %cost30.i, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %org_cost40.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %sub136.i, i32 8, !sourceFile !3, !mergedLineNum !4
  store i64 %70, i64* %org_cost40.i, align 8, !tbaa !55, !sourceFile !3, !mergedLineNum !4
  %flow47.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %sub136.i, i32 7, !sourceFile !3, !mergedLineNum !4
  store i64 %65, i64* %flow47.i, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %id51.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %sub9.i, i32 0, !sourceFile !3, !mergedLineNum !4
  %71 = load i32, i32* %id51.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %id54.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %sub136.i, i32 0, !sourceFile !3, !mergedLineNum !4
  store i32 %71, i32* %id54.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  store %struct.node* %60, %struct.node** %tail16.i, align 8, !tbaa !53, !sourceFile !3, !mergedLineNum !4
  store %struct.node* %54, %struct.node** %head23.i, align 8, !tbaa !54, !sourceFile !3, !mergedLineNum !4
  store i64 30, i64* %cost30.i, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !4
  %org_cost67.i = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %sub9.i, i32 8, !sourceFile !3, !mergedLineNum !4
  store i64 30, i64* %org_cost67.i, align 8, !tbaa !55, !sourceFile !3, !mergedLineNum !4
  store i64 %add144, i64* %flow11.i, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  store i32 %conv.i, i32* %id51.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %tobool.not.i655 = icmp eq i64 %sub9.i, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not.i655, label %insert_new_arc.exit, label %land.rhs.i, !llvm.loop !57, !sourceFile !3, !mergedLineNum !4

insert_new_arc.exit:                              ; preds = %land.rhs.i, %while.body.i, %if.then152
  %inc158.pre-phi = phi i64 [ 1, %if.then152 ], [ %add.i, %while.body.i ], [ %add.i, %land.rhs.i ]
  store i64 %inc158.pre-phi, i64* %1, align 16, !tbaa !27, !sourceFile !3, !mergedLineNum !4
  br label %if.end196, !sourceFile !3, !mergedLineNum !4

if.else159:                                       ; preds = %if.then147
  %72 = load i64, i64* %flow12.i, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp161 = icmp sgt i64 %72, %add144, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp161, label %if.end166, label %if.else177, !sourceFile !3, !mergedLineNum !4

if.end166:                                        ; preds = %if.else159
  %tobool164.not = icmp eq i16 %local_first_replace.1.ph751, 0, !sourceFile !3, !mergedLineNum !4
  %moved.sel598 = select i1 %tobool164.not, i16 %first_replace.1.ph752, i16 0
  %arrayidx171 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %57, !sourceFile !3, !mergedLineNum !4
  %73 = bitcast %struct.arc* %arrayidx171 to i8*, !sourceFile !3, !mergedLineNum !4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %73, i8* noundef nonnull align 8 dereferenceable(72) %37, i64 72, i1 false), !tbaa.struct !25, !sourceFile !3, !mergedLineNum !4
  %inc175 = add nsw i64 %57, 1, !sourceFile !3, !mergedLineNum !4
  %inc176 = add nsw i64 %count.2.ph750, 1, !sourceFile !3, !mergedLineNum !4
  tail call void @replace_weaker_arc(%struct.arc* nonnull %10, %struct.node* nonnull %60, %struct.node* nonnull %54, i64 30, i64 %add144, i64 %8, i64 %id.1738), !sourceFile !3, !mergedLineNum !4
  br label %if.end196, !sourceFile !3, !mergedLineNum !4

if.else177:                                       ; preds = %if.else159
  %cmp178 = icmp slt i64 %add144, %max_redcost.2, !sourceFile !3, !mergedLineNum !4
  %74 = zext i1 %cmp178 to i64
  %merged.select = add nsw i64 %57, %74
  %75 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %57, i32 2, !sourceFile !3, !mergedLineNum !35
  %76 = load %struct.node*, %struct.node** %75, align 8
  %merged.select612 = select i1 %cmp178, %struct.node* %60, %struct.node* %76
  store %struct.node* %merged.select612, %struct.node** %75, align 8, !tbaa !53, !sourceFile !3, !mergedLineNum !35
  %77 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %57, i32 3, !sourceFile !3, !mergedLineNum !35
  %78 = load %struct.node*, %struct.node** %77, align 8
  %merged.select613 = select i1 %cmp178, %struct.node* %54, %struct.node* %78
  store %struct.node* %merged.select613, %struct.node** %77, align 8, !tbaa !54, !sourceFile !3, !mergedLineNum !35
  %79 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %57, i32 8, !sourceFile !3, !mergedLineNum !35
  %80 = load i64, i64* %79, align 8
  %merged.select614 = select i1 %cmp178, i64 30, i64 %80
  store i64 %merged.select614, i64* %79, align 8, !tbaa !55, !sourceFile !3, !mergedLineNum !35
  %81 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %57, i32 1, !sourceFile !3, !mergedLineNum !35
  %82 = load i64, i64* %81, align 8
  %merged.select615 = select i1 %cmp178, i64 30, i64 %82
  store i64 %merged.select615, i64* %81, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !35
  %83 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %57, i32 7, !sourceFile !3, !mergedLineNum !35
  %84 = load i64, i64* %83, align 8
  %merged.select616 = select i1 %cmp178, i64 %add144, i64 %84
  store i64 %merged.select616, i64* %83, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !35
  %85 = trunc i64 %id.1738 to i32, !sourceFile !3, !mergedLineNum !35
  %86 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %57, i32 0, !sourceFile !3, !mergedLineNum !35
  %87 = load i32, i32* %86, align 4
  %merged.select617 = select i1 %cmp178, i32 %85, i32 %87
  store i32 %merged.select617, i32* %86, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !35
  %moved.sel619 = add nsw i64 %count.2.ph750, %74
  br label %if.end196

if.end196:                                        ; preds = %if.else177, %if.end166, %insert_new_arc.exit
  %88 = phi i64 [ %57, %insert_new_arc.exit ], [ %inc175, %if.end166 ], [ %merged.select, %if.else177 ]
  %89 = phi i64 [ %inc158.pre-phi, %insert_new_arc.exit ], [ %58, %if.end166 ], [ %58, %if.else177 ]
  %count.3 = phi i64 [ %count.2.ph750, %insert_new_arc.exit ], [ %inc176, %if.end166 ], [ %moved.sel619, %if.else177 ], !sourceFile !3, !mergedLineNum !4
  %local_first_replace.3 = phi i16 [ %local_first_replace.1.ph751, %insert_new_arc.exit ], [ 0, %if.end166 ], [ %local_first_replace.1.ph751, %if.else177 ], !sourceFile !3, !mergedLineNum !4
  %first_replace.3 = phi i16 [ %first_replace.1.ph752, %insert_new_arc.exit ], [ %moved.sel598, %if.end166 ], [ %first_replace.1.ph752, %if.else177 ], !sourceFile !3, !mergedLineNum !4
  %cmp199 = icmp eq i64 %88, %9, !sourceFile !3, !mergedLineNum !4
  %merged.select623 = select i1 %cmp199, i64 0, i64 %88
  br label %if.end205

if.end205:                                        ; preds = %if.end196, %if.end140
  %90 = phi i64 [ %merged.select623, %if.end196 ], [ %57, %if.end140 ]
  %91 = phi i64 [ %89, %if.end196 ], [ %58, %if.end140 ]
  %count.4 = phi i64 [ %count.3, %if.end196 ], [ %count.2.ph750, %if.end140 ], !sourceFile !3, !mergedLineNum !4
  %local_first_replace.4 = phi i16 [ %local_first_replace.3, %if.end196 ], [ %local_first_replace.1.ph751, %if.end140 ], !sourceFile !3, !mergedLineNum !4
  %first_replace.4 = phi i16 [ %first_replace.3, %if.end196 ], [ %first_replace.1.ph752, %if.end140 ], !sourceFile !3, !mergedLineNum !4
  %next206 = getelementptr inbounds %struct.list_elem, %struct.list_elem* %iterator.0739, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %inc207 = add nsw i64 %id.1738, 1, !sourceFile !3, !mergedLineNum !4
  %iterator.0736 = load %struct.list_elem*, %struct.list_elem** %next206, align 8, !tbaa !70
  %tobool128.not737 = icmp eq %struct.list_elem* %iterator.0736, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool128.not737, label %for.inc208, label %while.body.lr.ph, !llvm.loop !74, !sourceFile !3, !mergedLineNum !4

for.inc208:                                       ; preds = %if.end205, %if.then137, %if.end122, %if.then120
  %92 = phi i64 [ %50, %if.then120 ], [ %50, %if.end122 ], [ %57, %if.then137 ], [ %90, %if.end205 ]
  %93 = phi i64 [ %39, %if.then120 ], [ %39, %if.end122 ], [ %58, %if.then137 ], [ %91, %if.end205 ]
  %count.5 = phi i64 [ %count.1, %if.then120 ], [ %count.1, %if.end122 ], [ %count.2.ph750, %if.then137 ], [ %count.4, %if.end205 ], !sourceFile !3, !mergedLineNum !4
  %local_first_replace.5 = phi i16 [ %local_first_replace.0765, %if.then120 ], [ %local_first_replace.0765, %if.end122 ], [ %local_first_replace.1.ph751, %if.then137 ], [ %local_first_replace.4, %if.end205 ], !sourceFile !3, !mergedLineNum !4
  %first_replace.5 = phi i16 [ %first_replace.0766, %if.then120 ], [ %first_replace.0766, %if.end122 ], [ %first_replace.1.ph752, %if.then137 ], [ %first_replace.4, %if.end205 ], !sourceFile !3, !mergedLineNum !4
  %id.2 = phi i64 [ %add121, %if.then120 ], [ %id.0768, %if.end122 ], [ %inc139, %if.then137 ], [ %inc207, %if.end205 ], !sourceFile !3, !mergedLineNum !4
  %inc209 = add i64 %i.2769, 1, !sourceFile !3, !mergedLineNum !4
  %add.ptr210 = getelementptr inbounds %struct.arc, %struct.arc* %arcout.1763, i64 3, !sourceFile !3, !mergedLineNum !4
  %exitcond796.not = icmp eq i64 %inc209, %6
  br i1 %exitcond796.not, label %for.end211, label %for.body85, !llvm.loop !76, !sourceFile !3, !mergedLineNum !4

for.end211:                                       ; preds = %for.inc208
  %cmp2.i661 = icmp slt i64 %count.5, %9
  %moved.sel.i662 = select i1 %cmp2.i661, i64 %count.5, i64 %9
  %cmp680.i663 = icmp sgt i64 %moved.sel.i662, 0
  %tobool215.not773 = icmp ne i16 %first_replace.5, 0, !sourceFile !3, !mergedLineNum !4
  %cmp680.i663.not = xor i1 %cmp680.i663, true
  %brmerge = select i1 %tobool215.not773, i1 true, i1 %cmp680.i663.not
  br i1 %brmerge, label %while.cond222.preheader, label %for.body8.i670.preheader, !sourceFile !3, !mergedLineNum !4

for.body8.i670.preheader:                         ; preds = %for.end211
  %cmp680.i663.not836 = xor i1 %cmp680.i663, true
  br label %for.body8.i670

while.cond222.preheader:                          ; preds = %for.inc78, %switch_arcs.exit701, %for.end211, %for.end81
  %first_list_elem.0.lcssa815 = phi %struct.list_elem* [ %first_list_elem.1, %for.end211 ], [ null, %for.end81 ], [ %first_list_elem.1, %switch_arcs.exit701 ], [ null, %for.inc78 ]
  %next223774 = getelementptr inbounds %struct.list_elem, %struct.list_elem* %first_list_elem.0.lcssa815, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %94 = load %struct.list_elem*, %struct.list_elem** %next223774, align 8, !tbaa !70, !sourceFile !3, !mergedLineNum !4
  %tobool224.not775 = icmp eq %struct.list_elem* %94, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool224.not775, label %while.end227, label %while.body225, !sourceFile !3, !mergedLineNum !4

for.body8.i670:                                   ; preds = %for.body8.i670.backedge, %for.body8.i670.preheader
  %h.083.i665 = phi i64 [ 0, %for.body8.i670.preheader ], [ %h.083.i665.be, %for.body8.i670.backedge ]
  %count.181.i666 = phi i64 [ 0, %for.body8.i670.preheader ], [ %count.181.i666.be, %for.body8.i670.backedge ]
  %arrayidx10.i667 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %h.083.i665, !sourceFile !3, !mergedLineNum !4
  %ident.i668 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %h.083.i665, i32 4, !sourceFile !3, !mergedLineNum !4
  %95 = load i16, i16* %ident.i668, align 8, !tbaa !60, !sourceFile !3, !mergedLineNum !4
  %tobool.not.i669 = icmp eq i16 %95, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not.i669, label %land.lhs.true.i673, label %for.inc.i695, !sourceFile !3, !mergedLineNum !4

land.lhs.true.i673:                               ; preds = %for.body8.i670
  %flow.i671 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %h.083.i665, i32 7, !sourceFile !3, !mergedLineNum !4
  %96 = load i64, i64* %flow.i671, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %97 = load i64, i64* %flow12.i, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp13.i672 = icmp slt i64 %96, %97, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp13.i672, label %land.lhs.true.if.then_crit_edge.i676, label %lor.lhs.false.i678, !sourceFile !3, !mergedLineNum !4

land.lhs.true.if.then_crit_edge.i676:             ; preds = %land.lhs.true.i673
  %copy.sroa.0.0..sroa_idx.phi.trans.insert.i674 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx10.i667, i64 0, i32 0
  %copy.sroa.0.0.copyload.pre.i675 = load i32, i32* %copy.sroa.0.0..sroa_idx.phi.trans.insert.i674, align 8, !tbaa.struct !25
  br label %if.then.i691

lor.lhs.false.i678:                               ; preds = %land.lhs.true.i673
  %cmp18.i677 = icmp eq i64 %96, %97, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp18.i677, label %land.lhs.true20.i681, label %for.inc.i695, !sourceFile !3, !mergedLineNum !4

land.lhs.true20.i681:                             ; preds = %lor.lhs.false.i678
  %id.i679 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx10.i667, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %98 = load i32, i32* %id.i679, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %99 = load i32, i32* %id22.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp23.i680 = icmp slt i32 %98, %99, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp23.i680, label %if.then.i691, label %for.inc.i695, !sourceFile !3, !mergedLineNum !4

if.then.i691:                                     ; preds = %land.lhs.true20.i681, %land.lhs.true.if.then_crit_edge.i676
  %copy.sroa.0.0.copyload.i682 = phi i32 [ %copy.sroa.0.0.copyload.pre.i675, %land.lhs.true.if.then_crit_edge.i676 ], [ %98, %land.lhs.true20.i681 ]
  %100 = bitcast %struct.arc* %arrayidx10.i667 to i8*, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.436.0..sroa_idx37.i683 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %h.083.i665, i32 1, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.436.0.copyload.i684 = load i64, i64* %copy.sroa.436.0..sroa_idx37.i683, align 8, !tbaa.struct !61, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.5.0..sroa_idx39.i685 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %h.083.i665, i32 2, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.5.0.copyload.i686 = load %struct.node*, %struct.node** %copy.sroa.5.0..sroa_idx39.i685, align 8, !tbaa.struct !62, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.6.0..sroa_idx41.i687 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %h.083.i665, i32 3, !sourceFile !3, !mergedLineNum !4
  %copy.sroa.6.0.copyload.i688 = load %struct.node*, %struct.node** %copy.sroa.6.0..sroa_idx41.i687, align 8, !tbaa.struct !63, !sourceFile !3, !mergedLineNum !4
  %inc.i689 = add nsw i64 %count.181.i666, 1, !sourceFile !3, !mergedLineNum !4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %100, i8* noundef nonnull align 8 dereferenceable(72) %37, i64 72, i1 false) #14, !tbaa.struct !25, !sourceFile !3, !mergedLineNum !4
  %conv28.i690 = sext i32 %copy.sroa.0.0.copyload.i682 to i64, !sourceFile !3, !mergedLineNum !4
  tail call void @replace_weaker_arc(%struct.arc* nonnull %10, %struct.node* %copy.sroa.5.0.copyload.i686, %struct.node* %copy.sroa.6.0.copyload.i688, i64 %copy.sroa.436.0.copyload.i684, i64 %96, i64 %8, i64 %conv28.i690) #14, !sourceFile !3, !mergedLineNum !4
  br label %for.inc.i695, !sourceFile !3, !mergedLineNum !4

for.inc.i695:                                     ; preds = %if.then.i691, %land.lhs.true20.i681, %lor.lhs.false.i678, %for.body8.i670
  %count.2.i692 = phi i64 [ %count.181.i666, %for.body8.i670 ], [ %inc.i689, %if.then.i691 ], [ %count.181.i666, %land.lhs.true20.i681 ], [ %count.181.i666, %lor.lhs.false.i678 ], !sourceFile !3, !mergedLineNum !4
  %inc29.i693 = add nuw nsw i64 %h.083.i665, 1, !sourceFile !3, !mergedLineNum !4
  %exitcond.not.i694 = icmp eq i64 %inc29.i693, %moved.sel.i662
  br i1 %exitcond.not.i694, label %switch_arcs.exit701, label %for.body8.i670.backedge, !sourceFile !3, !mergedLineNum !4

for.body8.i670.backedge:                          ; preds = %for.inc.i695, %switch_arcs.exit701
  %h.083.i665.be = phi i64 [ %inc29.i693, %for.inc.i695 ], [ 0, %switch_arcs.exit701 ]
  %count.181.i666.be = phi i64 [ %count.2.i692, %for.inc.i695 ], [ 0, %switch_arcs.exit701 ]
  br label %for.body8.i670, !llvm.loop !77

switch_arcs.exit701:                              ; preds = %for.inc.i695
  %tobool218.not.not = icmp eq i64 %count.2.i692, 0, !sourceFile !3, !mergedLineNum !4
  %brmerge837 = select i1 %tobool218.not.not, i1 true, i1 %cmp680.i663.not836
  br i1 %brmerge837, label %while.cond222.preheader, label %for.body8.i670.backedge, !sourceFile !3, !mergedLineNum !4

while.body225:                                    ; preds = %while.cond222.preheader, %while.body225
  %101 = phi %struct.list_elem* [ %103, %while.body225 ], [ %94, %while.cond222.preheader ]
  %first_list_elem.2776 = phi %struct.list_elem* [ %101, %while.body225 ], [ %first_list_elem.0.lcssa815, %while.cond222.preheader ]
  %102 = bitcast %struct.list_elem* %first_list_elem.2776 to i8*, !sourceFile !3, !mergedLineNum !4
  tail call void @free(i8* %102) #14, !sourceFile !3, !mergedLineNum !4
  %next223 = getelementptr inbounds %struct.list_elem, %struct.list_elem* %101, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %103 = load %struct.list_elem*, %struct.list_elem** %next223, align 8, !tbaa !70, !sourceFile !3, !mergedLineNum !4
  %tobool224.not = icmp eq %struct.list_elem* %103, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool224.not, label %while.end227, label %while.body225, !llvm.loop !78, !sourceFile !3, !mergedLineNum !4

while.end227:                                     ; preds = %while.body225, %while.cond222.preheader
  %first_list_elem.2.lcssa = phi %struct.list_elem* [ %first_list_elem.0.lcssa815, %while.cond222.preheader ], [ %101, %while.body225 ]
  %104 = bitcast %struct.list_elem* %first_list_elem.2.lcssa to i8*, !sourceFile !3, !mergedLineNum !4
  tail call void @free(i8* %104) #14, !sourceFile !3, !mergedLineNum !4
  %105 = load i8*, i8** %11, align 16, !tbaa !28
  %106 = load i64, i64* %1, align 16, !tbaa !27, !sourceFile !3, !mergedLineNum !4
  tail call void @qsort(i8* %105, i64 %106, i64 8, i32 (i8*, i8*)* bitcast (i32 (%struct.arc**, %struct.arc**)* @arc_compare to i32 (i8*, i8*)*)) #14, !sourceFile !3, !mergedLineNum !4
  %107 = load i64, i64* %n_trips, align 8, !tbaa !32, !sourceFile !3, !mergedLineNum !4
  %cmp.i702 = icmp slt i64 %107, 15001
  %108 = load i64, i64* %max_residual_new_m, align 8, !tbaa !33
  %..i = select i1 %cmp.i702, i64 -1000000, i64 -4000000
  %sub4.i = add nsw i64 %..i, %108
  %m.i = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 5, !sourceFile !3, !mergedLineNum !4
  %cmp9144.i = icmp sgt i64 %106, 0, !sourceFile !3, !mergedLineNum !4
  %cmp10145.i = icmp sgt i64 %sub4.i, 0, !sourceFile !3, !mergedLineNum !4
  %109 = select i1 %cmp9144.i, i1 %cmp10145.i, i1 false, !sourceFile !3, !mergedLineNum !4
  br i1 %109, label %while.body.lr.ph.i, label %while.end227.for.cond38.i_crit_edge, !sourceFile !3, !mergedLineNum !4

while.end227.for.cond38.i_crit_edge:              ; preds = %while.end227
  %.pre = load i64, i64* %m.i, align 8, !tbaa !34
  br label %for.cond38.i

while.body.lr.ph.i:                               ; preds = %while.end227
  %110 = bitcast i8* %105 to %struct.arc**
  %111 = load i64, i64* %m.i, align 8, !tbaa !34, !sourceFile !3, !mergedLineNum !4
  br label %while.body.i708

while.body.i708:                                  ; preds = %while.body.i708, %while.body.lr.ph.i
  %incdec.ptr150.i = phi %struct.arc** [ %110, %while.body.lr.ph.i ], [ %incdec.ptr.i, %while.body.i708 ]
  %inc37148.i = phi i64 [ 0, %while.body.lr.ph.i ], [ %inc37.i, %while.body.i708 ]
  %start_id.0147.i = phi i64 [ %111, %while.body.lr.ph.i ], [ %inc33.i, %while.body.i708 ]
  %112 = load %struct.arc*, %struct.arc** %incdec.ptr150.i, align 8, !tbaa !28, !sourceFile !3, !mergedLineNum !35
  %inc33.i = add nsw i64 %start_id.0147.i, 1, !sourceFile !3, !mergedLineNum !4
  %conv.i705 = trunc i64 %start_id.0147.i to i32, !sourceFile !3, !mergedLineNum !4
  %id.i706 = getelementptr inbounds %struct.arc, %struct.arc* %112, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  store i32 %conv.i705, i32* %id.i706, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %flow.i707 = getelementptr inbounds %struct.arc, %struct.arc* %112, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  store i64 1, i64* %flow.i707, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %inc37.i = add nuw nsw i64 %inc37148.i, 1, !sourceFile !3, !mergedLineNum !4
  %incdec.ptr.i = getelementptr inbounds %struct.arc*, %struct.arc** %incdec.ptr150.i, i64 1, !sourceFile !3, !mergedLineNum !4
  %cmp9.i = icmp slt i64 %inc37.i, %106, !sourceFile !3, !mergedLineNum !4
  %cmp10.i = icmp slt i64 %inc37.i, %sub4.i, !sourceFile !3, !mergedLineNum !4
  %113 = select i1 %cmp9.i, i1 %cmp10.i, i1 false, !sourceFile !3, !mergedLineNum !4
  br i1 %113, label %while.body.i708, label %for.cond38.i, !llvm.loop !37, !sourceFile !3, !mergedLineNum !4

for.cond38.i:                                     ; preds = %while.body.i708, %while.end227.for.cond38.i_crit_edge
  %114 = phi i64 [ %.pre, %while.end227.for.cond38.i_crit_edge ], [ %111, %while.body.i708 ]
  %115 = phi i64 [ 0, %while.end227.for.cond38.i_crit_edge ], [ %inc37.i, %while.body.i708 ]
  %max_elems.i = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 32, !sourceFile !3, !mergedLineNum !4
  store i64 4000, i64* %max_elems.i, align 8, !tbaa !38, !sourceFile !3, !mergedLineNum !4
  %add48.i = add i64 %114, %115
  %sub49.i = add i64 %add48.i, -1
  %div.i709 = sdiv i64 %sub49.i, 4000, !sourceFile !3, !mergedLineNum !4
  %add50.i = add nsw i64 %div.i709, 1, !sourceFile !3, !mergedLineNum !4
  %nr_group.i = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 30, !sourceFile !3, !mergedLineNum !4
  store i64 %add50.i, i64* %nr_group.i, align 8, !tbaa !39, !sourceFile !3, !mergedLineNum !4
  %rem.i = srem i64 %add48.i, 4000, !sourceFile !3, !mergedLineNum !4
  %cmp53.not.i = icmp eq i64 %rem.i, 0, !sourceFile !3, !mergedLineNum !4
  %sub60.neg.i = add nsw i64 %div.i709, -3999
  %sub61.i = add nsw i64 %sub60.neg.i, %rem.i
  %sub61.sink.i = select i1 %cmp53.not.i, i64 %add50.i, i64 %sub61.i
  %116 = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 31
  store i64 %sub61.sink.i, i64* %116, align 8
  %cmp68151.i = icmp slt i64 %sub61.sink.i, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp68151.i, label %while.body70.i.preheader, label %marc_arcs.exit, !sourceFile !3, !mergedLineNum !4

while.body70.i.preheader:                         ; preds = %for.cond38.i
  %117 = add nsw i64 %sub61.sink.i, %div.i709
  %118 = add nsw i64 %117, 1
  %smax = call i64 @llvm.smax.i64(i64 %118, i64 0)
  %119 = xor i64 %sub61.sink.i, -1
  %120 = add i64 %smax, %119
  %121 = sub i64 %120, %div.i709
  %122 = icmp ne i64 %121, 0
  %umin = zext i1 %122 to i64
  %123 = sub i64 %121, %umin
  %124 = udiv i64 %123, %add50.i
  %125 = add i64 %124, %umin
  %126 = add i64 %125, 1
  %min.iters.check860 = icmp ult i64 %126, 4
  br i1 %min.iters.check860, label %while.body70.i.preheader870, label %vector.ph861

vector.ph861:                                     ; preds = %while.body70.i.preheader
  %n.vec863 = and i64 %126, -4
  %127 = mul i64 %n.vec863, %add50.i
  %ind.end = add i64 %sub61.sink.i, %127
  %128 = add i64 %n.vec863, -4
  %129 = lshr exact i64 %128, 2
  %130 = add nuw nsw i64 %129, 1
  %xtraiter894 = and i64 %130, 7
  %131 = icmp ult i64 %128, 28
  br i1 %131, label %middle.block857.unr-lcssa, label %vector.ph861.new

vector.ph861.new:                                 ; preds = %vector.ph861
  %unroll_iter898 = and i64 %130, 9223372036854775800
  br label %vector.body859

vector.body859:                                   ; preds = %vector.body859, %vector.ph861.new
  %vec.phi = phi <2 x i64> [ <i64 4000, i64 0>, %vector.ph861.new ], [ %132, %vector.body859 ]
  %vec.phi868 = phi <2 x i64> [ zeroinitializer, %vector.ph861.new ], [ %133, %vector.body859 ]
  %niter899 = phi i64 [ %unroll_iter898, %vector.ph861.new ], [ %niter899.nsub.7, %vector.body859 ]
  %132 = add <2 x i64> %vec.phi, <i64 -8, i64 -8>
  %133 = add <2 x i64> %vec.phi868, <i64 -8, i64 -8>
  %niter899.nsub.7 = add i64 %niter899, -8
  %niter899.ncmp.7 = icmp eq i64 %niter899.nsub.7, 0
  br i1 %niter899.ncmp.7, label %middle.block857.unr-lcssa, label %vector.body859, !llvm.loop !79

middle.block857.unr-lcssa:                        ; preds = %vector.body859, %vector.ph861
  %.lcssa874.ph = phi <2 x i64> [ undef, %vector.ph861 ], [ %132, %vector.body859 ]
  %.lcssa.ph = phi <2 x i64> [ undef, %vector.ph861 ], [ %133, %vector.body859 ]
  %vec.phi.unr = phi <2 x i64> [ <i64 4000, i64 0>, %vector.ph861 ], [ %132, %vector.body859 ]
  %vec.phi868.unr = phi <2 x i64> [ zeroinitializer, %vector.ph861 ], [ %133, %vector.body859 ]
  %lcmp.mod895.not = icmp eq i64 %xtraiter894, 0
  br i1 %lcmp.mod895.not, label %middle.block857, label %vector.body859.epil

vector.body859.epil:                              ; preds = %middle.block857.unr-lcssa, %vector.body859.epil
  %vec.phi.epil = phi <2 x i64> [ %134, %vector.body859.epil ], [ %vec.phi.unr, %middle.block857.unr-lcssa ]
  %vec.phi868.epil = phi <2 x i64> [ %135, %vector.body859.epil ], [ %vec.phi868.unr, %middle.block857.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body859.epil ], [ %xtraiter894, %middle.block857.unr-lcssa ]
  %134 = add <2 x i64> %vec.phi.epil, <i64 -1, i64 -1>
  %135 = add <2 x i64> %vec.phi868.epil, <i64 -1, i64 -1>
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %middle.block857, label %vector.body859.epil, !llvm.loop !80

middle.block857:                                  ; preds = %vector.body859.epil, %middle.block857.unr-lcssa
  %.lcssa874 = phi <2 x i64> [ %.lcssa874.ph, %middle.block857.unr-lcssa ], [ %134, %vector.body859.epil ]
  %.lcssa = phi <2 x i64> [ %.lcssa.ph, %middle.block857.unr-lcssa ], [ %135, %vector.body859.epil ]
  %bin.rdx = add <2 x i64> %.lcssa, %.lcssa874
  %136 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %cmp.n867 = icmp eq i64 %126, %n.vec863
  br i1 %cmp.n867, label %while.cond66.while.end76_crit_edge.i, label %while.body70.i.preheader870

while.body70.i.preheader870:                      ; preds = %while.body70.i.preheader, %middle.block857
  %.ph = phi i64 [ 4000, %while.body70.i.preheader ], [ %136, %middle.block857 ]
  %.ph871 = phi i64 [ %sub61.sink.i, %while.body70.i.preheader ], [ %ind.end, %middle.block857 ]
  br label %while.body70.i

while.body70.i:                                   ; preds = %while.body70.i.preheader870, %while.body70.i
  %137 = phi i64 [ %dec.i, %while.body70.i ], [ %.ph, %while.body70.i.preheader870 ]
  %138 = phi i64 [ %add73.i, %while.body70.i ], [ %.ph871, %while.body70.i.preheader870 ]
  %add73.i = add nsw i64 %138, %add50.i, !sourceFile !3, !mergedLineNum !4
  %dec.i = add nsw i64 %137, -1, !sourceFile !3, !mergedLineNum !4
  %cmp68.i = icmp slt i64 %add73.i, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp68.i, label %while.body70.i, label %while.cond66.while.end76_crit_edge.i, !llvm.loop !81, !sourceFile !3, !mergedLineNum !4

while.cond66.while.end76_crit_edge.i:             ; preds = %while.body70.i, %middle.block857
  %add73.i.lcssa = phi i64 [ %ind.end, %middle.block857 ], [ %add73.i, %while.body70.i ]
  %dec.i.lcssa = phi i64 [ %136, %middle.block857 ], [ %dec.i, %while.body70.i ]
  store i64 %add73.i.lcssa, i64* %116, align 8, !tbaa !46
  store i64 %dec.i.lcssa, i64* %max_elems.i, align 8, !tbaa !38
  br label %marc_arcs.exit

marc_arcs.exit:                                   ; preds = %for.cond38.i, %while.cond66.while.end76_crit_edge.i
  tail call void @free(i8* %105) #14, !sourceFile !3, !mergedLineNum !4
  %tobool236.not = icmp eq i64 %106, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool236.not, label %if.end290, label %if.then237, !sourceFile !3, !mergedLineNum !4

if.then237:                                       ; preds = %marc_arcs.exit
  %139 = load %struct.arc*, %struct.arc** %stop_arcs, align 8, !tbaa !31, !sourceFile !3, !mergedLineNum !4
  %add.ptr244 = getelementptr inbounds %struct.arc, %struct.arc* %139, i64 %106, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool245.not, label %for.body268, label %for.body250, !sourceFile !3, !mergedLineNum !4

for.body250:                                      ; preds = %if.then237, %for.inc262
  %arcnew.0779 = phi %struct.arc* [ %incdec.ptr, %for.inc262 ], [ %139, %if.then237 ]
  %flow251 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.0779, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  %140 = load i64, i64* %flow251, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp252 = icmp eq i64 %140, 1, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp252, label %if.then254, label %for.inc262, !sourceFile !3, !mergedLineNum !4

if.then254:                                       ; preds = %for.body250
  store i64 0, i64* %flow251, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %ident256 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.0779, i64 0, i32 4, !sourceFile !3, !mergedLineNum !4
  store i16 1, i16* %ident256, align 8, !tbaa !60, !sourceFile !3, !mergedLineNum !4
  %id257 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.0779, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %141 = load i32, i32* %id257, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %conv258 = sext i32 %141 to i64, !sourceFile !3, !mergedLineNum !4
  %call259 = tail call i64 @getArcPosition(%struct.network* %net, i64 %conv258) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx260 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %call259, !sourceFile !3, !mergedLineNum !4
  %142 = bitcast %struct.arc* %arrayidx260 to i8*, !sourceFile !3, !mergedLineNum !4
  %143 = bitcast %struct.arc* %arcnew.0779 to i8*, !sourceFile !3, !mergedLineNum !4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %142, i8* noundef nonnull align 8 dereferenceable(72) %143, i64 72, i1 false), !tbaa.struct !25, !sourceFile !3, !mergedLineNum !4
  br label %for.inc262, !sourceFile !3, !mergedLineNum !4

for.inc262:                                       ; preds = %for.body250, %if.then254
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.0779, i64 1, !sourceFile !3, !mergedLineNum !4
  %cmp248.not = icmp eq %struct.arc* %incdec.ptr, %add.ptr244, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp248.not, label %if.end290, label %for.body250, !llvm.loop !82, !sourceFile !3, !mergedLineNum !4

for.body268:                                      ; preds = %if.then237, %for.inc286
  %arcnew.1782 = phi %struct.arc* [ %incdec.ptr287, %for.inc286 ], [ %139, %if.then237 ]
  %flow269 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1782, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  %144 = load i64, i64* %flow269, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %cmp270 = icmp eq i64 %144, 1, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp270, label %if.then272, label %for.inc286, !sourceFile !3, !mergedLineNum !4

if.then272:                                       ; preds = %for.body268
  store i64 0, i64* %flow269, align 8, !tbaa !36, !sourceFile !3, !mergedLineNum !4
  %ident274 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1782, i64 0, i32 4, !sourceFile !3, !mergedLineNum !4
  store i16 1, i16* %ident274, align 8, !tbaa !60, !sourceFile !3, !mergedLineNum !4
  %tail275 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1782, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %145 = load %struct.node*, %struct.node** %tail275, align 8, !tbaa !53
  %firstout = getelementptr inbounds %struct.node, %struct.node* %145, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  %146 = load %struct.arc*, %struct.arc** %firstout, align 8, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  %nextout = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1782, i64 0, i32 5, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %146, %struct.arc** %nextout, align 8, !tbaa !83, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arcnew.1782, %struct.arc** %firstout, align 8, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  %head278 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1782, i64 0, i32 3, !sourceFile !3, !mergedLineNum !4
  %147 = load %struct.node*, %struct.node** %head278, align 8, !tbaa !54
  %firstin = getelementptr inbounds %struct.node, %struct.node* %147, i64 0, i32 8, !sourceFile !3, !mergedLineNum !4
  %148 = load %struct.arc*, %struct.arc** %firstin, align 8, !tbaa !19, !sourceFile !3, !mergedLineNum !4
  %nextin = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1782, i64 0, i32 6, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %148, %struct.arc** %nextin, align 8, !tbaa !84, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arcnew.1782, %struct.arc** %firstin, align 8, !tbaa !19, !sourceFile !3, !mergedLineNum !4
  %id281 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1782, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %149 = load i32, i32* %id281, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %conv282 = sext i32 %149 to i64, !sourceFile !3, !mergedLineNum !4
  %call283 = tail call i64 @getArcPosition(%struct.network* %net, i64 %conv282) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx284 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %call283, !sourceFile !3, !mergedLineNum !4
  %150 = bitcast %struct.arc* %arrayidx284 to i8*, !sourceFile !3, !mergedLineNum !4
  %151 = bitcast %struct.arc* %arcnew.1782 to i8*, !sourceFile !3, !mergedLineNum !4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %150, i8* noundef nonnull align 8 dereferenceable(72) %151, i64 72, i1 false), !tbaa.struct !25, !sourceFile !3, !mergedLineNum !4
  br label %for.inc286, !sourceFile !3, !mergedLineNum !4

for.inc286:                                       ; preds = %for.body268, %if.then272
  %incdec.ptr287 = getelementptr inbounds %struct.arc, %struct.arc* %arcnew.1782, i64 1, !sourceFile !3, !mergedLineNum !4
  %cmp266.not = icmp eq %struct.arc* %incdec.ptr287, %add.ptr244, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp266.not, label %if.end290, label %for.body268, !llvm.loop !85, !sourceFile !3, !mergedLineNum !4

if.end290:                                        ; preds = %for.inc262, %for.inc286, %marc_arcs.exit
  %m_impl = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  %152 = load i64, i64* %m_impl, align 8, !tbaa !86, !sourceFile !3, !mergedLineNum !4
  %add291 = add nsw i64 %152, %115, !sourceFile !3, !mergedLineNum !4
  store i64 %add291, i64* %m_impl, align 8, !tbaa !86, !sourceFile !3, !mergedLineNum !4
  %153 = load i64, i64* %max_residual_new_m, align 8, !tbaa !33, !sourceFile !3, !mergedLineNum !4
  %sub293 = sub nsw i64 %153, %115, !sourceFile !3, !mergedLineNum !4
  store i64 %sub293, i64* %max_residual_new_m, align 8, !tbaa !33, !sourceFile !3, !mergedLineNum !4
  %154 = load i64, i64* %m.i, align 8, !tbaa !34, !sourceFile !3, !mergedLineNum !4
  %155 = load %struct.arc*, %struct.arc** %sorted_arcs, align 8, !tbaa !23, !sourceFile !3, !mergedLineNum !4
  %n.i.i = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %nodes.i.i = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 21
  %156 = load i64, i64* %n.i.i, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %cmp.not65.i.i = icmp slt i64 %156, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.not65.i.i, label %refreshArcPointers.exit.i, label %for.body.i.i, !sourceFile !3, !mergedLineNum !4

for.body.i.i:                                     ; preds = %if.end290, %for.inc.i.i
  %i.066.i.i = phi i64 [ %inc.i.i, %for.inc.i.i ], [ 0, %if.end290 ]
  %157 = load %struct.node*, %struct.node** %nodes.i.i, align 8, !tbaa !12, !sourceFile !3, !mergedLineNum !4
  %basic_arc.i.i = getelementptr inbounds %struct.node, %struct.node* %157, i64 %i.066.i.i, i32 6, !sourceFile !3, !mergedLineNum !4
  %158 = load %struct.arc*, %struct.arc** %basic_arc.i.i, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !4
  %tobool.not.i.i = icmp eq %struct.arc* %158, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %id.i.i = getelementptr inbounds %struct.arc, %struct.arc* %158, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %159 = load i32, i32* %id.i.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp2.i.i = icmp sgt i32 %159, -1
  br i1 %cmp2.i.i, label %if.then.i.i, label %if.end.i.i, !sourceFile !3, !mergedLineNum !4

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %conv64.i.i = zext i32 %159 to i64
  %call.i.i = tail call i64 @getArcPosition(%struct.network* nonnull %net, i64 %conv64.i.i) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx.i.i = getelementptr inbounds %struct.arc, %struct.arc* %155, i64 %call.i.i, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx.i.i, %struct.arc** %basic_arc.i.i, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !4
  br label %if.end.i.i, !sourceFile !3, !mergedLineNum !4

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i, %for.body.i.i
  %firstin.i.i = getelementptr inbounds %struct.node, %struct.node* %157, i64 %i.066.i.i, i32 8, !sourceFile !3, !mergedLineNum !4
  %160 = load %struct.arc*, %struct.arc** %firstin.i.i, align 8, !tbaa !19, !sourceFile !3, !mergedLineNum !4
  %tobool6.not.i.i = icmp eq %struct.arc* %160, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool6.not.i.i, label %if.end19.i.i, label %land.lhs.true7.i.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true7.i.i:                               ; preds = %if.end.i.i
  %id9.i.i = getelementptr inbounds %struct.arc, %struct.arc* %160, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %161 = load i32, i32* %id9.i.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp10.i.i = icmp sgt i32 %161, -1
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.end19.i.i, !sourceFile !3, !mergedLineNum !4

if.then12.i.i:                                    ; preds = %land.lhs.true7.i.i
  %conv1563.i.i = zext i32 %161 to i64
  %call16.i.i = tail call i64 @getArcPosition(%struct.network* nonnull %net, i64 %conv1563.i.i) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx17.i.i = getelementptr inbounds %struct.arc, %struct.arc* %155, i64 %call16.i.i, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx17.i.i, %struct.arc** %firstin.i.i, align 8, !tbaa !19, !sourceFile !3, !mergedLineNum !4
  br label %if.end19.i.i, !sourceFile !3, !mergedLineNum !4

if.end19.i.i:                                     ; preds = %if.then12.i.i, %land.lhs.true7.i.i, %if.end.i.i
  %firstout.i.i = getelementptr inbounds %struct.node, %struct.node* %157, i64 %i.066.i.i, i32 7, !sourceFile !3, !mergedLineNum !4
  %162 = load %struct.arc*, %struct.arc** %firstout.i.i, align 8, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  %tobool20.not.i.i = icmp eq %struct.arc* %162, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool20.not.i.i, label %for.inc.i.i, label %land.lhs.true21.i.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true21.i.i:                              ; preds = %if.end19.i.i
  %id23.i.i = getelementptr inbounds %struct.arc, %struct.arc* %162, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %163 = load i32, i32* %id23.i.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp24.i.i = icmp sgt i32 %163, -1
  br i1 %cmp24.i.i, label %if.then26.i.i, label %for.inc.i.i, !sourceFile !3, !mergedLineNum !4

if.then26.i.i:                                    ; preds = %land.lhs.true21.i.i
  %conv2962.i.i = zext i32 %163 to i64
  %call30.i.i = tail call i64 @getArcPosition(%struct.network* nonnull %net, i64 %conv2962.i.i) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx31.i.i = getelementptr inbounds %struct.arc, %struct.arc* %155, i64 %call30.i.i, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx31.i.i, %struct.arc** %firstout.i.i, align 8, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  br label %for.inc.i.i, !sourceFile !3, !mergedLineNum !4

for.inc.i.i:                                      ; preds = %if.then26.i.i, %land.lhs.true21.i.i, %if.end19.i.i
  %inc.i.i = add nuw nsw i64 %i.066.i.i, 1, !sourceFile !3, !mergedLineNum !4
  %164 = load i64, i64* %n.i.i, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %cmp.not.not.i.i = icmp slt i64 %i.066.i.i, %164
  br i1 %cmp.not.not.i.i, label %for.body.i.i, label %refreshArcPointers.exit.i, !llvm.loop !21, !sourceFile !3, !mergedLineNum !4

refreshArcPointers.exit.i:                        ; preds = %for.inc.i.i, %if.end290
  %cmp30.i = icmp sgt i64 %154, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp30.i, label %for.body.i711, label %refreshPositions.exit, !sourceFile !3, !mergedLineNum !4

for.body.i711:                                    ; preds = %refreshArcPointers.exit.i, %for.inc.i715
  %position.031.i = phi i64 [ %inc.i713, %for.inc.i715 ], [ 0, %refreshArcPointers.exit.i ]
  %165 = load %struct.arc*, %struct.arc** %arcs, align 8, !tbaa !24, !sourceFile !3, !mergedLineNum !4
  %add.ptr.i = getelementptr inbounds %struct.arc, %struct.arc* %165, i64 %position.031.i, !sourceFile !3, !mergedLineNum !4
  %id.i710 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr.i, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %166 = load i32, i32* %id.i710, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp1.i = icmp slt i32 %166, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp1.i, label %for.inc.i715, label %if.end.i, !sourceFile !3, !mergedLineNum !4

if.end.i:                                         ; preds = %for.body.i711
  %conv29.i = zext i32 %166 to i64
  %call3.i = tail call i64 @getArcPosition(%struct.network* nonnull %net, i64 %conv29.i) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx.i712 = getelementptr inbounds %struct.arc, %struct.arc* %155, i64 %call3.i, !sourceFile !3, !mergedLineNum !4
  %167 = bitcast %struct.arc* %arrayidx.i712 to i8*, !sourceFile !3, !mergedLineNum !4
  %168 = bitcast %struct.arc* %add.ptr.i to i8*, !sourceFile !3, !mergedLineNum !4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %167, i8* noundef nonnull align 8 dereferenceable(72) %168, i64 72, i1 false) #14, !tbaa.struct !25, !sourceFile !3, !mergedLineNum !4
  br label %for.inc.i715, !sourceFile !3, !mergedLineNum !4

for.inc.i715:                                     ; preds = %if.end.i, %for.body.i711
  %inc.i713 = add nuw nsw i64 %position.031.i, 1, !sourceFile !3, !mergedLineNum !4
  %exitcond.not.i714 = icmp eq i64 %inc.i713, %154
  br i1 %exitcond.not.i714, label %refreshPositions.exit, label %for.body.i711, !llvm.loop !30, !sourceFile !3, !mergedLineNum !4

refreshPositions.exit:                            ; preds = %for.inc.i715, %refreshArcPointers.exit.i
  %169 = load %struct.arc*, %struct.arc** %arcs, align 8, !tbaa !24, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %155, %struct.arc** %arcs, align 8, !tbaa !24, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %169, %struct.arc** %sorted_arcs, align 8, !tbaa !23, !sourceFile !3, !mergedLineNum !4
  %170 = load i64, i64* %m.i, align 8, !tbaa !34, !sourceFile !3, !mergedLineNum !4
  %add297 = add nsw i64 %170, %115, !sourceFile !3, !mergedLineNum !4
  store i64 %add297, i64* %m.i, align 8, !tbaa !34, !sourceFile !3, !mergedLineNum !4
  %add.ptr301 = getelementptr inbounds %struct.arc, %struct.arc* %155, i64 %add297, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %add.ptr301, %struct.arc** %stop_arcs, align 8, !tbaa !31, !sourceFile !3, !mergedLineNum !4
  tail call void @free(i8* %call) #14, !sourceFile !3, !mergedLineNum !4
  tail call void @free(i8* %call5) #14, !sourceFile !3, !mergedLineNum !4
  br label %cleanup, !sourceFile !3, !mergedLineNum !4

cleanup:                                          ; preds = %if.end40, %if.then34, %if.then16, %refreshPositions.exit
  %retval.0 = phi i64 [ %115, %refreshPositions.exit ], [ -1, %if.then16 ], [ -1, %if.then34 ], [ -1, %if.end40 ], !sourceFile !3, !mergedLineNum !4
  ret i64 %retval.0, !sourceFile !3, !mergedLineNum !4
}

declare dso_local void @refresh_neighbour_lists(%struct.network*, i64 (%struct.network*, i64)*) local_unnamed_addr #9

declare dso_local i64 @getOriginalArcPosition(%struct.network*, i64) #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local noalias noundef align 16 i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #11

declare dso_local i64 @getArcPosition(%struct.network*, i64) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @suspend_impl(%struct.network* %net, i64 %threshold, i64 %all) local_unnamed_addr #0 {
entry:
  %max_elems = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 32, !sourceFile !3, !mergedLineNum !4
  store i64 4000, i64* %max_elems, align 8, !tbaa !38, !sourceFile !3, !mergedLineNum !4
  %m = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 5, !sourceFile !3, !mergedLineNum !4
  %0 = load i64, i64* %m, align 8, !tbaa !34
  %sub = add nsw i64 %0, -1
  %div = sdiv i64 %sub, 4000, !sourceFile !3, !mergedLineNum !4
  %add = add nsw i64 %div, 1, !sourceFile !3, !mergedLineNum !4
  %nr_group = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 30, !sourceFile !3, !mergedLineNum !4
  store i64 %add, i64* %nr_group, align 8, !tbaa !39, !sourceFile !3, !mergedLineNum !4
  %rem = srem i64 %0, 4000, !sourceFile !3, !mergedLineNum !4
  %sub3.neg = add nsw i64 %rem, -4000
  %sub4 = add nsw i64 %sub3.neg, %add
  %full_groups = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 31, !sourceFile !3, !mergedLineNum !4
  store i64 %sub4, i64* %full_groups, align 8, !tbaa !46, !sourceFile !3, !mergedLineNum !4
  %cmp175 = icmp slt i64 %sub4, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp175, label %while.body.preheader, label %while.end, !sourceFile !3, !mergedLineNum !4

while.body.preheader:                             ; preds = %entry
  %1 = shl nsw i64 %div, 1
  %2 = add nsw i64 %rem, %1
  %3 = add nsw i64 %2, -3998
  %smax = call i64 @llvm.smax.i64(i64 %3, i64 0)
  %4 = add nuw i64 %smax, 3998
  %5 = sub i64 %4, %rem
  %6 = icmp ne i64 %5, %1
  %umin = zext i1 %6 to i64
  %7 = or i64 %1, %umin
  %8 = sub i64 %5, %7
  %9 = udiv i64 %8, %add
  %10 = add i64 %9, %umin
  %11 = add i64 %10, 1
  %min.iters.check = icmp ult i64 %11, 4
  br i1 %min.iters.check, label %while.body.preheader211, label %vector.ph

vector.ph:                                        ; preds = %while.body.preheader
  %n.vec = and i64 %11, -4
  %12 = mul i64 %n.vec, %add
  %ind.end = add i64 %sub4, %12
  %13 = add i64 %n.vec, -4
  %14 = lshr exact i64 %13, 2
  %15 = add nuw nsw i64 %14, 1
  %xtraiter = and i64 %15, 7
  %16 = icmp ult i64 %13, 28
  br i1 %16, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %15, 9223372036854775800
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %vec.phi = phi <2 x i64> [ <i64 4000, i64 0>, %vector.ph.new ], [ %17, %vector.body ]
  %vec.phi185 = phi <2 x i64> [ zeroinitializer, %vector.ph.new ], [ %18, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.7, %vector.body ]
  %17 = add <2 x i64> %vec.phi, <i64 -8, i64 -8>
  %18 = add <2 x i64> %vec.phi185, <i64 -8, i64 -8>
  %niter.nsub.7 = add i64 %niter, -8
  %niter.ncmp.7 = icmp eq i64 %niter.nsub.7, 0
  br i1 %niter.ncmp.7, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !87

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa217.ph = phi <2 x i64> [ undef, %vector.ph ], [ %17, %vector.body ]
  %.lcssa216.ph = phi <2 x i64> [ undef, %vector.ph ], [ %18, %vector.body ]
  %vec.phi.unr = phi <2 x i64> [ <i64 4000, i64 0>, %vector.ph ], [ %17, %vector.body ]
  %vec.phi185.unr = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %18, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %vec.phi.epil = phi <2 x i64> [ %19, %vector.body.epil ], [ %vec.phi.unr, %middle.block.unr-lcssa ]
  %vec.phi185.epil = phi <2 x i64> [ %20, %vector.body.epil ], [ %vec.phi185.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter, %middle.block.unr-lcssa ]
  %19 = add <2 x i64> %vec.phi.epil, <i64 -1, i64 -1>
  %20 = add <2 x i64> %vec.phi185.epil, <i64 -1, i64 -1>
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !88

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %.lcssa217 = phi <2 x i64> [ %.lcssa217.ph, %middle.block.unr-lcssa ], [ %19, %vector.body.epil ]
  %.lcssa216 = phi <2 x i64> [ %.lcssa216.ph, %middle.block.unr-lcssa ], [ %20, %vector.body.epil ]
  %bin.rdx = add <2 x i64> %.lcssa216, %.lcssa217
  %21 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %while.cond.while.end_crit_edge, label %while.body.preheader211

while.body.preheader211:                          ; preds = %while.body.preheader, %middle.block
  %.ph212 = phi i64 [ 4000, %while.body.preheader ], [ %21, %middle.block ]
  %.ph213 = phi i64 [ %sub4, %while.body.preheader ], [ %ind.end, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader211, %while.body
  %22 = phi i64 [ %dec, %while.body ], [ %.ph212, %while.body.preheader211 ]
  %23 = phi i64 [ %add8, %while.body ], [ %.ph213, %while.body.preheader211 ]
  %add8 = add nsw i64 %23, %add, !sourceFile !3, !mergedLineNum !4
  %dec = add nsw i64 %22, -1, !sourceFile !3, !mergedLineNum !4
  %cmp = icmp slt i64 %add8, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge, !llvm.loop !89, !sourceFile !3, !mergedLineNum !4

while.cond.while.end_crit_edge:                   ; preds = %while.body, %middle.block
  %add8.lcssa = phi i64 [ %ind.end, %middle.block ], [ %add8, %while.body ]
  %dec.lcssa = phi i64 [ %21, %middle.block ], [ %dec, %while.body ]
  store i64 %add8.lcssa, i64* %full_groups, align 8, !tbaa !46
  store i64 %dec.lcssa, i64* %max_elems, align 8, !tbaa !38
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %tobool.not = icmp eq i64 %all, 0, !sourceFile !3, !mergedLineNum !4
  %m_impl12 = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 7
  %24 = load i64, i64* %m_impl12, align 8, !tbaa !86
  br i1 %tobool.not, label %if.else, label %if.end48, !sourceFile !3, !mergedLineNum !4

if.else:                                          ; preds = %while.end
  %sub13 = sub nsw i64 %0, %24, !sourceFile !3, !mergedLineNum !4
  %arcs = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 23
  %cmp18176 = icmp sgt i64 %24, 0
  br i1 %cmp18176, label %for.body, label %if.end95, !sourceFile !3, !mergedLineNum !4

for.body:                                         ; preds = %if.else, %for.body
  %startid.0179 = phi i64 [ %moved.sel170, %for.body ], [ %sub13, %if.else ]
  %stop.0178 = phi i64 [ %inc47, %for.body ], [ %sub13, %if.else ]
  %susp.0177 = phi i64 [ %moved.sel169, %for.body ], [ 0, %if.else ]
  %25 = load %struct.arc*, %struct.arc** %arcs, align 8, !tbaa !24, !sourceFile !3, !mergedLineNum !4
  %call = tail call i64 @getArcPosition(%struct.network* nonnull %net, i64 %stop.0178) #14, !sourceFile !3, !mergedLineNum !4
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %25, i64 %call, !sourceFile !3, !mergedLineNum !4
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %25, i64 %call, i32 4, !sourceFile !3, !mergedLineNum !4
  %26 = load i16, i16* %ident, align 8, !tbaa !60, !sourceFile !3, !mergedLineNum !4
  %cmp19 = icmp eq i16 %26, 1
  %27 = getelementptr inbounds %struct.arc, %struct.arc* %25, i64 %call, i32 1, !sourceFile !3, !mergedLineNum !35
  %28 = load i64, i64* %27, align 8, !tbaa !56, !sourceFile !3, !mergedLineNum !35
  %29 = icmp eq i16 %26, 0
  %30 = getelementptr inbounds %struct.arc, %struct.arc* %25, i64 %call, i32 2, !sourceFile !3, !mergedLineNum !90
  %31 = load %struct.node*, %struct.node** %30, align 8, !tbaa !53
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i64 0, i32 0, !sourceFile !3, !mergedLineNum !35
  %33 = getelementptr inbounds %struct.node, %struct.node* %31, i64 0, i32 6, !sourceFile !3, !mergedLineNum !91
  %34 = load i64, i64* %32, align 8, !tbaa !75, !sourceFile !3, !mergedLineNum !35
  %35 = load %struct.arc*, %struct.arc** %33, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !91
  %36 = icmp eq %struct.arc* %35, %add.ptr, !sourceFile !3, !mergedLineNum !91
  %37 = getelementptr inbounds %struct.arc, %struct.arc* %25, i64 %call, i32 3, !sourceFile !3, !mergedLineNum !92
  %38 = load %struct.node*, %struct.node** %37, align 8, !tbaa !54
  %39 = getelementptr inbounds %struct.node, %struct.node* %38, i64 0, i32 6, !sourceFile !3, !mergedLineNum !93
  %40 = load %struct.arc*, %struct.arc** %39, align 8
  %41 = select i1 %36, %struct.arc* %40, %struct.arc* %add.ptr
  %42 = select i1 %29, %struct.arc* %41, %struct.arc* %40
  %merged.select = select i1 %cmp19, %struct.arc* %40, %struct.arc* %42
  store %struct.arc* %merged.select, %struct.arc** %39, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !93
  %43 = sub i64 %28, %34
  %44 = getelementptr inbounds %struct.node, %struct.node* %38, i64 0, i32 0, !sourceFile !3, !mergedLineNum !35
  %45 = load i64, i64* %44, align 8, !tbaa !75, !sourceFile !3, !mergedLineNum !35
  %46 = add nsw i64 %43, %45, !sourceFile !3, !mergedLineNum !35
  %moved.sel = select i1 %cmp19, i64 %46, i64 -2
  %cmp39 = icmp sgt i64 %moved.sel, %threshold, !sourceFile !3, !mergedLineNum !4
  %47 = trunc i64 %startid.0179 to i32, !sourceFile !3, !mergedLineNum !94
  %48 = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %merged.select167 = select i1 %cmp39, i32 -1, i32 %47
  store i32 %merged.select167, i32* %48, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !94
  %not.cmp39 = xor i1 %cmp39, true
  %49 = zext i1 %not.cmp39 to i64
  %moved.sel170 = add nsw i64 %startid.0179, %49
  %50 = zext i1 %cmp39 to i64
  %moved.sel169 = add nuw nsw i64 %susp.0177, %50
  %inc47 = add nsw i64 %stop.0178, 1, !sourceFile !3, !mergedLineNum !4
  %51 = load i64, i64* %m, align 8, !tbaa !34, !sourceFile !3, !mergedLineNum !4
  %cmp18 = icmp slt i64 %inc47, %51, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp18, label %for.body, label %if.end48, !llvm.loop !95, !sourceFile !3, !mergedLineNum !4

if.end48:                                         ; preds = %for.body, %while.end
  %52 = phi i64 [ %0, %while.end ], [ %51, %for.body ]
  %susp.2 = phi i64 [ %24, %while.end ], [ %moved.sel169, %for.body ], !sourceFile !3, !mergedLineNum !4
  %tobool49.not = icmp eq i64 %susp.2, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool49.not, label %if.end95, label %if.then50, !sourceFile !3, !mergedLineNum !4

if.then50:                                        ; preds = %if.end48
  %m_impl51 = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 7, !sourceFile !3, !mergedLineNum !4
  %53 = load i64, i64* %m_impl51, align 8, !tbaa !86, !sourceFile !3, !mergedLineNum !4
  %sub52 = sub nsw i64 %53, %susp.2, !sourceFile !3, !mergedLineNum !4
  store i64 %sub52, i64* %m_impl51, align 8, !tbaa !86, !sourceFile !3, !mergedLineNum !4
  %max_residual_new_m = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 8, !sourceFile !3, !mergedLineNum !4
  %54 = load i64, i64* %max_residual_new_m, align 8, !tbaa !33, !sourceFile !3, !mergedLineNum !4
  %add53 = add nsw i64 %54, %susp.2, !sourceFile !3, !mergedLineNum !4
  store i64 %add53, i64* %max_residual_new_m, align 8, !tbaa !33, !sourceFile !3, !mergedLineNum !4
  store i64 4000, i64* %max_elems, align 8, !tbaa !38, !sourceFile !3, !mergedLineNum !4
  %55 = xor i64 %susp.2, -1
  %sub57 = add i64 %52, %55
  %div58 = sdiv i64 %sub57, 4000, !sourceFile !3, !mergedLineNum !4
  %add59 = add nsw i64 %div58, 1, !sourceFile !3, !mergedLineNum !4
  store i64 %add59, i64* %nr_group, align 8, !tbaa !39, !sourceFile !3, !mergedLineNum !4
  %sub62 = sub nsw i64 %52, %susp.2, !sourceFile !3, !mergedLineNum !4
  %rem63 = srem i64 %sub62, 4000, !sourceFile !3, !mergedLineNum !4
  %cmp64.not = icmp eq i64 %rem63, 0, !sourceFile !3, !mergedLineNum !4
  %sub71.neg = add nsw i64 %rem63, -4000
  %sub72 = select i1 %cmp64.not, i64 0, i64 %sub71.neg
  %storemerge = add nsw i64 %sub72, %add59
  store i64 %storemerge, i64* %full_groups, align 8, !tbaa !46
  %cmp80180 = icmp slt i64 %storemerge, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp80180, label %while.body82.preheader, label %while.end89, !sourceFile !3, !mergedLineNum !4

while.body82.preheader:                           ; preds = %if.then50
  %56 = shl nsw i64 %div58, 1
  %57 = add nsw i64 %sub72, %56
  %58 = add nsw i64 %57, 2
  %smax186 = call i64 @llvm.smax.i64(i64 %58, i64 0)
  %59 = add nsw i64 %smax186, -2
  %60 = sub i64 %59, %sub72
  %61 = icmp ne i64 %60, %56
  %umin187 = zext i1 %61 to i64
  %62 = or i64 %56, %umin187
  %63 = sub i64 %60, %62
  %64 = udiv i64 %63, %add59
  %65 = add i64 %64, %umin187
  %66 = add i64 %65, 1
  %min.iters.check191 = icmp ult i64 %66, 4
  br i1 %min.iters.check191, label %while.body82.preheader205, label %vector.ph192

vector.ph192:                                     ; preds = %while.body82.preheader
  %n.vec194 = and i64 %66, -4
  %67 = mul i64 %n.vec194, %add59
  %ind.end198 = add i64 %storemerge, %67
  %68 = add i64 %n.vec194, -4
  %69 = lshr exact i64 %68, 2
  %70 = add nuw nsw i64 %69, 1
  %xtraiter220 = and i64 %70, 7
  %71 = icmp ult i64 %68, 28
  br i1 %71, label %middle.block188.unr-lcssa, label %vector.ph192.new

vector.ph192.new:                                 ; preds = %vector.ph192
  %unroll_iter225 = and i64 %70, 9223372036854775800
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph192.new
  %vec.phi200 = phi <2 x i64> [ <i64 4000, i64 0>, %vector.ph192.new ], [ %72, %vector.body190 ]
  %vec.phi201 = phi <2 x i64> [ zeroinitializer, %vector.ph192.new ], [ %73, %vector.body190 ]
  %niter226 = phi i64 [ %unroll_iter225, %vector.ph192.new ], [ %niter226.nsub.7, %vector.body190 ]
  %72 = add <2 x i64> %vec.phi200, <i64 -8, i64 -8>
  %73 = add <2 x i64> %vec.phi201, <i64 -8, i64 -8>
  %niter226.nsub.7 = add i64 %niter226, -8
  %niter226.ncmp.7 = icmp eq i64 %niter226.nsub.7, 0
  br i1 %niter226.ncmp.7, label %middle.block188.unr-lcssa, label %vector.body190, !llvm.loop !96

middle.block188.unr-lcssa:                        ; preds = %vector.body190, %vector.ph192
  %.lcssa209.ph = phi <2 x i64> [ undef, %vector.ph192 ], [ %72, %vector.body190 ]
  %.lcssa.ph = phi <2 x i64> [ undef, %vector.ph192 ], [ %73, %vector.body190 ]
  %vec.phi200.unr = phi <2 x i64> [ <i64 4000, i64 0>, %vector.ph192 ], [ %72, %vector.body190 ]
  %vec.phi201.unr = phi <2 x i64> [ zeroinitializer, %vector.ph192 ], [ %73, %vector.body190 ]
  %lcmp.mod222.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod222.not, label %middle.block188, label %vector.body190.epil

vector.body190.epil:                              ; preds = %middle.block188.unr-lcssa, %vector.body190.epil
  %vec.phi200.epil = phi <2 x i64> [ %74, %vector.body190.epil ], [ %vec.phi200.unr, %middle.block188.unr-lcssa ]
  %vec.phi201.epil = phi <2 x i64> [ %75, %vector.body190.epil ], [ %vec.phi201.unr, %middle.block188.unr-lcssa ]
  %epil.iter221 = phi i64 [ %epil.iter221.sub, %vector.body190.epil ], [ %xtraiter220, %middle.block188.unr-lcssa ]
  %74 = add <2 x i64> %vec.phi200.epil, <i64 -1, i64 -1>
  %75 = add <2 x i64> %vec.phi201.epil, <i64 -1, i64 -1>
  %epil.iter221.sub = add i64 %epil.iter221, -1
  %epil.iter221.cmp.not = icmp eq i64 %epil.iter221.sub, 0
  br i1 %epil.iter221.cmp.not, label %middle.block188, label %vector.body190.epil, !llvm.loop !97

middle.block188:                                  ; preds = %vector.body190.epil, %middle.block188.unr-lcssa
  %.lcssa209 = phi <2 x i64> [ %.lcssa209.ph, %middle.block188.unr-lcssa ], [ %74, %vector.body190.epil ]
  %.lcssa = phi <2 x i64> [ %.lcssa.ph, %middle.block188.unr-lcssa ], [ %75, %vector.body190.epil ]
  %bin.rdx203 = add <2 x i64> %.lcssa, %.lcssa209
  %76 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx203)
  %cmp.n199 = icmp eq i64 %66, %n.vec194
  br i1 %cmp.n199, label %while.cond78.while.end89_crit_edge, label %while.body82.preheader205

while.body82.preheader205:                        ; preds = %while.body82.preheader, %middle.block188
  %.ph = phi i64 [ 4000, %while.body82.preheader ], [ %76, %middle.block188 ]
  %.ph206 = phi i64 [ %storemerge, %while.body82.preheader ], [ %ind.end198, %middle.block188 ]
  br label %while.body82

while.body82:                                     ; preds = %while.body82.preheader205, %while.body82
  %77 = phi i64 [ %dec88, %while.body82 ], [ %.ph, %while.body82.preheader205 ]
  %78 = phi i64 [ %add85, %while.body82 ], [ %.ph206, %while.body82.preheader205 ]
  %add85 = add nsw i64 %78, %add59, !sourceFile !3, !mergedLineNum !4
  %dec88 = add nsw i64 %77, -1, !sourceFile !3, !mergedLineNum !4
  %cmp80 = icmp slt i64 %add85, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp80, label %while.body82, label %while.cond78.while.end89_crit_edge, !llvm.loop !98, !sourceFile !3, !mergedLineNum !4

while.cond78.while.end89_crit_edge:               ; preds = %while.body82, %middle.block188
  %add85.lcssa = phi i64 [ %ind.end198, %middle.block188 ], [ %add85, %while.body82 ]
  %dec88.lcssa = phi i64 [ %76, %middle.block188 ], [ %dec88, %while.body82 ]
  store i64 %add85.lcssa, i64* %full_groups, align 8, !tbaa !46
  store i64 %dec88.lcssa, i64* %max_elems, align 8, !tbaa !38
  br label %while.end89

while.end89:                                      ; preds = %while.cond78.while.end89_crit_edge, %if.then50
  %sorted_arcs.i = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 25, !sourceFile !3, !mergedLineNum !4
  %79 = load %struct.arc*, %struct.arc** %sorted_arcs.i, align 8, !tbaa !23, !sourceFile !3, !mergedLineNum !4
  %n.i.i = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %nodes.i.i = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 21
  %80 = load i64, i64* %n.i.i, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %cmp.not65.i.i = icmp slt i64 %80, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.not65.i.i, label %refreshArcPointers.exit.i, label %for.body.i.i, !sourceFile !3, !mergedLineNum !4

for.body.i.i:                                     ; preds = %while.end89, %for.inc.i.i
  %i.066.i.i = phi i64 [ %inc.i.i, %for.inc.i.i ], [ 0, %while.end89 ]
  %81 = load %struct.node*, %struct.node** %nodes.i.i, align 8, !tbaa !12, !sourceFile !3, !mergedLineNum !4
  %basic_arc.i.i = getelementptr inbounds %struct.node, %struct.node* %81, i64 %i.066.i.i, i32 6, !sourceFile !3, !mergedLineNum !4
  %82 = load %struct.arc*, %struct.arc** %basic_arc.i.i, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !4
  %tobool.not.i.i = icmp eq %struct.arc* %82, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %id.i.i = getelementptr inbounds %struct.arc, %struct.arc* %82, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %83 = load i32, i32* %id.i.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp2.i.i = icmp sgt i32 %83, -1
  br i1 %cmp2.i.i, label %if.then.i.i, label %if.end.i.i, !sourceFile !3, !mergedLineNum !4

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %conv64.i.i = zext i32 %83 to i64
  %call.i.i = tail call i64 @getOriginalArcPosition(%struct.network* nonnull %net, i64 %conv64.i.i) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx.i.i = getelementptr inbounds %struct.arc, %struct.arc* %79, i64 %call.i.i, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx.i.i, %struct.arc** %basic_arc.i.i, align 8, !tbaa !13, !sourceFile !3, !mergedLineNum !4
  br label %if.end.i.i, !sourceFile !3, !mergedLineNum !4

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i, %for.body.i.i
  %firstin.i.i = getelementptr inbounds %struct.node, %struct.node* %81, i64 %i.066.i.i, i32 8, !sourceFile !3, !mergedLineNum !4
  %84 = load %struct.arc*, %struct.arc** %firstin.i.i, align 8, !tbaa !19, !sourceFile !3, !mergedLineNum !4
  %tobool6.not.i.i = icmp eq %struct.arc* %84, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool6.not.i.i, label %if.end19.i.i, label %land.lhs.true7.i.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true7.i.i:                               ; preds = %if.end.i.i
  %id9.i.i = getelementptr inbounds %struct.arc, %struct.arc* %84, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %85 = load i32, i32* %id9.i.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp10.i.i = icmp sgt i32 %85, -1
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.end19.i.i, !sourceFile !3, !mergedLineNum !4

if.then12.i.i:                                    ; preds = %land.lhs.true7.i.i
  %conv1563.i.i = zext i32 %85 to i64
  %call16.i.i = tail call i64 @getOriginalArcPosition(%struct.network* nonnull %net, i64 %conv1563.i.i) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx17.i.i = getelementptr inbounds %struct.arc, %struct.arc* %79, i64 %call16.i.i, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx17.i.i, %struct.arc** %firstin.i.i, align 8, !tbaa !19, !sourceFile !3, !mergedLineNum !4
  br label %if.end19.i.i, !sourceFile !3, !mergedLineNum !4

if.end19.i.i:                                     ; preds = %if.then12.i.i, %land.lhs.true7.i.i, %if.end.i.i
  %firstout.i.i = getelementptr inbounds %struct.node, %struct.node* %81, i64 %i.066.i.i, i32 7, !sourceFile !3, !mergedLineNum !4
  %86 = load %struct.arc*, %struct.arc** %firstout.i.i, align 8, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  %tobool20.not.i.i = icmp eq %struct.arc* %86, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool20.not.i.i, label %for.inc.i.i, label %land.lhs.true21.i.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true21.i.i:                              ; preds = %if.end19.i.i
  %id23.i.i = getelementptr inbounds %struct.arc, %struct.arc* %86, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %87 = load i32, i32* %id23.i.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp24.i.i = icmp sgt i32 %87, -1
  br i1 %cmp24.i.i, label %if.then26.i.i, label %for.inc.i.i, !sourceFile !3, !mergedLineNum !4

if.then26.i.i:                                    ; preds = %land.lhs.true21.i.i
  %conv2962.i.i = zext i32 %87 to i64
  %call30.i.i = tail call i64 @getOriginalArcPosition(%struct.network* nonnull %net, i64 %conv2962.i.i) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx31.i.i = getelementptr inbounds %struct.arc, %struct.arc* %79, i64 %call30.i.i, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %arrayidx31.i.i, %struct.arc** %firstout.i.i, align 8, !tbaa !20, !sourceFile !3, !mergedLineNum !4
  br label %for.inc.i.i, !sourceFile !3, !mergedLineNum !4

for.inc.i.i:                                      ; preds = %if.then26.i.i, %land.lhs.true21.i.i, %if.end19.i.i
  %inc.i.i = add nuw nsw i64 %i.066.i.i, 1, !sourceFile !3, !mergedLineNum !4
  %88 = load i64, i64* %n.i.i, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %cmp.not.not.i.i = icmp slt i64 %i.066.i.i, %88
  br i1 %cmp.not.not.i.i, label %for.body.i.i, label %refreshArcPointers.exit.i, !llvm.loop !21, !sourceFile !3, !mergedLineNum !4

refreshArcPointers.exit.i:                        ; preds = %for.inc.i.i, %while.end89
  %arcs.i = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 23
  %cmp30.i = icmp sgt i64 %52, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp30.i, label %for.body.i, label %refreshPositions.exit, !sourceFile !3, !mergedLineNum !4

for.body.i:                                       ; preds = %refreshArcPointers.exit.i, %for.inc.i
  %position.031.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %refreshArcPointers.exit.i ]
  %89 = load %struct.arc*, %struct.arc** %arcs.i, align 8, !tbaa !24, !sourceFile !3, !mergedLineNum !4
  %add.ptr.i = getelementptr inbounds %struct.arc, %struct.arc* %89, i64 %position.031.i, !sourceFile !3, !mergedLineNum !4
  %id.i = getelementptr inbounds %struct.arc, %struct.arc* %add.ptr.i, i64 0, i32 0, !sourceFile !3, !mergedLineNum !4
  %90 = load i32, i32* %id.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %cmp1.i = icmp slt i32 %90, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp1.i, label %for.inc.i, label %if.end.i, !sourceFile !3, !mergedLineNum !4

if.end.i:                                         ; preds = %for.body.i
  %conv29.i = zext i32 %90 to i64
  %call3.i = tail call i64 @getOriginalArcPosition(%struct.network* nonnull %net, i64 %conv29.i) #14, !sourceFile !3, !mergedLineNum !4
  %arrayidx.i = getelementptr inbounds %struct.arc, %struct.arc* %79, i64 %call3.i, !sourceFile !3, !mergedLineNum !4
  %91 = bitcast %struct.arc* %arrayidx.i to i8*, !sourceFile !3, !mergedLineNum !4
  %92 = bitcast %struct.arc* %add.ptr.i to i8*, !sourceFile !3, !mergedLineNum !4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %91, i8* noundef nonnull align 8 dereferenceable(72) %92, i64 72, i1 false) #14, !tbaa.struct !25, !sourceFile !3, !mergedLineNum !4
  br label %for.inc.i, !sourceFile !3, !mergedLineNum !4

for.inc.i:                                        ; preds = %if.end.i, %for.body.i
  %inc.i = add nuw nsw i64 %position.031.i, 1, !sourceFile !3, !mergedLineNum !4
  %exitcond.not.i = icmp eq i64 %inc.i, %52
  br i1 %exitcond.not.i, label %refreshPositions.exit, label %for.body.i, !llvm.loop !30, !sourceFile !3, !mergedLineNum !4

refreshPositions.exit:                            ; preds = %for.inc.i, %refreshArcPointers.exit.i
  %93 = load %struct.arc*, %struct.arc** %arcs.i, align 8, !tbaa !24, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %79, %struct.arc** %arcs.i, align 8, !tbaa !24, !sourceFile !3, !mergedLineNum !4
  store %struct.arc* %93, %struct.arc** %sorted_arcs.i, align 8, !tbaa !23, !sourceFile !3, !mergedLineNum !4
  %stop_arcs.i = getelementptr inbounds %struct.network, %struct.network* %net, i64 0, i32 24, !sourceFile !3, !mergedLineNum !4
  %94 = load i64, i64* %m, align 8, !tbaa !34, !sourceFile !3, !mergedLineNum !4
  %sub93 = sub nsw i64 %94, %susp.2, !sourceFile !3, !mergedLineNum !4
  store i64 %sub93, i64* %m, align 8, !tbaa !34, !sourceFile !3, !mergedLineNum !4
  %add.ptr94.idx = sub i64 %52, %susp.2
  %add.ptr94 = getelementptr inbounds %struct.arc, %struct.arc* %79, i64 %add.ptr94.idx
  store %struct.arc* %add.ptr94, %struct.arc** %stop_arcs.i, align 8, !tbaa !31, !sourceFile !3, !mergedLineNum !4
  tail call void @refresh_neighbour_lists(%struct.network* nonnull %net, i64 (%struct.network*, i64)* nonnull @getOriginalArcPosition) #14, !sourceFile !3, !mergedLineNum !4
  br label %if.end95, !sourceFile !3, !mergedLineNum !4

if.end95:                                         ; preds = %if.else, %refreshPositions.exit, %if.end48
  %susp.2184 = phi i64 [ %susp.2, %refreshPositions.exit ], [ 0, %if.end48 ], [ 0, %if.else ]
  ret i64 %susp.2184, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (git@github.com:kirshanthans/llvm-project-exp.git e1e02a5ce5d3dd50375b9bb4f022c9816d9495f8)"}
!3 = !{!""}
!4 = !{!"-1"}
!5 = !{!6, !9, i64 400}
!6 = !{!"network", !7, i64 0, !7, i64 200, !9, i64 400, !9, i64 408, !9, i64 416, !9, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !9, i64 480, !9, i64 488, !9, i64 496, !9, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !10, i64 536, !9, i64 544, !11, i64 552, !11, i64 560, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !9, i64 608, !9, i64 616, !9, i64 624, !9, i64 632, !9, i64 640}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!6, !11, i64 552}
!13 = !{!14, !11, i64 48}
!14 = !{!"node", !9, i64 0, !15, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !9, i64 80, !9, i64 88, !15, i64 96, !15, i64 100}
!15 = !{!"int", !7, i64 0}
!16 = !{!17, !15, i64 0}
!17 = !{!"arc", !15, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !18, i64 32, !11, i64 40, !11, i64 48, !9, i64 56, !9, i64 64}
!18 = !{!"short", !7, i64 0}
!19 = !{!14, !11, i64 64}
!20 = !{!14, !11, i64 56}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!6, !11, i64 584}
!24 = !{!6, !11, i64 568}
!25 = !{i64 0, i64 4, !26, i64 8, i64 8, !27, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 2, !29, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 8, !27, i64 64, i64 8, !27}
!26 = !{!15, !15, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{!11, !11, i64 0}
!29 = !{!18, !18, i64 0}
!30 = distinct !{!30, !22}
!31 = !{!6, !11, i64 576}
!32 = !{!6, !9, i64 408}
!33 = !{!6, !9, i64 448}
!34 = !{!6, !9, i64 424}
!35 = !{!"-2,-1"}
!36 = !{!17, !9, i64 56}
!37 = distinct !{!37, !22}
!38 = !{!6, !9, i64 640}
!39 = !{!6, !9, i64 624}
!40 = distinct !{!40, !22, !41}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !22, !45, !41}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!6, !9, i64 632}
!47 = !{!6, !9, i64 456}
!48 = !{!6, !9, i64 416}
!49 = !{!6, !11, i64 560}
!50 = !{!14, !11, i64 24}
!51 = !{!"-2,-2,-1"}
!52 = distinct !{!52, !22}
!53 = !{!17, !11, i64 16}
!54 = !{!17, !11, i64 24}
!55 = !{!17, !9, i64 64}
!56 = !{!17, !9, i64 8}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !22}
!60 = !{!17, !18, i64 32}
!61 = !{i64 0, i64 8, !27, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 2, !29, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !27, i64 56, i64 8, !27}
!62 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 2, !29, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !27, i64 48, i64 8, !27}
!63 = !{i64 0, i64 8, !28, i64 8, i64 2, !29, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !27, i64 40, i64 8, !27}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !22}
!66 = !{!6, !9, i64 528}
!67 = distinct !{!67, !22, !41}
!68 = distinct !{!68, !22, !45, !41}
!69 = distinct !{!69, !22}
!70 = !{!71, !11, i64 8}
!71 = !{!"list_elem", !11, i64 0, !11, i64 8}
!72 = !{!71, !11, i64 0}
!73 = !{!14, !15, i64 100}
!74 = distinct !{!74, !22}
!75 = !{!14, !9, i64 0}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22, !41}
!80 = distinct !{!80, !43}
!81 = distinct !{!81, !22, !45, !41}
!82 = distinct !{!82, !22}
!83 = !{!17, !11, i64 40}
!84 = !{!17, !11, i64 48}
!85 = distinct !{!85, !22}
!86 = !{!6, !9, i64 440}
!87 = distinct !{!87, !22, !41}
!88 = distinct !{!88, !43}
!89 = distinct !{!89, !22, !45, !41}
!90 = !{!"-1,-2,-1"}
!91 = !{!"-2,-1,-2"}
!92 = !{!"-1,-2,-1,-2"}
!93 = !{!"-2,-1,-2,-2"}
!94 = !{!"-1,-2"}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !22, !41}
!97 = distinct !{!97, !43}
!98 = distinct !{!98, !22, !45, !41}
