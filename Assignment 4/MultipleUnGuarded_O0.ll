; ModuleID = 'MultipleUnguarded.c'
source_filename = "MultipleUnguarded.c"
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
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4, !dbg !12
  br label %13, !dbg !13

13:                                               ; preds = %34, %5
  %14 = load i32, i32* %11, align 4, !dbg !14
  %15 = load i32, i32* %6, align 4, !dbg !15
  %16 = icmp slt i32 %14, %15, !dbg !16
  br i1 %16, label %17, label %37, !dbg !17

17:                                               ; preds = %13
  %18 = load i32*, i32** %8, align 8, !dbg !18
  %19 = load i32, i32* %11, align 4, !dbg !19
  %20 = sext i32 %19 to i64, !dbg !18
  %21 = getelementptr inbounds i32, i32* %18, i64 %20, !dbg !18
  %22 = load i32, i32* %21, align 4, !dbg !18
  %23 = sdiv i32 1, %22, !dbg !20
  %24 = load i32*, i32** %9, align 8, !dbg !21
  %25 = load i32, i32* %11, align 4, !dbg !22
  %26 = sext i32 %25 to i64, !dbg !21
  %27 = getelementptr inbounds i32, i32* %24, i64 %26, !dbg !21
  %28 = load i32, i32* %27, align 4, !dbg !21
  %29 = mul nsw i32 %23, %28, !dbg !23
  %30 = load i32*, i32** %7, align 8, !dbg !24
  %31 = load i32, i32* %11, align 4, !dbg !25
  %32 = sext i32 %31 to i64, !dbg !24
  %33 = getelementptr inbounds i32, i32* %30, i64 %32, !dbg !24
  store i32 %29, i32* %33, align 4, !dbg !26
  br label %34, !dbg !27

34:                                               ; preds = %17
  %35 = load i32, i32* %11, align 4, !dbg !28
  %36 = add nsw i32 %35, 1, !dbg !28
  store i32 %36, i32* %11, align 4, !dbg !28
  br label %13, !dbg !17, !llvm.loop !29

37:                                               ; preds = %13
  store i32 0, i32* %11, align 4, !dbg !31
  br label %38, !dbg !32

38:                                               ; preds = %58, %37
  %39 = load i32, i32* %11, align 4, !dbg !33
  %40 = load i32, i32* %6, align 4, !dbg !34
  %41 = icmp slt i32 %39, %40, !dbg !35
  br i1 %41, label %42, label %61, !dbg !36

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8, !dbg !37
  %44 = load i32, i32* %11, align 4, !dbg !38
  %45 = sext i32 %44 to i64, !dbg !37
  %46 = getelementptr inbounds i32, i32* %43, i64 %45, !dbg !37
  %47 = load i32, i32* %46, align 4, !dbg !37
  %48 = load i32*, i32** %9, align 8, !dbg !39
  %49 = load i32, i32* %11, align 4, !dbg !40
  %50 = sext i32 %49 to i64, !dbg !39
  %51 = getelementptr inbounds i32, i32* %48, i64 %50, !dbg !39
  %52 = load i32, i32* %51, align 4, !dbg !39
  %53 = add nsw i32 %47, %52, !dbg !41
  %54 = load i32*, i32** %10, align 8, !dbg !42
  %55 = load i32, i32* %11, align 4, !dbg !43
  %56 = sext i32 %55 to i64, !dbg !42
  %57 = getelementptr inbounds i32, i32* %54, i64 %56, !dbg !42
  store i32 %53, i32* %57, align 4, !dbg !44
  br label %58, !dbg !45

58:                                               ; preds = %42
  %59 = load i32, i32* %11, align 4, !dbg !46
  %60 = add nsw i32 %59, 1, !dbg !46
  store i32 %60, i32* %11, align 4, !dbg !46
  br label %38, !dbg !36, !llvm.loop !47

61:                                               ; preds = %38
  store i32 25, i32* %6, align 4, !dbg !48
  store i32 0, i32* %12, align 4, !dbg !49
  br label %62, !dbg !50

62:                                               ; preds = %83, %61
  %63 = load i32, i32* %12, align 4, !dbg !51
  %64 = load i32, i32* %6, align 4, !dbg !52
  %65 = icmp slt i32 %63, %64, !dbg !53
  br i1 %65, label %66, label %86, !dbg !54

66:                                               ; preds = %62
  %67 = load i32*, i32** %8, align 8, !dbg !55
  %68 = load i32, i32* %12, align 4, !dbg !56
  %69 = sext i32 %68 to i64, !dbg !55
  %70 = getelementptr inbounds i32, i32* %67, i64 %69, !dbg !55
  %71 = load i32, i32* %70, align 4, !dbg !55
  %72 = sdiv i32 1, %71, !dbg !57
  %73 = load i32*, i32** %9, align 8, !dbg !58
  %74 = load i32, i32* %12, align 4, !dbg !59
  %75 = sext i32 %74 to i64, !dbg !58
  %76 = getelementptr inbounds i32, i32* %73, i64 %75, !dbg !58
  %77 = load i32, i32* %76, align 4, !dbg !58
  %78 = mul nsw i32 %72, %77, !dbg !60
  %79 = load i32*, i32** %7, align 8, !dbg !61
  %80 = load i32, i32* %12, align 4, !dbg !62
  %81 = sext i32 %80 to i64, !dbg !61
  %82 = getelementptr inbounds i32, i32* %79, i64 %81, !dbg !61
  store i32 %78, i32* %82, align 4, !dbg !63
  br label %83, !dbg !64

83:                                               ; preds = %66
  %84 = load i32, i32* %12, align 4, !dbg !65
  %85 = add nsw i32 %84, 1, !dbg !65
  store i32 %85, i32* %12, align 4, !dbg !65
  br label %62, !dbg !54, !llvm.loop !66

86:                                               ; preds = %62
  store i32 0, i32* %12, align 4, !dbg !67
  br label %87, !dbg !68

87:                                               ; preds = %107, %86
  %88 = load i32, i32* %12, align 4, !dbg !69
  %89 = load i32, i32* %6, align 4, !dbg !70
  %90 = icmp slt i32 %88, %89, !dbg !71
  br i1 %90, label %91, label %110, !dbg !72

91:                                               ; preds = %87
  %92 = load i32*, i32** %7, align 8, !dbg !73
  %93 = load i32, i32* %12, align 4, !dbg !74
  %94 = sext i32 %93 to i64, !dbg !73
  %95 = getelementptr inbounds i32, i32* %92, i64 %94, !dbg !73
  %96 = load i32, i32* %95, align 4, !dbg !73
  %97 = load i32*, i32** %9, align 8, !dbg !75
  %98 = load i32, i32* %12, align 4, !dbg !76
  %99 = sext i32 %98 to i64, !dbg !75
  %100 = getelementptr inbounds i32, i32* %97, i64 %99, !dbg !75
  %101 = load i32, i32* %100, align 4, !dbg !75
  %102 = add nsw i32 %96, %101, !dbg !77
  %103 = load i32*, i32** %10, align 8, !dbg !78
  %104 = load i32, i32* %12, align 4, !dbg !79
  %105 = sext i32 %104 to i64, !dbg !78
  %106 = getelementptr inbounds i32, i32* %103, i64 %105, !dbg !78
  store i32 %102, i32* %106, align 4, !dbg !80
  br label %107, !dbg !81

107:                                              ; preds = %91
  %108 = load i32, i32* %12, align 4, !dbg !82
  %109 = add nsw i32 %108, 1, !dbg !82
  store i32 %109, i32* %12, align 4, !dbg !82
  br label %87, !dbg !72, !llvm.loop !83

110:                                              ; preds = %87
  ret void, !dbg !84
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Debian clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "MultipleUnguarded.c", directory: "/home/ianno/LLVM_17/TEST/Assignment 4")
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
!48 = !DILocation(line: 12, column: 5, scope: !9)
!49 = !DILocation(line: 13, column: 10, scope: !9)
!50 = !DILocation(line: 13, column: 8, scope: !9)
!51 = !DILocation(line: 13, column: 15, scope: !9)
!52 = !DILocation(line: 13, column: 19, scope: !9)
!53 = !DILocation(line: 13, column: 17, scope: !9)
!54 = !DILocation(line: 13, column: 3, scope: !9)
!55 = !DILocation(line: 14, column: 16, scope: !9)
!56 = !DILocation(line: 14, column: 18, scope: !9)
!57 = !DILocation(line: 14, column: 14, scope: !9)
!58 = !DILocation(line: 14, column: 23, scope: !9)
!59 = !DILocation(line: 14, column: 25, scope: !9)
!60 = !DILocation(line: 14, column: 21, scope: !9)
!61 = !DILocation(line: 14, column: 5, scope: !9)
!62 = !DILocation(line: 14, column: 7, scope: !9)
!63 = !DILocation(line: 14, column: 10, scope: !9)
!64 = !DILocation(line: 15, column: 3, scope: !9)
!65 = !DILocation(line: 13, column: 23, scope: !9)
!66 = distinct !{!66, !54, !64, !30}
!67 = !DILocation(line: 17, column: 10, scope: !9)
!68 = !DILocation(line: 17, column: 8, scope: !9)
!69 = !DILocation(line: 17, column: 15, scope: !9)
!70 = !DILocation(line: 17, column: 19, scope: !9)
!71 = !DILocation(line: 17, column: 17, scope: !9)
!72 = !DILocation(line: 17, column: 3, scope: !9)
!73 = !DILocation(line: 18, column: 12, scope: !9)
!74 = !DILocation(line: 18, column: 14, scope: !9)
!75 = !DILocation(line: 18, column: 19, scope: !9)
!76 = !DILocation(line: 18, column: 21, scope: !9)
!77 = !DILocation(line: 18, column: 17, scope: !9)
!78 = !DILocation(line: 18, column: 5, scope: !9)
!79 = !DILocation(line: 18, column: 7, scope: !9)
!80 = !DILocation(line: 18, column: 10, scope: !9)
!81 = !DILocation(line: 19, column: 3, scope: !9)
!82 = !DILocation(line: 17, column: 23, scope: !9)
!83 = distinct !{!83, !72, !81, !30}
!84 = !DILocation(line: 20, column: 3, scope: !9)
