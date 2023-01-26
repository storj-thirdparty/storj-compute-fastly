; ModuleID = 'probe3.35b3b1f1-cgu.0'
source_filename = "probe3.35b3b1f1-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

; probe3::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe35probe17h0efbb30d2460fb8aE() unnamed_addr #0 !dbg !5 {
start:
  %0 = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  store i32 1, ptr %self.dbg.spill.i, align 4
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill.i, metadata !11, metadata !DIExpression()), !dbg !21
  store i32 -2147483648, ptr %0, align 4, !dbg !23
  %1 = load i32, ptr %0, align 4, !dbg !23
  ret void, !dbg !24
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare hidden i32 @llvm.bitreverse.i32(i32) #1

attributes #0 = { nounwind "target-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!2}
!llvm.module.flags = !{!3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.67.0 (fc594f156 2023-01-24))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "probe3/@/probe3.35b3b1f1-cgu.0", directory: "/Users/journiemajohnson/.cargo/registry/src/github.com-1ecc6299db9ec823/num-traits-0.2.15")
!2 = !{!"rustc version 1.67.0 (fc594f156 2023-01-24)"}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = distinct !DISubprogram(name: "probe", linkageName: "_ZN6probe35probe17h0efbb30d2460fb8aE", scope: !7, file: !6, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !10, retainedNodes: !10)
!6 = !DIFile(filename: "<anon>", directory: "", checksumkind: CSK_MD5, checksum: "7e675ce338b2f129514ed2c095ce6ce1")
!7 = !DINamespace(name: "probe3", scope: null)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !{}
!11 = !DILocalVariable(name: "self", arg: 1, scope: !12, file: !13, line: 285, type: !19)
!12 = distinct !DISubprogram(name: "reverse_bits", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12reverse_bits17hf82a82d521b4c445E", scope: !14, file: !13, line: 285, type: !17, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !10, retainedNodes: !20)
!13 = !DIFile(filename: "/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "262dcd21c0bc42a6f0502eabf004a344")
!14 = !DINamespace(name: "{impl#9}", scope: !15)
!15 = !DINamespace(name: "num", scope: !16)
!16 = !DINamespace(name: "core", scope: null)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19}
!19 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!11}
!21 = !DILocation(line: 285, column: 35, scope: !12, inlinedAt: !22)
!22 = distinct !DILocation(line: 1, column: 26, scope: !5)
!23 = !DILocation(line: 286, column: 13, scope: !12, inlinedAt: !22)
!24 = !DILocation(line: 1, column: 48, scope: !25)
!25 = !DILexicalBlockFile(scope: !5, file: !6, discriminator: 0)
