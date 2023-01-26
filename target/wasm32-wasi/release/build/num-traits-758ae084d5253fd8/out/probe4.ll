; ModuleID = 'probe4.51d2d8b7-cgu.0'
source_filename = "probe4.51d2d8b7-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

; probe4::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe45probe17h6668201db30d2860E() unnamed_addr #0 !dbg !5 {
start:
  %0 = alloca i32, align 4
  %self.dbg.spill2.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  store i32 1, ptr %self.dbg.spill.i, align 4
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill.i, metadata !11, metadata !DIExpression()), !dbg !21
  store i32 -2, ptr %self.dbg.spill2.i, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill2.i, metadata !24, metadata !DIExpression()), !dbg !27
  store i32 1, ptr %0, align 4, !dbg !29
  %1 = load i32, ptr %0, align 4, !dbg !29
  ret void, !dbg !30
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare hidden i32 @llvm.cttz.i32(i32, i1 immarg) #1

attributes #0 = { nounwind "target-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!2}
!llvm.module.flags = !{!3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.67.0 (fc594f156 2023-01-24))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "probe4/@/probe4.51d2d8b7-cgu.0", directory: "/Users/journiemajohnson/.cargo/registry/src/github.com-1ecc6299db9ec823/num-traits-0.2.15")
!2 = !{!"rustc version 1.67.0 (fc594f156 2023-01-24)"}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = distinct !DISubprogram(name: "probe", linkageName: "_ZN6probe45probe17h6668201db30d2860E", scope: !7, file: !6, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !10, retainedNodes: !10)
!6 = !DIFile(filename: "<anon>", directory: "", checksumkind: CSK_MD5, checksum: "480b1f84b81cca5d1005ed3641be5c53")
!7 = !DINamespace(name: "probe4", scope: null)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !{}
!11 = !DILocalVariable(name: "self", arg: 1, scope: !12, file: !13, line: 192, type: !19)
!12 = distinct !DISubprogram(name: "trailing_ones", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$13trailing_ones17ha74f3041a7fe9d7cE", scope: !14, file: !13, line: 192, type: !17, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !10, retainedNodes: !20)
!13 = !DIFile(filename: "/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "262dcd21c0bc42a6f0502eabf004a344")
!14 = !DINamespace(name: "{impl#9}", scope: !15)
!15 = !DINamespace(name: "num", scope: !16)
!16 = !DINamespace(name: "core", scope: null)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19}
!19 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!11}
!21 = !DILocation(line: 192, column: 36, scope: !12, inlinedAt: !22)
!22 = distinct !DILocation(line: 1, column: 26, scope: !5)
!23 = !DILocation(line: 193, column: 13, scope: !12, inlinedAt: !22)
!24 = !DILocalVariable(name: "self", scope: !25, file: !13, line: 151, type: !19, align: 4)
!25 = distinct !DISubprogram(name: "trailing_zeros", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$14trailing_zeros17hf583e8a1ba83fd93E", scope: !14, file: !13, line: 151, type: !17, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !10, retainedNodes: !26)
!26 = !{!24}
!27 = !DILocation(line: 151, column: 37, scope: !25, inlinedAt: !28)
!28 = distinct !DILocation(line: 193, column: 13, scope: !12, inlinedAt: !22)
!29 = !DILocation(line: 152, column: 13, scope: !25, inlinedAt: !28)
!30 = !DILocation(line: 1, column: 49, scope: !31)
!31 = !DILexicalBlockFile(scope: !5, file: !6, discriminator: 0)
