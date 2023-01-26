; ModuleID = 'probe5.18c2e187-cgu.0'
source_filename = "probe5.18c2e187-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@alloc5 = private unnamed_addr constant <{ [77 x i8] }> <{ [77 x i8] c"/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/core/src/ops/arith.rs" }>, align 1
@alloc6 = private unnamed_addr constant <{ ptr, [12 x i8] }> <{ ptr @alloc5, [12 x i8] c"M\00\00\00\02\03\00\00\01\00\00\00" }>, align 4
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc3 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 4

; <i32 as core::ops::arith::AddAssign<&i32>>::add_assign
; Function Attrs: inlinehint nounwind
define internal void @"_ZN66_$LT$i32$u20$as$u20$core..ops..arith..AddAssign$LT$$RF$i32$GT$$GT$10add_assign17h0456171f3aa5b90dE"(ptr align 4 %self, ptr align 4 %other) unnamed_addr #0 !dbg !5 {
start:
  %other.dbg.spill3 = alloca i32, align 4
  %self.dbg.spill1 = alloca ptr, align 4
  %other.dbg.spill = alloca ptr, align 4
  %self.dbg.spill = alloca ptr, align 4
  store ptr %self, ptr %self.dbg.spill, align 4
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill, metadata !17, metadata !DIExpression()), !dbg !20
  store ptr %other, ptr %other.dbg.spill, align 4
  call void @llvm.dbg.declare(metadata ptr %other.dbg.spill, metadata !18, metadata !DIExpression()), !dbg !21
  store ptr %self, ptr %self.dbg.spill1, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata ptr %self.dbg.spill1, metadata !23, metadata !DIExpression()), !dbg !31
  %other2 = load i32, ptr %other, align 4, !dbg !33
  store i32 %other2, ptr %other.dbg.spill3, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata ptr %other.dbg.spill3, metadata !30, metadata !DIExpression()), !dbg !34
  %0 = load i32, ptr %self, align 4, !dbg !35
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %other2), !dbg !35
  %_6.0 = extractvalue { i32, i1 } %1, 0, !dbg !35
  %_6.1 = extractvalue { i32, i1 } %1, 1, !dbg !35
  %2 = call i1 @llvm.expect.i1(i1 %_6.1, i1 false), !dbg !35
  br i1 %2, label %panic, label %bb1, !dbg !35

bb1:                                              ; preds = %start
  store i32 %_6.0, ptr %self, align 4, !dbg !35
  ret void, !dbg !36

panic:                                            ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hc94d26720b98703eE(ptr align 1 @str.0, i32 28, ptr align 4 @alloc6) #5, !dbg !35
  unreachable, !dbg !35
}

; probe5::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe55probe17h1107d6c74c85e4edE() unnamed_addr #1 !dbg !37 {
start:
  %x = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %x, metadata !43, metadata !DIExpression()), !dbg !45
  store i32 1, ptr %x, align 4, !dbg !46
; call <i32 as core::ops::arith::AddAssign<&i32>>::add_assign
  call void @"_ZN66_$LT$i32$u20$as$u20$core..ops..arith..AddAssign$LT$$RF$i32$GT$$GT$10add_assign17h0456171f3aa5b90dE"(ptr align 4 %x, ptr align 4 @alloc3) #6, !dbg !47
  ret void, !dbg !48
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare hidden { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare hidden i1 @llvm.expect.i1(i1, i1) #3

; core::panicking::panic
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core9panicking5panic17hc94d26720b98703eE(ptr align 1, i32, ptr align 4) unnamed_addr #4

attributes #0 = { inlinehint nounwind "target-cpu"="generic" }
attributes #1 = { nounwind "target-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noinline noreturn nounwind "target-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!2}
!llvm.module.flags = !{!3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.67.0 (fc594f156 2023-01-24))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "probe5/@/probe5.18c2e187-cgu.0", directory: "/Users/journiemajohnson/.cargo/registry/src/github.com-1ecc6299db9ec823/num-traits-0.2.15")
!2 = !{!"rustc version 1.67.0 (fc594f156 2023-01-24)"}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = distinct !DISubprogram(name: "add_assign", linkageName: "_ZN66_$LT$i32$u20$as$u20$core..ops..arith..AddAssign$LT$$RF$i32$GT$$GT$10add_assign17h0456171f3aa5b90dE", scope: !7, file: !6, line: 126, type: !11, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !16)
!6 = !DIFile(filename: "/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/core/src/internal_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "e63771959055ac6eeea73519b0063b2f")
!7 = !DINamespace(name: "{impl#319}", scope: !8)
!8 = !DINamespace(name: "arith", scope: !9)
!9 = !DINamespace(name: "ops", scope: !10)
!10 = !DINamespace(name: "core", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut i32", baseType: !14, size: 32, align: 32, dwarfAddressSpace: 0)
!14 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&i32", baseType: !14, size: 32, align: 32, dwarfAddressSpace: 0)
!16 = !{!17, !18}
!17 = !DILocalVariable(name: "self", arg: 1, scope: !5, file: !6, line: 126, type: !13)
!18 = !DILocalVariable(name: "other", arg: 2, scope: !5, file: !6, line: 126, type: !15)
!19 = !{}
!20 = !DILocation(line: 126, column: 24, scope: !5)
!21 = !DILocation(line: 126, column: 35, scope: !5)
!22 = !DILocation(line: 127, column: 31, scope: !5)
!23 = !DILocalVariable(name: "self", scope: !24, file: !25, line: 763, type: !13, align: 4)
!24 = distinct !DISubprogram(name: "add_assign", linkageName: "_ZN51_$LT$i32$u20$as$u20$core..ops..arith..AddAssign$GT$10add_assign17hf97048031c4d84a2E", scope: !26, file: !25, line: 763, type: !27, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !29)
!25 = !DIFile(filename: "/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/core/src/ops/arith.rs", directory: "", checksumkind: CSK_MD5, checksum: "fd974cf53dc39f8e5e67d6b940d922e1")
!26 = !DINamespace(name: "{impl#305}", scope: !8)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !13, !14}
!29 = !{!23, !30}
!30 = !DILocalVariable(name: "other", scope: !24, file: !25, line: 763, type: !14, align: 4)
!31 = !DILocation(line: 763, column: 27, scope: !24, inlinedAt: !32)
!32 = !DILocation(line: 127, column: 17, scope: !5)
!33 = !DILocation(line: 127, column: 37, scope: !5)
!34 = !DILocation(line: 763, column: 38, scope: !24, inlinedAt: !32)
!35 = !DILocation(line: 763, column: 51, scope: !24, inlinedAt: !32)
!36 = !DILocation(line: 128, column: 14, scope: !5)
!37 = distinct !DISubprogram(name: "probe", linkageName: "_ZN6probe55probe17h1107d6c74c85e4edE", scope: !39, file: !38, line: 1, type: !40, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !42)
!38 = !DIFile(filename: "<anon>", directory: "", checksumkind: CSK_MD5, checksum: "c9f62eb2fe042f920d6370c2956f3e5e")
!39 = !DINamespace(name: "probe5", scope: null)
!40 = !DISubroutineType(types: !41)
!41 = !{null}
!42 = !{!43}
!43 = !DILocalVariable(name: "x", scope: !44, file: !38, line: 1, type: !14, align: 4)
!44 = distinct !DILexicalBlock(scope: !37, file: !38, line: 1, column: 28)
!45 = !DILocation(line: 1, column: 32, scope: !44)
!46 = !DILocation(line: 1, column: 40, scope: !37)
!47 = !DILocation(line: 1, column: 43, scope: !44)
!48 = !DILocation(line: 1, column: 56, scope: !49)
!49 = !DILexicalBlockFile(scope: !37, file: !38, discriminator: 0)
