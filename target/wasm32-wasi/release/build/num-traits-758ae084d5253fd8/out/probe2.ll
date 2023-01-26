; ModuleID = 'probe2.984614e9-cgu.0'
source_filename = "probe2.984614e9-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

; core::f64::<impl f64>::to_int_unchecked
; Function Attrs: inlinehint nounwind
define hidden i32 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$16to_int_unchecked17had7d0d242f3e40bfE"(double %self) unnamed_addr #0 !dbg !5 {
start:
  %self.dbg.spill = alloca double, align 8
  store double %self, ptr %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !15, metadata !DIExpression()), !dbg !18
; call <f64 as core::convert::num::FloatToInt<i32>>::to_int_unchecked
  %0 = call i32 @"_ZN65_$LT$f64$u20$as$u20$core..convert..num..FloatToInt$LT$i32$GT$$GT$16to_int_unchecked17h5cda06c0f56457dbE"(double %self) #4, !dbg !19
  ret i32 %0, !dbg !20
}

; <f64 as core::convert::num::FloatToInt<i32>>::to_int_unchecked
; Function Attrs: inlinehint nounwind
define internal i32 @"_ZN65_$LT$f64$u20$as$u20$core..convert..num..FloatToInt$LT$i32$GT$$GT$16to_int_unchecked17h5cda06c0f56457dbE"(double %self) unnamed_addr #0 !dbg !21 {
start:
  %0 = alloca i32, align 4
  %self.dbg.spill = alloca double, align 8
  store double %self, ptr %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !27, metadata !DIExpression()), !dbg !29
  %1 = call i32 @llvm.wasm.trunc.signed.i32.f64(double %self), !dbg !30
  store i32 %1, ptr %0, align 4, !dbg !30
  %2 = load i32, ptr %0, align 4, !dbg !30
  ret i32 %2, !dbg !31
}

; probe2::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe25probe17hcadce6f91fb93abeE() unnamed_addr #1 !dbg !32 {
start:
; call core::f64::<impl f64>::to_int_unchecked
  %_1 = call i32 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$16to_int_unchecked17had7d0d242f3e40bfE"(double 1.000000e+00) #4, !dbg !37
  ret void, !dbg !38
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind readnone
declare hidden i32 @llvm.wasm.trunc.signed.i32.f64(double) #3

attributes #0 = { inlinehint nounwind "target-cpu"="generic" }
attributes #1 = { nounwind "target-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!2}
!llvm.module.flags = !{!3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.67.0 (fc594f156 2023-01-24))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "probe2/@/probe2.984614e9-cgu.0", directory: "/Users/journiemajohnson/.cargo/registry/src/github.com-1ecc6299db9ec823/num-traits-0.2.15")
!2 = !{!"rustc version 1.67.0 (fc594f156 2023-01-24)"}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = distinct !DISubprogram(name: "to_int_unchecked<i32>", linkageName: "_ZN4core3f6421_$LT$impl$u20$f64$GT$16to_int_unchecked17had7d0d242f3e40bfE", scope: !7, file: !6, line: 978, type: !10, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !16, retainedNodes: !14)
!6 = !DIFile(filename: "/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/core/src/num/f64.rs", directory: "", checksumkind: CSK_MD5, checksum: "ab373a71f2702ec955cb63b22857bf31")
!7 = !DINamespace(name: "{impl#0}", scope: !8)
!8 = !DINamespace(name: "f64", scope: !9)
!9 = !DINamespace(name: "core", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!13 = !DIBasicType(name: "f64", size: 64, encoding: DW_ATE_float)
!14 = !{!15}
!15 = !DILocalVariable(name: "self", arg: 1, scope: !5, file: !6, line: 978, type: !13)
!16 = !{!17}
!17 = !DITemplateTypeParameter(name: "Int", type: !12)
!18 = !DILocation(line: 978, column: 41, scope: !5)
!19 = !DILocation(line: 984, column: 18, scope: !5)
!20 = !DILocation(line: 985, column: 6, scope: !5)
!21 = distinct !DISubprogram(name: "to_int_unchecked", linkageName: "_ZN65_$LT$f64$u20$as$u20$core..convert..num..FloatToInt$LT$i32$GT$$GT$16to_int_unchecked17h5cda06c0f56457dbE", scope: !23, file: !22, line: 29, type: !10, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !26)
!22 = !DIFile(filename: "/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/core/src/convert/num.rs", directory: "", checksumkind: CSK_MD5, checksum: "26b2c27b2f62f498ef7a1a84a44f3423")
!23 = !DINamespace(name: "{impl#22}", scope: !24)
!24 = !DINamespace(name: "num", scope: !25)
!25 = !DINamespace(name: "convert", scope: !9)
!26 = !{!27}
!27 = !DILocalVariable(name: "self", arg: 1, scope: !21, file: !22, line: 29, type: !13)
!28 = !{}
!29 = !DILocation(line: 29, column: 44, scope: !21)
!30 = !DILocation(line: 31, column: 30, scope: !21)
!31 = !DILocation(line: 32, column: 18, scope: !21)
!32 = distinct !DISubprogram(name: "probe", linkageName: "_ZN6probe25probe17hcadce6f91fb93abeE", scope: !34, file: !33, line: 1, type: !35, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !28)
!33 = !DIFile(filename: "<anon>", directory: "", checksumkind: CSK_MD5, checksum: "b691dbdf770db888ec6eb1194ed0df31")
!34 = !DINamespace(name: "probe2", scope: null)
!35 = !DISubroutineType(types: !36)
!36 = !{null}
!37 = !DILocation(line: 1, column: 35, scope: !32)
!38 = !DILocation(line: 1, column: 70, scope: !39)
!39 = !DILexicalBlockFile(scope: !32, file: !33, discriminator: 0)
