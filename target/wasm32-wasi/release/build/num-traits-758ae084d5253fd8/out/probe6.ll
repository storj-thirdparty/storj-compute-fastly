; ModuleID = 'probe6.64a03374-cgu.0'
source_filename = "probe6.64a03374-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@alloc3 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/core/src/num/mod.rs" }>, align 1
@alloc4 = private unnamed_addr constant <{ ptr, [12 x i8] }> <{ ptr @alloc3, [12 x i8] c"K\00\00\00\99\03\00\00\05\00\00\00" }>, align 4
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe6::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe65probe17h6c45db28a53c14cbE() unnamed_addr #0 !dbg !5 {
start:
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  store i32 1, ptr %self.dbg.spill.i, align 4
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill.i, metadata !11, metadata !DIExpression()), !dbg !22
  store i32 1, ptr %rhs.dbg.spill.i, align 4
  call void @llvm.dbg.declare(metadata ptr %rhs.dbg.spill.i, metadata !21, metadata !DIExpression()), !dbg !24
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false), !dbg !25
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h9046f310351c1d44E.exit", !dbg !25

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hc94d26720b98703eE(ptr align 1 @str.0, i32 25, ptr align 4 @alloc4) #4, !dbg !25
  unreachable, !dbg !25

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h9046f310351c1d44E.exit": ; preds = %start
  ret void, !dbg !26
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare hidden i1 @llvm.expect.i1(i1, i1) #2

; core::panicking::panic
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core9panicking5panic17hc94d26720b98703eE(ptr align 1, i32, ptr align 4) unnamed_addr #3

attributes #0 = { nounwind "target-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn nounwind "target-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!2}
!llvm.module.flags = !{!3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.67.0 (fc594f156 2023-01-24))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "probe6/@/probe6.64a03374-cgu.0", directory: "/Users/journiemajohnson/.cargo/registry/src/github.com-1ecc6299db9ec823/num-traits-0.2.15")
!2 = !{!"rustc version 1.67.0 (fc594f156 2023-01-24)"}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = distinct !DISubprogram(name: "probe", linkageName: "_ZN6probe65probe17h6c45db28a53c14cbE", scope: !7, file: !6, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !10, retainedNodes: !10)
!6 = !DIFile(filename: "<anon>", directory: "", checksumkind: CSK_MD5, checksum: "ba5543a6264010df82a4e051311d5726")
!7 = !DINamespace(name: "probe6", scope: null)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !{}
!11 = !DILocalVariable(name: "self", arg: 1, scope: !12, file: !13, line: 1979, type: !19)
!12 = distinct !DISubprogram(name: "div_euclid", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h9046f310351c1d44E", scope: !14, file: !13, line: 1979, type: !17, scopeLine: 1979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !10, retainedNodes: !20)
!13 = !DIFile(filename: "/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "262dcd21c0bc42a6f0502eabf004a344")
!14 = !DINamespace(name: "{impl#9}", scope: !15)
!15 = !DINamespace(name: "num", scope: !16)
!16 = !DINamespace(name: "core", scope: null)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19, !19}
!19 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!11, !21}
!21 = !DILocalVariable(name: "rhs", arg: 2, scope: !12, file: !13, line: 1979, type: !19)
!22 = !DILocation(line: 1979, column: 33, scope: !12, inlinedAt: !23)
!23 = distinct !DILocation(line: 1, column: 26, scope: !5)
!24 = !DILocation(line: 1979, column: 39, scope: !12, inlinedAt: !23)
!25 = !DILocation(line: 1980, column: 13, scope: !12, inlinedAt: !23)
!26 = !DILocation(line: 1, column: 50, scope: !27)
!27 = !DILexicalBlockFile(scope: !5, file: !6, discriminator: 0)
