; ModuleID = 'LoopGuarded.c'
source_filename = "LoopGuarded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @calcoli(i32* noundef %0, i32* noundef %1, i32* noundef %2, i32* noundef %3, i32 noundef %4) #0 !dbg !9 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4, !dbg !12
  %12 = load i32, i32* %10, align 4, !dbg !13
  %13 = icmp sgt i32 %12, 0, !dbg !14
  br i1 %13, label %14, label %39, !dbg !13

14:                                               ; preds = %5
  br label %15, !dbg !15

15:                                               ; preds = %34, %14
  %16 = load i32*, i32** %7, align 8, !dbg !16
  %17 = load i32, i32* %11, align 4, !dbg !17
  %18 = sext i32 %17 to i64, !dbg !16
  %19 = getelementptr inbounds i32, i32* %16, i64 %18, !dbg !16
  %20 = load i32, i32* %19, align 4, !dbg !16
  %21 = sdiv i32 1, %20, !dbg !18
  %22 = load i32*, i32** %8, align 8, !dbg !19
  %23 = load i32, i32* %11, align 4, !dbg !20
  %24 = sext i32 %23 to i64, !dbg !19
  %25 = getelementptr inbounds i32, i32* %22, i64 %24, !dbg !19
  %26 = load i32, i32* %25, align 4, !dbg !19
  %27 = mul nsw i32 %21, %26, !dbg !21
  %28 = load i32*, i32** %6, align 8, !dbg !22
  %29 = load i32, i32* %11, align 4, !dbg !23
  %30 = sext i32 %29 to i64, !dbg !22
  %31 = getelementptr inbounds i32, i32* %28, i64 %30, !dbg !22
  store i32 %27, i32* %31, align 4, !dbg !24
  %32 = load i32, i32* %11, align 4, !dbg !25
  %33 = add nsw i32 %32, 1, !dbg !25
  store i32 %33, i32* %11, align 4, !dbg !25
  br label %34, !dbg !26

34:                                               ; preds = %15
  %35 = load i32, i32* %11, align 4, !dbg !27
  %36 = load i32, i32* %10, align 4, !dbg !28
  %37 = icmp slt i32 %35, %36, !dbg !29
  br i1 %37, label %15, label %38, !dbg !26, !llvm.loop !30

38:                                               ; preds = %34
  br label %39, !dbg !33

39:                                               ; preds = %38, %5
  store i32 0, i32* %11, align 4, !dbg !34
  %40 = load i32, i32* %10, align 4, !dbg !35
  %41 = icmp sgt i32 %40, 0, !dbg !36
  br i1 %41, label %42, label %66, !dbg !35

42:                                               ; preds = %39
  br label %43, !dbg !37

43:                                               ; preds = %61, %42
  %44 = load i32*, i32** %6, align 8, !dbg !38
  %45 = load i32, i32* %11, align 4, !dbg !39
  %46 = sext i32 %45 to i64, !dbg !38
  %47 = getelementptr inbounds i32, i32* %44, i64 %46, !dbg !38
  %48 = load i32, i32* %47, align 4, !dbg !38
  %49 = load i32*, i32** %8, align 8, !dbg !40
  %50 = load i32, i32* %11, align 4, !dbg !41
  %51 = sext i32 %50 to i64, !dbg !40
  %52 = getelementptr inbounds i32, i32* %49, i64 %51, !dbg !40
  %53 = load i32, i32* %52, align 4, !dbg !40
  %54 = add nsw i32 %48, %53, !dbg !42
  %55 = load i32*, i32** %9, align 8, !dbg !43
  %56 = load i32, i32* %11, align 4, !dbg !44
  %57 = sext i32 %56 to i64, !dbg !43
  %58 = getelementptr inbounds i32, i32* %55, i64 %57, !dbg !43
  store i32 %54, i32* %58, align 4, !dbg !45
  %59 = load i32, i32* %11, align 4, !dbg !46
  %60 = add nsw i32 %59, 1, !dbg !46
  store i32 %60, i32* %11, align 4, !dbg !46
  br label %61, !dbg !47

61:                                               ; preds = %43
  %62 = load i32, i32* %11, align 4, !dbg !48
  %63 = load i32, i32* %10, align 4, !dbg !49
  %64 = icmp slt i32 %62, %63, !dbg !50
  br i1 %64, label %43, label %65, !dbg !47, !llvm.loop !51

65:                                               ; preds = %61
  br label %66, !dbg !53

66:                                               ; preds = %65, %39
  ret void, !dbg !54
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Debian clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "LoopGuarded.c", directory: "/home/ianno/LLVM_17/TEST/Assignment 4")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"Debian clang version 14.0.6"}
!9 = distinct !DISubprogram(name: "calcoli", scope: !1, file: !1, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 2, column: 9, scope: !9)
!13 = !DILocation(line: 4, column: 9, scope: !9)
!14 = !DILocation(line: 4, column: 11, scope: !9)
!15 = !DILocation(line: 5, column: 9, scope: !9)
!16 = !DILocation(line: 6, column: 22, scope: !9)
!17 = !DILocation(line: 6, column: 24, scope: !9)
!18 = !DILocation(line: 6, column: 21, scope: !9)
!19 = !DILocation(line: 6, column: 27, scope: !9)
!20 = !DILocation(line: 6, column: 29, scope: !9)
!21 = !DILocation(line: 6, column: 26, scope: !9)
!22 = !DILocation(line: 6, column: 13, scope: !9)
!23 = !DILocation(line: 6, column: 15, scope: !9)
!24 = !DILocation(line: 6, column: 18, scope: !9)
!25 = !DILocation(line: 7, column: 15, scope: !9)
!26 = !DILocation(line: 8, column: 9, scope: !9)
!27 = !DILocation(line: 8, column: 18, scope: !9)
!28 = !DILocation(line: 8, column: 22, scope: !9)
!29 = !DILocation(line: 8, column: 20, scope: !9)
!30 = distinct !{!30, !15, !31, !32}
!31 = !DILocation(line: 8, column: 23, scope: !9)
!32 = !{!"llvm.loop.mustprogress"}
!33 = !DILocation(line: 9, column: 5, scope: !9)
!34 = !DILocation(line: 10, column: 6, scope: !9)
!35 = !DILocation(line: 11, column: 9, scope: !9)
!36 = !DILocation(line: 11, column: 11, scope: !9)
!37 = !DILocation(line: 12, column: 9, scope: !9)
!38 = !DILocation(line: 13, column: 20, scope: !9)
!39 = !DILocation(line: 13, column: 22, scope: !9)
!40 = !DILocation(line: 13, column: 25, scope: !9)
!41 = !DILocation(line: 13, column: 27, scope: !9)
!42 = !DILocation(line: 13, column: 24, scope: !9)
!43 = !DILocation(line: 13, column: 13, scope: !9)
!44 = !DILocation(line: 13, column: 15, scope: !9)
!45 = !DILocation(line: 13, column: 18, scope: !9)
!46 = !DILocation(line: 14, column: 15, scope: !9)
!47 = !DILocation(line: 15, column: 9, scope: !9)
!48 = !DILocation(line: 15, column: 18, scope: !9)
!49 = !DILocation(line: 15, column: 22, scope: !9)
!50 = !DILocation(line: 15, column: 20, scope: !9)
!51 = distinct !{!51, !37, !52, !32}
!52 = !DILocation(line: 15, column: 23, scope: !9)
!53 = !DILocation(line: 16, column: 5, scope: !9)
!54 = !DILocation(line: 17, column: 1, scope: !9)
