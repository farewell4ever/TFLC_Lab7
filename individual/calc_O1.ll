; ModuleID = 'calc.cpp'
source_filename = "calc.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind uwtable
define dso_local { double, double } @_Z4calcSt7complexIdES0_(double %0, double %1, double %2, double %3) local_unnamed_addr #0 {
  %5 = fmul double %0, %2
  %6 = fmul double %1, %3
  %7 = fmul double %0, %3
  %8 = fmul double %1, %2
  %9 = fsub double %5, %6
  %10 = fadd double %8, %7
  %11 = fcmp uno double %9, 0.000000e+00
  br i1 %11, label %12, label %18, !prof !5

12:                                               ; preds = %4
  %13 = fcmp uno double %10, 0.000000e+00
  br i1 %13, label %14, label %18, !prof !5

14:                                               ; preds = %12
  %15 = tail call noundef { double, double } @__muldc3(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #1
  %16 = extractvalue { double, double } %15, 0
  %17 = extractvalue { double, double } %15, 1
  br label %18

18:                                               ; preds = %4, %12, %14
  %19 = phi double [ %9, %4 ], [ %9, %12 ], [ %16, %14 ]
  %20 = phi double [ %10, %4 ], [ %10, %12 ], [ %17, %14 ]
  %21 = fadd double %0, %19
  %22 = fadd double %1, %20
  %23 = insertvalue { double, double } poison, double %21, 0
  %24 = insertvalue { double, double } %23, double %22, 1
  ret { double, double } %24
}

declare { double, double } @__muldc3(double, double, double, double) local_unnamed_addr

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!5 = !{!"branch_weights", i32 1, i32 1048575}
