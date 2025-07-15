; ModuleID = 'MultipleUnGuarded_O0.ll'
source_filename = "MultipleUnguarded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculateVectors(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !9 {
  br label %6, !dbg !12

6:                                                ; preds = %19, %5
  %.01 = phi i32 [ 0, %5 ], [ %20, %19 ], !dbg !13
  %7 = icmp slt i32 %.01, %0, !dbg !14
  br i1 %7, label %8, label %21, !dbg !15

8:                                                ; preds = %6
  %9 = sext i32 %.01 to i64, !dbg !16
  %10 = getelementptr inbounds i32, ptr %2, i64 %9, !dbg !16
  %11 = load i32, ptr %10, align 4, !dbg !16
  %12 = sdiv i32 1, %11, !dbg !17
  %13 = sext i32 %.01 to i64, !dbg !18
  %14 = getelementptr inbounds i32, ptr %3, i64 %13, !dbg !18
  %15 = load i32, ptr %14, align 4, !dbg !18
  %16 = mul nsw i32 %12, %15, !dbg !19
  %17 = sext i32 %.01 to i64, !dbg !20
  %18 = getelementptr inbounds i32, ptr %1, i64 %17, !dbg !20
  store i32 %16, ptr %18, align 4, !dbg !21
  br label %19, !dbg !22

19:                                               ; preds = %8
  %20 = add nsw i32 %.01, 1, !dbg !23
  br label %6, !dbg !15, !llvm.loop !24

21:                                               ; preds = %6
  br label %22, !dbg !26

22:                                               ; preds = %34, %21
  %.12 = phi i32 [ 0, %21 ], [ %35, %34 ], !dbg !27
  %23 = icmp slt i32 %.12, %0, !dbg !28
  br i1 %23, label %24, label %36, !dbg !29

24:                                               ; preds = %22
  %25 = sext i32 %.12 to i64, !dbg !30
  %26 = getelementptr inbounds i32, ptr %1, i64 %25, !dbg !30
  %27 = load i32, ptr %26, align 4, !dbg !30
  %28 = sext i32 %.12 to i64, !dbg !31
  %29 = getelementptr inbounds i32, ptr %3, i64 %28, !dbg !31
  %30 = load i32, ptr %29, align 4, !dbg !31
  %31 = add nsw i32 %27, %30, !dbg !32
  %32 = sext i32 %.12 to i64, !dbg !33
  %33 = getelementptr inbounds i32, ptr %4, i64 %32, !dbg !33
  store i32 %31, ptr %33, align 4, !dbg !34
  br label %34, !dbg !35

34:                                               ; preds = %24
  %35 = add nsw i32 %.12, 1, !dbg !36
  br label %22, !dbg !29, !llvm.loop !37

36:                                               ; preds = %22
  br label %37, !dbg !38

37:                                               ; preds = %50, %36
  %.0 = phi i32 [ 0, %36 ], [ %51, %50 ], !dbg !39
  %38 = icmp slt i32 %.0, 25, !dbg !40
  br i1 %38, label %39, label %52, !dbg !41

39:                                               ; preds = %37
  %40 = sext i32 %.0 to i64, !dbg !42
  %41 = getelementptr inbounds i32, ptr %2, i64 %40, !dbg !42
  %42 = load i32, ptr %41, align 4, !dbg !42
  %43 = sdiv i32 1, %42, !dbg !43
  %44 = sext i32 %.0 to i64, !dbg !44
  %45 = getelementptr inbounds i32, ptr %3, i64 %44, !dbg !44
  %46 = load i32, ptr %45, align 4, !dbg !44
  %47 = mul nsw i32 %43, %46, !dbg !45
  %48 = sext i32 %.0 to i64, !dbg !46
  %49 = getelementptr inbounds i32, ptr %1, i64 %48, !dbg !46
  store i32 %47, ptr %49, align 4, !dbg !47
  br label %50, !dbg !48

50:                                               ; preds = %39
  %51 = add nsw i32 %.0, 1, !dbg !49
  br label %37, !dbg !41, !llvm.loop !50

52:                                               ; preds = %37
  br label %53, !dbg !51

53:                                               ; preds = %65, %52
  %.1 = phi i32 [ 0, %52 ], [ %66, %65 ], !dbg !52
  %54 = icmp slt i32 %.1, 25, !dbg !53
  br i1 %54, label %55, label %67, !dbg !54

55:                                               ; preds = %53
  %56 = sext i32 %.1 to i64, !dbg !55
  %57 = getelementptr inbounds i32, ptr %1, i64 %56, !dbg !55
  %58 = load i32, ptr %57, align 4, !dbg !55
  %59 = sext i32 %.1 to i64, !dbg !56
  %60 = getelementptr inbounds i32, ptr %3, i64 %59, !dbg !56
  %61 = load i32, ptr %60, align 4, !dbg !56
  %62 = add nsw i32 %58, %61, !dbg !57
  %63 = sext i32 %.1 to i64, !dbg !58
  %64 = getelementptr inbounds i32, ptr %4, i64 %63, !dbg !58
  store i32 %62, ptr %64, align 4, !dbg !59
  br label %65, !dbg !60

65:                                               ; preds = %55
  %66 = add nsw i32 %.1, 1, !dbg !61
  br label %53, !dbg !54, !llvm.loop !62

67:                                               ; preds = %53
  ret void, !dbg !63
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Debian clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "MultipleUnguarded.c", directory: "/home/ianno/LLVM_17/TEST/Assignment 4")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"Debian clang version 14.0.6"}
!9 = distinct !DISubprogram(name: "calculateVectors", scope: !1, file: !1, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 3, column: 8, scope: !9)
!13 = !DILocation(line: 3, scope: !9)
!14 = !DILocation(line: 3, column: 17, scope: !9)
!15 = !DILocation(line: 3, column: 3, scope: !9)
!16 = !DILocation(line: 4, column: 16, scope: !9)
!17 = !DILocation(line: 4, column: 14, scope: !9)
!18 = !DILocation(line: 4, column: 23, scope: !9)
!19 = !DILocation(line: 4, column: 21, scope: !9)
!20 = !DILocation(line: 4, column: 5, scope: !9)
!21 = !DILocation(line: 4, column: 10, scope: !9)
!22 = !DILocation(line: 5, column: 3, scope: !9)
!23 = !DILocation(line: 3, column: 23, scope: !9)
!24 = distinct !{!24, !15, !22, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !DILocation(line: 7, column: 8, scope: !9)
!27 = !DILocation(line: 7, scope: !9)
!28 = !DILocation(line: 7, column: 17, scope: !9)
!29 = !DILocation(line: 7, column: 3, scope: !9)
!30 = !DILocation(line: 8, column: 12, scope: !9)
!31 = !DILocation(line: 8, column: 19, scope: !9)
!32 = !DILocation(line: 8, column: 17, scope: !9)
!33 = !DILocation(line: 8, column: 5, scope: !9)
!34 = !DILocation(line: 8, column: 10, scope: !9)
!35 = !DILocation(line: 9, column: 3, scope: !9)
!36 = !DILocation(line: 7, column: 23, scope: !9)
!37 = distinct !{!37, !29, !35, !25}
!38 = !DILocation(line: 13, column: 8, scope: !9)
!39 = !DILocation(line: 13, scope: !9)
!40 = !DILocation(line: 13, column: 17, scope: !9)
!41 = !DILocation(line: 13, column: 3, scope: !9)
!42 = !DILocation(line: 14, column: 16, scope: !9)
!43 = !DILocation(line: 14, column: 14, scope: !9)
!44 = !DILocation(line: 14, column: 23, scope: !9)
!45 = !DILocation(line: 14, column: 21, scope: !9)
!46 = !DILocation(line: 14, column: 5, scope: !9)
!47 = !DILocation(line: 14, column: 10, scope: !9)
!48 = !DILocation(line: 15, column: 3, scope: !9)
!49 = !DILocation(line: 13, column: 23, scope: !9)
!50 = distinct !{!50, !41, !48, !25}
!51 = !DILocation(line: 17, column: 8, scope: !9)
!52 = !DILocation(line: 17, scope: !9)
!53 = !DILocation(line: 17, column: 17, scope: !9)
!54 = !DILocation(line: 17, column: 3, scope: !9)
!55 = !DILocation(line: 18, column: 12, scope: !9)
!56 = !DILocation(line: 18, column: 19, scope: !9)
!57 = !DILocation(line: 18, column: 17, scope: !9)
!58 = !DILocation(line: 18, column: 5, scope: !9)
!59 = !DILocation(line: 18, column: 10, scope: !9)
!60 = !DILocation(line: 19, column: 3, scope: !9)
!61 = !DILocation(line: 17, column: 23, scope: !9)
!62 = distinct !{!62, !54, !60, !25}
!63 = !DILocation(line: 20, column: 3, scope: !9)
