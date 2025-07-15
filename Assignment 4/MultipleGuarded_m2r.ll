; ModuleID = 'MultipleGuarded_O0.ll'
source_filename = "MultipleGuarded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @calcoli(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !9 {
  %6 = icmp sgt i32 %4, 0, !dbg !12
  br i1 %6, label %7, label %23, !dbg !13

7:                                                ; preds = %5
  br label %8, !dbg !14

8:                                                ; preds = %20, %7
  %.01 = phi i32 [ 0, %7 ], [ %19, %20 ], !dbg !15
  %9 = sext i32 %.01 to i64, !dbg !16
  %10 = getelementptr inbounds i32, ptr %1, i64 %9, !dbg !16
  %11 = load i32, ptr %10, align 4, !dbg !16
  %12 = sdiv i32 1, %11, !dbg !17
  %13 = sext i32 %.01 to i64, !dbg !18
  %14 = getelementptr inbounds i32, ptr %2, i64 %13, !dbg !18
  %15 = load i32, ptr %14, align 4, !dbg !18
  %16 = mul nsw i32 %12, %15, !dbg !19
  %17 = sext i32 %.01 to i64, !dbg !20
  %18 = getelementptr inbounds i32, ptr %0, i64 %17, !dbg !20
  store i32 %16, ptr %18, align 4, !dbg !21
  %19 = add nsw i32 %.01, 1, !dbg !22
  br label %20, !dbg !23

20:                                               ; preds = %8
  %21 = icmp slt i32 %19, %4, !dbg !24
  br i1 %21, label %8, label %22, !dbg !23, !llvm.loop !25

22:                                               ; preds = %20
  br label %23, !dbg !28

23:                                               ; preds = %22, %5
  %24 = icmp sgt i32 %4, 0, !dbg !29
  br i1 %24, label %25, label %40, !dbg !30

25:                                               ; preds = %23
  br label %26, !dbg !31

26:                                               ; preds = %37, %25
  %.12 = phi i32 [ 0, %25 ], [ %36, %37 ], !dbg !15
  %27 = sext i32 %.12 to i64, !dbg !32
  %28 = getelementptr inbounds i32, ptr %0, i64 %27, !dbg !32
  %29 = load i32, ptr %28, align 4, !dbg !32
  %30 = sext i32 %.12 to i64, !dbg !33
  %31 = getelementptr inbounds i32, ptr %2, i64 %30, !dbg !33
  %32 = load i32, ptr %31, align 4, !dbg !33
  %33 = add nsw i32 %29, %32, !dbg !34
  %34 = sext i32 %.12 to i64, !dbg !35
  %35 = getelementptr inbounds i32, ptr %3, i64 %34, !dbg !35
  store i32 %33, ptr %35, align 4, !dbg !36
  %36 = add nsw i32 %.12, 1, !dbg !37
  br label %37, !dbg !38

37:                                               ; preds = %26
  %38 = icmp slt i32 %36, %4, !dbg !39
  br i1 %38, label %26, label %39, !dbg !38, !llvm.loop !40

39:                                               ; preds = %37
  br label %40, !dbg !42

40:                                               ; preds = %39, %23
  %41 = icmp sgt i32 25, 0, !dbg !43
  br i1 %41, label %42, label %58, !dbg !44

42:                                               ; preds = %40
  br label %43, !dbg !45

43:                                               ; preds = %55, %42
  %.0 = phi i32 [ 0, %42 ], [ %54, %55 ], !dbg !15
  %44 = sext i32 %.0 to i64, !dbg !46
  %45 = getelementptr inbounds i32, ptr %1, i64 %44, !dbg !46
  %46 = load i32, ptr %45, align 4, !dbg !46
  %47 = sdiv i32 1, %46, !dbg !47
  %48 = sext i32 %.0 to i64, !dbg !48
  %49 = getelementptr inbounds i32, ptr %2, i64 %48, !dbg !48
  %50 = load i32, ptr %49, align 4, !dbg !48
  %51 = mul nsw i32 %47, %50, !dbg !49
  %52 = sext i32 %.0 to i64, !dbg !50
  %53 = getelementptr inbounds i32, ptr %0, i64 %52, !dbg !50
  store i32 %51, ptr %53, align 4, !dbg !51
  %54 = add nsw i32 %.0, 1, !dbg !52
  br label %55, !dbg !53

55:                                               ; preds = %43
  %56 = icmp slt i32 %54, 25, !dbg !54
  br i1 %56, label %43, label %57, !dbg !53, !llvm.loop !55

57:                                               ; preds = %55
  br label %58, !dbg !57

58:                                               ; preds = %57, %40
  %59 = icmp sgt i32 25, 0, !dbg !58
  br i1 %59, label %60, label %75, !dbg !59

60:                                               ; preds = %58
  br label %61, !dbg !60

61:                                               ; preds = %72, %60
  %.1 = phi i32 [ 0, %60 ], [ %71, %72 ], !dbg !15
  %62 = sext i32 %.1 to i64, !dbg !61
  %63 = getelementptr inbounds i32, ptr %0, i64 %62, !dbg !61
  %64 = load i32, ptr %63, align 4, !dbg !61
  %65 = sext i32 %.1 to i64, !dbg !62
  %66 = getelementptr inbounds i32, ptr %2, i64 %65, !dbg !62
  %67 = load i32, ptr %66, align 4, !dbg !62
  %68 = add nsw i32 %64, %67, !dbg !63
  %69 = sext i32 %.1 to i64, !dbg !64
  %70 = getelementptr inbounds i32, ptr %3, i64 %69, !dbg !64
  store i32 %68, ptr %70, align 4, !dbg !65
  %71 = add nsw i32 %.1, 1, !dbg !66
  br label %72, !dbg !67

72:                                               ; preds = %61
  %73 = icmp slt i32 %71, 25, !dbg !68
  br i1 %73, label %61, label %74, !dbg !67, !llvm.loop !69

74:                                               ; preds = %72
  br label %75, !dbg !71

75:                                               ; preds = %74, %58
  ret void, !dbg !72
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Debian clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "MultipleGuarded.c", directory: "/home/ianno/LLVM_17/TEST/Assignment 4")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"Debian clang version 14.0.6"}
!9 = distinct !DISubprogram(name: "calcoli", scope: !1, file: !1, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 3, column: 11, scope: !9)
!13 = !DILocation(line: 3, column: 9, scope: !9)
!14 = !DILocation(line: 4, column: 9, scope: !9)
!15 = !DILocation(line: 0, scope: !9)
!16 = !DILocation(line: 5, column: 22, scope: !9)
!17 = !DILocation(line: 5, column: 21, scope: !9)
!18 = !DILocation(line: 5, column: 27, scope: !9)
!19 = !DILocation(line: 5, column: 26, scope: !9)
!20 = !DILocation(line: 5, column: 13, scope: !9)
!21 = !DILocation(line: 5, column: 18, scope: !9)
!22 = !DILocation(line: 6, column: 15, scope: !9)
!23 = !DILocation(line: 7, column: 9, scope: !9)
!24 = !DILocation(line: 7, column: 20, scope: !9)
!25 = distinct !{!25, !14, !26, !27}
!26 = !DILocation(line: 7, column: 23, scope: !9)
!27 = !{!"llvm.loop.mustprogress"}
!28 = !DILocation(line: 8, column: 5, scope: !9)
!29 = !DILocation(line: 10, column: 11, scope: !9)
!30 = !DILocation(line: 10, column: 9, scope: !9)
!31 = !DILocation(line: 11, column: 9, scope: !9)
!32 = !DILocation(line: 12, column: 20, scope: !9)
!33 = !DILocation(line: 12, column: 25, scope: !9)
!34 = !DILocation(line: 12, column: 24, scope: !9)
!35 = !DILocation(line: 12, column: 13, scope: !9)
!36 = !DILocation(line: 12, column: 18, scope: !9)
!37 = !DILocation(line: 13, column: 15, scope: !9)
!38 = !DILocation(line: 14, column: 9, scope: !9)
!39 = !DILocation(line: 14, column: 20, scope: !9)
!40 = distinct !{!40, !31, !41, !27}
!41 = !DILocation(line: 14, column: 23, scope: !9)
!42 = !DILocation(line: 15, column: 5, scope: !9)
!43 = !DILocation(line: 19, column: 11, scope: !9)
!44 = !DILocation(line: 19, column: 9, scope: !9)
!45 = !DILocation(line: 20, column: 9, scope: !9)
!46 = !DILocation(line: 21, column: 22, scope: !9)
!47 = !DILocation(line: 21, column: 21, scope: !9)
!48 = !DILocation(line: 21, column: 27, scope: !9)
!49 = !DILocation(line: 21, column: 26, scope: !9)
!50 = !DILocation(line: 21, column: 13, scope: !9)
!51 = !DILocation(line: 21, column: 18, scope: !9)
!52 = !DILocation(line: 22, column: 15, scope: !9)
!53 = !DILocation(line: 23, column: 9, scope: !9)
!54 = !DILocation(line: 23, column: 20, scope: !9)
!55 = distinct !{!55, !45, !56, !27}
!56 = !DILocation(line: 23, column: 23, scope: !9)
!57 = !DILocation(line: 24, column: 5, scope: !9)
!58 = !DILocation(line: 26, column: 11, scope: !9)
!59 = !DILocation(line: 26, column: 9, scope: !9)
!60 = !DILocation(line: 27, column: 9, scope: !9)
!61 = !DILocation(line: 28, column: 20, scope: !9)
!62 = !DILocation(line: 28, column: 25, scope: !9)
!63 = !DILocation(line: 28, column: 24, scope: !9)
!64 = !DILocation(line: 28, column: 13, scope: !9)
!65 = !DILocation(line: 28, column: 18, scope: !9)
!66 = !DILocation(line: 29, column: 15, scope: !9)
!67 = !DILocation(line: 30, column: 9, scope: !9)
!68 = !DILocation(line: 30, column: 20, scope: !9)
!69 = distinct !{!69, !60, !70, !27}
!70 = !DILocation(line: 30, column: 23, scope: !9)
!71 = !DILocation(line: 31, column: 5, scope: !9)
!72 = !DILocation(line: 32, column: 1, scope: !9)
