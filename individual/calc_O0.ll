; ModuleID = 'calc.cpp'
source_filename = "calc.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::complex" = type { { double, double } }

$_ZStplIdESt7complexIT_ERKS2_S4_ = comdat any

$_ZStmlIdESt7complexIT_ERKS2_S4_ = comdat any

$_ZNSt7complexIdEmLIdEERS0_RKS_IT_E = comdat any

$_ZNKSt7complexIdE5__repEv = comdat any

$_ZNSt7complexIdEpLIdEERS0_RKS_IT_E = comdat any

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local { double, double } @_Z4calcSt7complexIdES0_(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca %"class.std::complex", align 8
  %6 = alloca %"class.std::complex", align 8
  %7 = alloca %"class.std::complex", align 8
  %8 = alloca %"class.std::complex", align 8
  %9 = getelementptr inbounds nuw { double, double }, ptr %6, i32 0, i32 0
  store double %0, ptr %9, align 8
  %10 = getelementptr inbounds nuw { double, double }, ptr %6, i32 0, i32 1
  store double %1, ptr %10, align 8
  %11 = getelementptr inbounds nuw { double, double }, ptr %7, i32 0, i32 0
  store double %2, ptr %11, align 8
  %12 = getelementptr inbounds nuw { double, double }, ptr %7, i32 0, i32 1
  store double %3, ptr %12, align 8
  %13 = call { double, double } @_ZStmlIdESt7complexIT_ERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %14 = getelementptr inbounds nuw %"class.std::complex", ptr %8, i32 0, i32 0
  %15 = getelementptr inbounds nuw { double, double }, ptr %14, i32 0, i32 0
  %16 = extractvalue { double, double } %13, 0
  store double %16, ptr %15, align 8
  %17 = getelementptr inbounds nuw { double, double }, ptr %14, i32 0, i32 1
  %18 = extractvalue { double, double } %13, 1
  store double %18, ptr %17, align 8
  %19 = call { double, double } @_ZStplIdESt7complexIT_ERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %20 = getelementptr inbounds nuw %"class.std::complex", ptr %5, i32 0, i32 0
  %21 = getelementptr inbounds nuw { double, double }, ptr %20, i32 0, i32 0
  %22 = extractvalue { double, double } %19, 0
  store double %22, ptr %21, align 8
  %23 = getelementptr inbounds nuw { double, double }, ptr %20, i32 0, i32 1
  %24 = extractvalue { double, double } %19, 1
  store double %24, ptr %23, align 8
  %25 = getelementptr inbounds nuw %"class.std::complex", ptr %5, i32 0, i32 0
  %26 = load { double, double }, ptr %25, align 8
  ret { double, double } %26
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { double, double } @_ZStplIdESt7complexIT_ERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat {
  %3 = alloca %"class.std::complex", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8, !nonnull !6, !align !7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %6, i64 16, i1 false)
  %7 = load ptr, ptr %5, align 8, !nonnull !6, !align !7
  %8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEpLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %9 = getelementptr inbounds nuw %"class.std::complex", ptr %3, i32 0, i32 0
  %10 = load { double, double }, ptr %9, align 8
  ret { double, double } %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { double, double } @_ZStmlIdESt7complexIT_ERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat {
  %3 = alloca %"class.std::complex", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8, !nonnull !6, !align !7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %6, i64 16, i1 false)
  %7 = load ptr, ptr %5, align 8, !nonnull !6, !align !7
  %8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %9 = getelementptr inbounds nuw %"class.std::complex", ptr %3, i32 0, i32 0
  %10 = load { double, double }, ptr %9, align 8
  ret { double, double } %10
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca { double, double }, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %4, align 8, !nonnull !6, !align !7
  %8 = call noundef { double, double } @_ZNKSt7complexIdE5__repEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %9 = extractvalue { double, double } %8, 0
  %10 = extractvalue { double, double } %8, 1
  %11 = getelementptr inbounds nuw { double, double }, ptr %5, i32 0, i32 0
  %12 = getelementptr inbounds nuw { double, double }, ptr %5, i32 0, i32 1
  store double %9, ptr %11, align 8
  store double %10, ptr %12, align 8
  %13 = getelementptr inbounds nuw { double, double }, ptr %5, i32 0, i32 0
  %14 = load double, ptr %13, align 8
  %15 = getelementptr inbounds nuw { double, double }, ptr %5, i32 0, i32 1
  %16 = load double, ptr %15, align 8
  %17 = getelementptr inbounds nuw %"class.std::complex", ptr %6, i32 0, i32 0
  %18 = getelementptr inbounds nuw { double, double }, ptr %17, i32 0, i32 0
  %19 = load double, ptr %18, align 8
  %20 = getelementptr inbounds nuw { double, double }, ptr %17, i32 0, i32 1
  %21 = load double, ptr %20, align 8
  %22 = fmul double %19, %14
  %23 = fmul double %21, %16
  %24 = fmul double %19, %16
  %25 = fmul double %21, %14
  %26 = fsub double %22, %23
  %27 = fadd double %24, %25
  %28 = fcmp uno double %26, %26
  br i1 %28, label %29, label %35, !prof !8

29:                                               ; preds = %2
  %30 = fcmp uno double %27, %27
  br i1 %30, label %31, label %35, !prof !8

31:                                               ; preds = %29
  %32 = call noundef { double, double } @__muldc3(double noundef %19, double noundef %21, double noundef %14, double noundef %16) #3
  %33 = extractvalue { double, double } %32, 0
  %34 = extractvalue { double, double } %32, 1
  br label %35

35:                                               ; preds = %31, %29, %2
  %36 = phi double [ %26, %2 ], [ %26, %29 ], [ %33, %31 ]
  %37 = phi double [ %27, %2 ], [ %27, %29 ], [ %34, %31 ]
  %38 = getelementptr inbounds nuw { double, double }, ptr %17, i32 0, i32 0
  %39 = getelementptr inbounds nuw { double, double }, ptr %17, i32 0, i32 1
  store double %36, ptr %38, align 8
  store double %37, ptr %39, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef { double, double } @_ZNKSt7complexIdE5__repEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #2 comdat align 2 {
  %2 = alloca { double, double }, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw %"class.std::complex", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds nuw { double, double }, ptr %5, i32 0, i32 0
  %7 = load double, ptr %6, align 8
  %8 = getelementptr inbounds nuw { double, double }, ptr %5, i32 0, i32 1
  %9 = load double, ptr %8, align 8
  %10 = getelementptr inbounds nuw { double, double }, ptr %2, i32 0, i32 0
  %11 = getelementptr inbounds nuw { double, double }, ptr %2, i32 0, i32 1
  store double %7, ptr %10, align 8
  store double %9, ptr %11, align 8
  %12 = load { double, double }, ptr %2, align 8
  ret { double, double } %12
}

declare { double, double } @__muldc3(double, double, double, double)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEpLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #2 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !nonnull !6, !align !7
  %7 = call noundef { double, double } @_ZNKSt7complexIdE5__repEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %8 = extractvalue { double, double } %7, 0
  %9 = extractvalue { double, double } %7, 1
  %10 = getelementptr inbounds nuw %"class.std::complex", ptr %5, i32 0, i32 0
  %11 = getelementptr inbounds nuw { double, double }, ptr %10, i32 0, i32 0
  %12 = load double, ptr %11, align 8
  %13 = getelementptr inbounds nuw { double, double }, ptr %10, i32 0, i32 1
  %14 = load double, ptr %13, align 8
  %15 = fadd double %12, %8
  %16 = fadd double %14, %9
  %17 = getelementptr inbounds nuw { double, double }, ptr %10, i32 0, i32 0
  %18 = getelementptr inbounds nuw { double, double }, ptr %10, i32 0, i32 1
  store double %15, ptr %17, align 8
  store double %16, ptr %18, align 8
  ret ptr %5
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!6 = !{}
!7 = !{i64 8}
!8 = !{!"branch_weights", i32 1, i32 1048575}
