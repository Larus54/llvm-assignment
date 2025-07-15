; ModuleID = 'LoopUnguarded.c'
source_filename = "LoopUnguarded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculateVectors(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32* noundef %3, i32* noundef %4) #0 !dbg !9 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4, !dbg !12
  br label %12, !dbg !13

12:                                               ; preds = %33, %5
  %13 = load i32, i32* %11, align 4, !dbg !14
  %14 = load i32, i32* %6, align 4, !dbg !15
  %15 = icmp slt i32 %13, %14, !dbg !16
  br i1 %15, label %16, label %36, !dbg !17

16:                                               ; preds = %12
  %17 = load i32*, i32** %8, align 8, !dbg !18
  %18 = load i32, i32* %11, align 4, !dbg !19
  %19 = sext i32 %18 to i64, !dbg !18
  %20 = getelementptr inbounds i32, i32* %17, i64 %19, !dbg !18
  %21 = load i32, i32* %20, align 4, !dbg !18
  %22 = sdiv i32 1, %21, !dbg !20
  %23 = load i32*, i32** %9, align 8, !dbg !21
  %24 = load i32, i32* %11, align 4, !dbg !22
  %25 = sext i32 %24 to i64, !dbg !21
  %26 = getelementptr inbounds i32, i32* %23, i64 %25, !dbg !21
  %27 = load i32, i32* %26, align 4, !dbg !21
  %28 = mul nsw i32 %22, %27, !dbg !23
  %29 = load i32*, i32** %7, align 8, !dbg !24
  %30 = load i32, i32* %11, align 4, !dbg !25
  %31 = sext i32 %30 to i64, !dbg !24
  %32 = getelementptr inbounds i32, i32* %29, i64 %31, !dbg !24
  store i32 %28, i32* %32, align 4, !dbg !26
  br label %33, !dbg !27

33:                                               ; preds = %16
  %34 = load i32, i32* %11, align 4, !dbg !28
  %35 = add nsw i32 %34, 1, !dbg !28
  store i32 %35, i32* %11, align 4, !dbg !28
  br label %12, !dbg !17, !llvm.loop !29

36:                                               ; preds = %12
  store i32 0, i32* %11, align 4, !dbg !31
  br label %37, !dbg !32

37:                                               ; preds = %57, %36
  %38 = load i32, i32* %11, align 4, !dbg !33
  %39 = load i32, i32* %6, align 4, !dbg !34
  %40 = icmp slt i32 %38, %39, !dbg !35
  br i1 %40, label %41, label %60, !dbg !36

41:                                               ; preds = %37
  %42 = load i32*, i32** %7, align 8, !dbg !37
  %43 = load i32, i32* %11, align 4, !dbg !38
  %44 = sext i32 %43 to i64, !dbg !37
  %45 = getelementptr inbounds i32, i32* %42, i64 %44, !dbg !37
  %46 = load i32, i32* %45, align 4, !dbg !37
  %47 = load i32*, i32** %9, align 8, !dbg !39
  %48 = load i32, i32* %11, align 4, !dbg !40
  %49 = sext i32 %48 to i64, !dbg !39
  %50 = getelementptr inbounds i32, i32* %47, i64 %49, !dbg !39
  %51 = load i32, i32* %50, align 4, !dbg !39
  %52 = add nsw i32 %46, %51, !dbg !41
  %53 = load i32*, i32** %10, align 8, !dbg !42
  %54 = load i32, i32* %11, align 4, !dbg !43
  %55 = sext i32 %54 to i64, !dbg !42
  %56 = getelementptr inbounds i32, i32* %53, i64 %55, !dbg !42
  store i32 %52, i32* %56, align 4, !dbg !44
  br label %57, !dbg !45

57:                                               ; preds = %41
  %58 = load i32, i32* %11, align 4, !dbg !46
  %59 = add nsw i32 %58, 1, !dbg !46
  store i32 %59, i32* %11, align 4, !dbg !46
  br label %37, !dbg !36, !llvm.loop !47

60:                                               ; preds = %37
  ret void, !dbg !48
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Debian clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "LoopUnguarded.c", directory: "/home/ianno/LLVM_17/TEST/Assignment 4")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"Debian clang version 14.0.6"}
!9 = distinct !DISubprogram(name: "calculateVectors", scope: !1, file: !1, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 3, column: 10, scope: !9)
!13 = !DILocation(line: 3, column: 8, scope: !9)
!14 = !DILocation(line: 3, column: 15, scope: !9)
!15 = !DILocation(line: 3, column: 19, scope: !9)
!16 = !DILocation(line: 3, column: 17, scope: !9)
!17 = !DILocation(line: 3, column: 3, scope: !9)
!18 = !DILocation(line: 4, column: 16, scope: !9)
!19 = !DILocation(line: 4, column: 18, scope: !9)
!20 = !DILocation(line: 4, column: 14, scope: !9)
!21 = !DILocation(line: 4, column: 23, scope: !9)
!22 = !DILocation(line: 4, column: 25, scope: !9)
!23 = !DILocation(line: 4, column: 21, scope: !9)
!24 = !DILocation(line: 4, column: 5, scope: !9)
!25 = !DILocation(line: 4, column: 7, scope: !9)
!26 = !DILocation(line: 4, column: 10, scope: !9)
!27 = !DILocation(line: 5, column: 3, scope: !9)
!28 = !DILocation(line: 3, column: 23, scope: !9)
!29 = distinct !{!29, !17, !27, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !DILocation(line: 7, column: 10, scope: !9)
!32 = !DILocation(line: 7, column: 8, scope: !9)
!33 = !DILocation(line: 7, column: 15, scope: !9)
!34 = !DILocation(line: 7, column: 19, scope: !9)
!35 = !DILocation(line: 7, column: 17, scope: !9)
!36 = !DILocation(line: 7, column: 3, scope: !9)
!37 = !DILocation(line: 8, column: 12, scope: !9)
!38 = !DILocation(line: 8, column: 14, scope: !9)
!39 = !DILocation(line: 8, column: 19, scope: !9)
!40 = !DILocation(line: 8, column: 21, scope: !9)
!41 = !DILocation(line: 8, column: 17, scope: !9)
!42 = !DILocation(line: 8, column: 5, scope: !9)
!43 = !DILocation(line: 8, column: 7, scope: !9)
!44 = !DILocation(line: 8, column: 10, scope: !9)
!45 = !DILocation(line: 9, column: 3, scope: !9)
!46 = !DILocation(line: 7, column: 23, scope: !9)
!47 = distinct !{!47, !36, !45, !30}
!48 = !DILocation(line: 10, column: 3, scope: !9)
