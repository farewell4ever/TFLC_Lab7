; ModuleID = 'complex.cpp'
source_filename = "complex.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::complex" = type { { double, double } }

$_ZNSt7complexIdEC2Edd = comdat any

$_ZStplIdESt7complexIT_ERKS2_S4_ = comdat any

$_ZStmlIdESt7complexIT_ERKS2_S4_ = comdat any

$_ZNKSt7complexIdE4realB5cxx11Ev = comdat any

$_ZNKSt7complexIdE4imagB5cxx11Ev = comdat any

$_ZNSt7complexIdEmLIdEERS0_RKS_IT_E = comdat any

$_ZNKSt7complexIdE5__repEv = comdat any

$_ZNSt7complexIdEpLIdEERS0_RKS_IT_E = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = alloca %"class.std::complex", align 8
  %2 = alloca %"class.std::complex", align 8
  %3 = alloca %"class.std::complex", align 8
  %4 = alloca %"class.std::complex", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #5
  call void @_ZNSt7complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %1, double noundef 3.000000e+00, double noundef 4.000000e+00)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  call void @_ZNSt7complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %2, double noundef 1.000000e+00, double noundef 2.000000e+00)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %5 = call { double, double } @_ZStmlIdESt7complexIT_ERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %6 = extractvalue { double, double } %5, 0
  store double %6, ptr %4, align 8
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %8 = extractvalue { double, double } %5, 1
  store double %8, ptr %7, align 8
  %9 = call { double, double } @_ZStplIdESt7complexIT_ERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %10 = extractvalue { double, double } %9, 0
  store double %10, ptr %3, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %12 = extractvalue { double, double } %9, 1
  store double %12, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  %13 = call noundef double @_ZNKSt7complexIdE4realB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %13)
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str)
  %16 = call noundef double @_ZNKSt7complexIdE4imagB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef %16)
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1, double noundef %2) unnamed_addr #2 comdat align 2 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %1, ptr %0, align 8
  store double %2, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, double } @_ZStplIdESt7complexIT_ERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat {
  %3 = alloca %"class.std::complex", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !5
  %4 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEpLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %5 = load double, ptr %3, align 8
  %6 = insertvalue { double, double } poison, double %5, 0
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = load double, ptr %7, align 8
  %9 = insertvalue { double, double } %6, double %8, 1
  ret { double, double } %9
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, double } @_ZStmlIdESt7complexIT_ERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat {
  %3 = alloca %"class.std::complex", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !5
  %4 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %5 = load double, ptr %3, align 8
  %6 = insertvalue { double, double } poison, double %5, 0
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = load double, ptr %7, align 8
  %9 = insertvalue { double, double } %6, double %8, 1
  ret { double, double } %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress noinline uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNKSt7complexIdE4realB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = load double, ptr %0, align 8, !tbaa !9
  ret double %2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNKSt7complexIdE4imagB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load double, ptr %2, align 8, !tbaa !9
  ret double %3
}

; Function Attrs: mustprogress noinline uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
  %3 = tail call noundef { double, double } @_ZNKSt7complexIdE5__repEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %4 = extractvalue { double, double } %3, 0
  %5 = extractvalue { double, double } %3, 1
  %6 = load double, ptr %0, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load double, ptr %7, align 8
  %9 = fmul double %6, %4
  %10 = fmul double %5, %8
  %11 = fmul double %6, %5
  %12 = fmul double %4, %8
  %13 = fsub double %9, %10
  %14 = fadd double %11, %12
  %15 = fcmp uno double %13, 0.000000e+00
  br i1 %15, label %16, label %22, !prof !11

16:                                               ; preds = %2
  %17 = fcmp uno double %14, 0.000000e+00
  br i1 %17, label %18, label %22, !prof !11

18:                                               ; preds = %16
  %19 = tail call noundef { double, double } @__muldc3(double noundef %6, double noundef %8, double noundef %4, double noundef %5) #5
  %20 = extractvalue { double, double } %19, 0
  %21 = extractvalue { double, double } %19, 1
  br label %22

22:                                               ; preds = %18, %16, %2
  %23 = phi double [ %13, %2 ], [ %13, %16 ], [ %20, %18 ]
  %24 = phi double [ %14, %2 ], [ %14, %16 ], [ %21, %18 ]
  store double %23, ptr %0, align 8
  store double %24, ptr %7, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef { double, double } @_ZNKSt7complexIdE5__repEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = load double, ptr %0, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load double, ptr %3, align 8
  %5 = insertvalue { double, double } poison, double %2, 0
  %6 = insertvalue { double, double } %5, double %4, 1
  ret { double, double } %6
}

declare { double, double } @__muldc3(double, double, double, double) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEpLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef { double, double } @_ZNKSt7complexIdE5__repEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %4 = extractvalue { double, double } %3, 0
  %5 = extractvalue { double, double } %3, 1
  %6 = load <2 x double>, ptr %0, align 8
  %7 = insertelement <2 x double> poison, double %4, i64 0
  %8 = insertelement <2 x double> %7, double %5, i64 1
  %9 = fadd <2 x double> %6, %8
  store <2 x double> %9, ptr %0, align 8
  ret ptr %0
}

attributes #0 = { mustprogress noinline norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!5 = !{i64 0, i64 16, !6}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!"branch_weights", i32 1, i32 1048575}
