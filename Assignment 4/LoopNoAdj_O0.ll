; ModuleID = 'LoopNoAdj.c'
source_filename = "LoopNoAdj.c"
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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4, !dbg !12
  store i32 5, i32* %12, align 4, !dbg !13
  %14 = load i32, i32* %10, align 4, !dbg !14
  %15 = icmp sgt i32 %14, 0, !dbg !15
  br i1 %15, label %16, label %41, !dbg !14

16:                                               ; preds = %5
  br label %17, !dbg !16

17:                                               ; preds = %36, %16
  %18 = load i32*, i32** %7, align 8, !dbg !17
  %19 = load i32, i32* %11, align 4, !dbg !18
  %20 = sext i32 %19 to i64, !dbg !17
  %21 = getelementptr inbounds i32, i32* %18, i64 %20, !dbg !17
  %22 = load i32, i32* %21, align 4, !dbg !17
  %23 = sdiv i32 1, %22, !dbg !19
  %24 = load i32*, i32** %8, align 8, !dbg !20
  %25 = load i32, i32* %11, align 4, !dbg !21
  %26 = sext i32 %25 to i64, !dbg !20
  %27 = getelementptr inbounds i32, i32* %24, i64 %26, !dbg !20
  %28 = load i32, i32* %27, align 4, !dbg !20
  %29 = mul nsw i32 %23, %28, !dbg !22
  %30 = load i32*, i32** %6, align 8, !dbg !23
  %31 = load i32, i32* %11, align 4, !dbg !24
  %32 = sext i32 %31 to i64, !dbg !23
  %33 = getelementptr inbounds i32, i32* %30, i64 %32, !dbg !23
  store i32 %29, i32* %33, align 4, !dbg !25
  %34 = load i32, i32* %11, align 4, !dbg !26
  %35 = add nsw i32 %34, 1, !dbg !26
  store i32 %35, i32* %11, align 4, !dbg !26
  br label %36, !dbg !27

36:                                               ; preds = %17
  %37 = load i32, i32* %11, align 4, !dbg !28
  %38 = load i32, i32* %10, align 4, !dbg !29
  %39 = icmp slt i32 %37, %38, !dbg !30
  br i1 %39, label %17, label %40, !dbg !27, !llvm.loop !31

40:                                               ; preds = %36
  br label %41, !dbg !34

41:                                               ; preds = %40, %5
  store i32 0, i32* %11, align 4, !dbg !35
  %42 = load i32, i32* %12, align 4, !dbg !36
  %43 = icmp sgt i32 %42, 0, !dbg !37
  br i1 %43, label %44, label %47, !dbg !36

44:                                               ; preds = %41
  store i32 0, i32* %13, align 4, !dbg !38
  store i32 5, i32* %13, align 4, !dbg !39
  %45 = load i32, i32* %12, align 4, !dbg !40
  %46 = add nsw i32 %45, -1, !dbg !40
  store i32 %46, i32* %12, align 4, !dbg !40
  br label %47, !dbg !41

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %10, align 4, !dbg !42
  %49 = icmp sgt i32 %48, 0, !dbg !43
  br i1 %49, label %50, label %74, !dbg !42

50:                                               ; preds = %47
  br label %51, !dbg !44

51:                                               ; preds = %69, %50
  %52 = load i32*, i32** %6, align 8, !dbg !45
  %53 = load i32, i32* %11, align 4, !dbg !46
  %54 = sext i32 %53 to i64, !dbg !45
  %55 = getelementptr inbounds i32, i32* %52, i64 %54, !dbg !45
  %56 = load i32, i32* %55, align 4, !dbg !45
  %57 = load i32*, i32** %8, align 8, !dbg !47
  %58 = load i32, i32* %11, align 4, !dbg !48
  %59 = sext i32 %58 to i64, !dbg !47
  %60 = getelementptr inbounds i32, i32* %57, i64 %59, !dbg !47
  %61 = load i32, i32* %60, align 4, !dbg !47
  %62 = add nsw i32 %56, %61, !dbg !49
  %63 = load i32*, i32** %9, align 8, !dbg !50
  %64 = load i32, i32* %11, align 4, !dbg !51
  %65 = sext i32 %64 to i64, !dbg !50
  %66 = getelementptr inbounds i32, i32* %63, i64 %65, !dbg !50
  store i32 %62, i32* %66, align 4, !dbg !52
  %67 = load i32, i32* %11, align 4, !dbg !53
  %68 = add nsw i32 %67, 1, !dbg !53
  store i32 %68, i32* %11, align 4, !dbg !53
  br label %69, !dbg !54

69:                                               ; preds = %51
  %70 = load i32, i32* %11, align 4, !dbg !55
  %71 = load i32, i32* %10, align 4, !dbg !56
  %72 = icmp slt i32 %70, %71, !dbg !57
  br i1 %72, label %51, label %73, !dbg !54, !llvm.loop !58

73:                                               ; preds = %69
  br label %74, !dbg !60

74:                                               ; preds = %73, %47
  ret void, !dbg !61
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Debian clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "LoopNoAdj.c", directory: "/home/ianno/LLVM_17/TEST/Assignment 4")
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
!13 = !DILocation(line: 3, column: 9, scope: !9)
!14 = !DILocation(line: 4, column: 9, scope: !9)
!15 = !DILocation(line: 4, column: 11, scope: !9)
!16 = !DILocation(line: 5, column: 9, scope: !9)
!17 = !DILocation(line: 6, column: 22, scope: !9)
!18 = !DILocation(line: 6, column: 24, scope: !9)
!19 = !DILocation(line: 6, column: 21, scope: !9)
!20 = !DILocation(line: 6, column: 27, scope: !9)
!21 = !DILocation(line: 6, column: 29, scope: !9)
!22 = !DILocation(line: 6, column: 26, scope: !9)
!23 = !DILocation(line: 6, column: 13, scope: !9)
!24 = !DILocation(line: 6, column: 15, scope: !9)
!25 = !DILocation(line: 6, column: 18, scope: !9)
!26 = !DILocation(line: 7, column: 15, scope: !9)
!27 = !DILocation(line: 8, column: 9, scope: !9)
!28 = !DILocation(line: 8, column: 18, scope: !9)
!29 = !DILocation(line: 8, column: 22, scope: !9)
!30 = !DILocation(line: 8, column: 20, scope: !9)
!31 = distinct !{!31, !16, !32, !33}
!32 = !DILocation(line: 8, column: 23, scope: !9)
!33 = !{!"llvm.loop.mustprogress"}
!34 = !DILocation(line: 9, column: 5, scope: !9)
!35 = !DILocation(line: 10, column: 6, scope: !9)
!36 = !DILocation(line: 11, column: 8, scope: !9)
!37 = !DILocation(line: 11, column: 9, scope: !9)
!38 = !DILocation(line: 13, column: 10, scope: !9)
!39 = !DILocation(line: 14, column: 8, scope: !9)
!40 = !DILocation(line: 15, column: 7, scope: !9)
!41 = !DILocation(line: 16, column: 5, scope: !9)
!42 = !DILocation(line: 17, column: 9, scope: !9)
!43 = !DILocation(line: 17, column: 11, scope: !9)
!44 = !DILocation(line: 18, column: 9, scope: !9)
!45 = !DILocation(line: 19, column: 20, scope: !9)
!46 = !DILocation(line: 19, column: 22, scope: !9)
!47 = !DILocation(line: 19, column: 25, scope: !9)
!48 = !DILocation(line: 19, column: 27, scope: !9)
!49 = !DILocation(line: 19, column: 24, scope: !9)
!50 = !DILocation(line: 19, column: 13, scope: !9)
!51 = !DILocation(line: 19, column: 15, scope: !9)
!52 = !DILocation(line: 19, column: 18, scope: !9)
!53 = !DILocation(line: 20, column: 15, scope: !9)
!54 = !DILocation(line: 21, column: 9, scope: !9)
!55 = !DILocation(line: 21, column: 18, scope: !9)
!56 = !DILocation(line: 21, column: 22, scope: !9)
!57 = !DILocation(line: 21, column: 20, scope: !9)
!58 = distinct !{!58, !44, !59, !33}
!59 = !DILocation(line: 21, column: 23, scope: !9)
!60 = !DILocation(line: 22, column: 5, scope: !9)
!61 = !DILocation(line: 23, column: 1, scope: !9)
