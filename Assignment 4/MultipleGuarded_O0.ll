; ModuleID = 'MultipleGuarded.c'
source_filename = "MultipleGuarded.c"
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
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4, !dbg !12
  %13 = load i32, i32* %10, align 4, !dbg !13
  %14 = icmp sgt i32 %13, 0, !dbg !14
  br i1 %14, label %15, label %40, !dbg !13

15:                                               ; preds = %5
  br label %16, !dbg !15

16:                                               ; preds = %35, %15
  %17 = load i32*, i32** %7, align 8, !dbg !16
  %18 = load i32, i32* %11, align 4, !dbg !17
  %19 = sext i32 %18 to i64, !dbg !16
  %20 = getelementptr inbounds i32, i32* %17, i64 %19, !dbg !16
  %21 = load i32, i32* %20, align 4, !dbg !16
  %22 = sdiv i32 1, %21, !dbg !18
  %23 = load i32*, i32** %8, align 8, !dbg !19
  %24 = load i32, i32* %11, align 4, !dbg !20
  %25 = sext i32 %24 to i64, !dbg !19
  %26 = getelementptr inbounds i32, i32* %23, i64 %25, !dbg !19
  %27 = load i32, i32* %26, align 4, !dbg !19
  %28 = mul nsw i32 %22, %27, !dbg !21
  %29 = load i32*, i32** %6, align 8, !dbg !22
  %30 = load i32, i32* %11, align 4, !dbg !23
  %31 = sext i32 %30 to i64, !dbg !22
  %32 = getelementptr inbounds i32, i32* %29, i64 %31, !dbg !22
  store i32 %28, i32* %32, align 4, !dbg !24
  %33 = load i32, i32* %11, align 4, !dbg !25
  %34 = add nsw i32 %33, 1, !dbg !25
  store i32 %34, i32* %11, align 4, !dbg !25
  br label %35, !dbg !26

35:                                               ; preds = %16
  %36 = load i32, i32* %11, align 4, !dbg !27
  %37 = load i32, i32* %10, align 4, !dbg !28
  %38 = icmp slt i32 %36, %37, !dbg !29
  br i1 %38, label %16, label %39, !dbg !26, !llvm.loop !30

39:                                               ; preds = %35
  br label %40, !dbg !33

40:                                               ; preds = %39, %5
  store i32 0, i32* %11, align 4, !dbg !34
  %41 = load i32, i32* %10, align 4, !dbg !35
  %42 = icmp sgt i32 %41, 0, !dbg !36
  br i1 %42, label %43, label %67, !dbg !35

43:                                               ; preds = %40
  br label %44, !dbg !37

44:                                               ; preds = %62, %43
  %45 = load i32*, i32** %6, align 8, !dbg !38
  %46 = load i32, i32* %11, align 4, !dbg !39
  %47 = sext i32 %46 to i64, !dbg !38
  %48 = getelementptr inbounds i32, i32* %45, i64 %47, !dbg !38
  %49 = load i32, i32* %48, align 4, !dbg !38
  %50 = load i32*, i32** %8, align 8, !dbg !40
  %51 = load i32, i32* %11, align 4, !dbg !41
  %52 = sext i32 %51 to i64, !dbg !40
  %53 = getelementptr inbounds i32, i32* %50, i64 %52, !dbg !40
  %54 = load i32, i32* %53, align 4, !dbg !40
  %55 = add nsw i32 %49, %54, !dbg !42
  %56 = load i32*, i32** %9, align 8, !dbg !43
  %57 = load i32, i32* %11, align 4, !dbg !44
  %58 = sext i32 %57 to i64, !dbg !43
  %59 = getelementptr inbounds i32, i32* %56, i64 %58, !dbg !43
  store i32 %55, i32* %59, align 4, !dbg !45
  %60 = load i32, i32* %11, align 4, !dbg !46
  %61 = add nsw i32 %60, 1, !dbg !46
  store i32 %61, i32* %11, align 4, !dbg !46
  br label %62, !dbg !47

62:                                               ; preds = %44
  %63 = load i32, i32* %11, align 4, !dbg !48
  %64 = load i32, i32* %10, align 4, !dbg !49
  %65 = icmp slt i32 %63, %64, !dbg !50
  br i1 %65, label %44, label %66, !dbg !47, !llvm.loop !51

66:                                               ; preds = %62
  br label %67, !dbg !53

67:                                               ; preds = %66, %40
  store i32 0, i32* %12, align 4, !dbg !54
  store i32 25, i32* %10, align 4, !dbg !55
  %68 = load i32, i32* %10, align 4, !dbg !56
  %69 = icmp sgt i32 %68, 0, !dbg !57
  br i1 %69, label %70, label %95, !dbg !56

70:                                               ; preds = %67
  br label %71, !dbg !58

71:                                               ; preds = %90, %70
  %72 = load i32*, i32** %7, align 8, !dbg !59
  %73 = load i32, i32* %12, align 4, !dbg !60
  %74 = sext i32 %73 to i64, !dbg !59
  %75 = getelementptr inbounds i32, i32* %72, i64 %74, !dbg !59
  %76 = load i32, i32* %75, align 4, !dbg !59
  %77 = sdiv i32 1, %76, !dbg !61
  %78 = load i32*, i32** %8, align 8, !dbg !62
  %79 = load i32, i32* %12, align 4, !dbg !63
  %80 = sext i32 %79 to i64, !dbg !62
  %81 = getelementptr inbounds i32, i32* %78, i64 %80, !dbg !62
  %82 = load i32, i32* %81, align 4, !dbg !62
  %83 = mul nsw i32 %77, %82, !dbg !64
  %84 = load i32*, i32** %6, align 8, !dbg !65
  %85 = load i32, i32* %12, align 4, !dbg !66
  %86 = sext i32 %85 to i64, !dbg !65
  %87 = getelementptr inbounds i32, i32* %84, i64 %86, !dbg !65
  store i32 %83, i32* %87, align 4, !dbg !67
  %88 = load i32, i32* %12, align 4, !dbg !68
  %89 = add nsw i32 %88, 1, !dbg !68
  store i32 %89, i32* %12, align 4, !dbg !68
  br label %90, !dbg !69

90:                                               ; preds = %71
  %91 = load i32, i32* %12, align 4, !dbg !70
  %92 = load i32, i32* %10, align 4, !dbg !71
  %93 = icmp slt i32 %91, %92, !dbg !72
  br i1 %93, label %71, label %94, !dbg !69, !llvm.loop !73

94:                                               ; preds = %90
  br label %95, !dbg !75

95:                                               ; preds = %94, %67
  store i32 0, i32* %12, align 4, !dbg !76
  %96 = load i32, i32* %10, align 4, !dbg !77
  %97 = icmp sgt i32 %96, 0, !dbg !78
  br i1 %97, label %98, label %122, !dbg !77

98:                                               ; preds = %95
  br label %99, !dbg !79

99:                                               ; preds = %117, %98
  %100 = load i32*, i32** %6, align 8, !dbg !80
  %101 = load i32, i32* %12, align 4, !dbg !81
  %102 = sext i32 %101 to i64, !dbg !80
  %103 = getelementptr inbounds i32, i32* %100, i64 %102, !dbg !80
  %104 = load i32, i32* %103, align 4, !dbg !80
  %105 = load i32*, i32** %8, align 8, !dbg !82
  %106 = load i32, i32* %12, align 4, !dbg !83
  %107 = sext i32 %106 to i64, !dbg !82
  %108 = getelementptr inbounds i32, i32* %105, i64 %107, !dbg !82
  %109 = load i32, i32* %108, align 4, !dbg !82
  %110 = add nsw i32 %104, %109, !dbg !84
  %111 = load i32*, i32** %9, align 8, !dbg !85
  %112 = load i32, i32* %12, align 4, !dbg !86
  %113 = sext i32 %112 to i64, !dbg !85
  %114 = getelementptr inbounds i32, i32* %111, i64 %113, !dbg !85
  store i32 %110, i32* %114, align 4, !dbg !87
  %115 = load i32, i32* %12, align 4, !dbg !88
  %116 = add nsw i32 %115, 1, !dbg !88
  store i32 %116, i32* %12, align 4, !dbg !88
  br label %117, !dbg !89

117:                                              ; preds = %99
  %118 = load i32, i32* %12, align 4, !dbg !90
  %119 = load i32, i32* %10, align 4, !dbg !91
  %120 = icmp slt i32 %118, %119, !dbg !92
  br i1 %120, label %99, label %121, !dbg !89, !llvm.loop !93

121:                                              ; preds = %117
  br label %122, !dbg !95

122:                                              ; preds = %121, %95
  ret void, !dbg !96
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Debian clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "MultipleGuarded.c", directory: "/home/ianno/LLVM_17/TEST/Assignment 4")
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
!14 = !DILocation(line: 3, column: 11, scope: !9)
!15 = !DILocation(line: 4, column: 9, scope: !9)
!16 = !DILocation(line: 5, column: 22, scope: !9)
!17 = !DILocation(line: 5, column: 24, scope: !9)
!18 = !DILocation(line: 5, column: 21, scope: !9)
!19 = !DILocation(line: 5, column: 27, scope: !9)
!20 = !DILocation(line: 5, column: 29, scope: !9)
!21 = !DILocation(line: 5, column: 26, scope: !9)
!22 = !DILocation(line: 5, column: 13, scope: !9)
!23 = !DILocation(line: 5, column: 15, scope: !9)
!24 = !DILocation(line: 5, column: 18, scope: !9)
!25 = !DILocation(line: 6, column: 15, scope: !9)
!26 = !DILocation(line: 7, column: 9, scope: !9)
!27 = !DILocation(line: 7, column: 18, scope: !9)
!28 = !DILocation(line: 7, column: 22, scope: !9)
!29 = !DILocation(line: 7, column: 20, scope: !9)
!30 = distinct !{!30, !15, !31, !32}
!31 = !DILocation(line: 7, column: 23, scope: !9)
!32 = !{!"llvm.loop.mustprogress"}
!33 = !DILocation(line: 8, column: 5, scope: !9)
!34 = !DILocation(line: 9, column: 6, scope: !9)
!35 = !DILocation(line: 10, column: 9, scope: !9)
!36 = !DILocation(line: 10, column: 11, scope: !9)
!37 = !DILocation(line: 11, column: 9, scope: !9)
!38 = !DILocation(line: 12, column: 20, scope: !9)
!39 = !DILocation(line: 12, column: 22, scope: !9)
!40 = !DILocation(line: 12, column: 25, scope: !9)
!41 = !DILocation(line: 12, column: 27, scope: !9)
!42 = !DILocation(line: 12, column: 24, scope: !9)
!43 = !DILocation(line: 12, column: 13, scope: !9)
!44 = !DILocation(line: 12, column: 15, scope: !9)
!45 = !DILocation(line: 12, column: 18, scope: !9)
!46 = !DILocation(line: 13, column: 15, scope: !9)
!47 = !DILocation(line: 14, column: 9, scope: !9)
!48 = !DILocation(line: 14, column: 18, scope: !9)
!49 = !DILocation(line: 14, column: 22, scope: !9)
!50 = !DILocation(line: 14, column: 20, scope: !9)
!51 = distinct !{!51, !37, !52, !32}
!52 = !DILocation(line: 14, column: 23, scope: !9)
!53 = !DILocation(line: 15, column: 5, scope: !9)
!54 = !DILocation(line: 17, column: 9, scope: !9)
!55 = !DILocation(line: 18, column: 7, scope: !9)
!56 = !DILocation(line: 19, column: 9, scope: !9)
!57 = !DILocation(line: 19, column: 11, scope: !9)
!58 = !DILocation(line: 20, column: 9, scope: !9)
!59 = !DILocation(line: 21, column: 22, scope: !9)
!60 = !DILocation(line: 21, column: 24, scope: !9)
!61 = !DILocation(line: 21, column: 21, scope: !9)
!62 = !DILocation(line: 21, column: 27, scope: !9)
!63 = !DILocation(line: 21, column: 29, scope: !9)
!64 = !DILocation(line: 21, column: 26, scope: !9)
!65 = !DILocation(line: 21, column: 13, scope: !9)
!66 = !DILocation(line: 21, column: 15, scope: !9)
!67 = !DILocation(line: 21, column: 18, scope: !9)
!68 = !DILocation(line: 22, column: 15, scope: !9)
!69 = !DILocation(line: 23, column: 9, scope: !9)
!70 = !DILocation(line: 23, column: 18, scope: !9)
!71 = !DILocation(line: 23, column: 22, scope: !9)
!72 = !DILocation(line: 23, column: 20, scope: !9)
!73 = distinct !{!73, !58, !74, !32}
!74 = !DILocation(line: 23, column: 23, scope: !9)
!75 = !DILocation(line: 24, column: 5, scope: !9)
!76 = !DILocation(line: 25, column: 6, scope: !9)
!77 = !DILocation(line: 26, column: 9, scope: !9)
!78 = !DILocation(line: 26, column: 11, scope: !9)
!79 = !DILocation(line: 27, column: 9, scope: !9)
!80 = !DILocation(line: 28, column: 20, scope: !9)
!81 = !DILocation(line: 28, column: 22, scope: !9)
!82 = !DILocation(line: 28, column: 25, scope: !9)
!83 = !DILocation(line: 28, column: 27, scope: !9)
!84 = !DILocation(line: 28, column: 24, scope: !9)
!85 = !DILocation(line: 28, column: 13, scope: !9)
!86 = !DILocation(line: 28, column: 15, scope: !9)
!87 = !DILocation(line: 28, column: 18, scope: !9)
!88 = !DILocation(line: 29, column: 15, scope: !9)
!89 = !DILocation(line: 30, column: 9, scope: !9)
!90 = !DILocation(line: 30, column: 18, scope: !9)
!91 = !DILocation(line: 30, column: 22, scope: !9)
!92 = !DILocation(line: 30, column: 20, scope: !9)
!93 = distinct !{!93, !79, !94, !32}
!94 = !DILocation(line: 30, column: 23, scope: !9)
!95 = !DILocation(line: 31, column: 5, scope: !9)
!96 = !DILocation(line: 32, column: 1, scope: !9)
