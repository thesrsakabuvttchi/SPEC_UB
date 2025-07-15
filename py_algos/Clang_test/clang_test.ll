; ModuleID = 'clang_test.c'
source_filename = "clang_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Result: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @classify() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @rand() #3, !sourceFile !3, !mergedLineNum !4
  %rem = srem i32 %call, 100, !sourceFile !3, !mergedLineNum !4
  %cmp = icmp sgt i32 %rem, 30, !sourceFile !3, !mergedLineNum !4
  %moved.sel = select i1 %cmp, i32 5, i32 -1
  ret i32 %moved.sel, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i64 @time(i64* null) #3, !sourceFile !3, !mergedLineNum !4
  %conv = trunc i64 %call to i32, !sourceFile !3, !mergedLineNum !4
  tail call void @srand(i32 %conv) #3, !sourceFile !3, !mergedLineNum !4
  %call.i = tail call i32 @rand() #3, !sourceFile !3, !mergedLineNum !4
  %rem.i = srem i32 %call.i, 100, !sourceFile !3, !mergedLineNum !4
  %cmp.i = icmp sgt i32 %rem.i, 30, !sourceFile !3, !mergedLineNum !4
  %moved.sel.i = select i1 %cmp.i, i32 5, i32 -1
  %call2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %moved.sel.i), !sourceFile !3, !mergedLineNum !4
  ret i32 0, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (git@github.com:kirshanthans/llvm-project-exp.git 63be16900b7261c43bffac7ac5400488560f71a7)"}
!3 = !{!""}
!4 = !{!"-1"}
