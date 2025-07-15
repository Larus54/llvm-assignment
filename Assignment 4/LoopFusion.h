#ifndef LLVM_TRANSFORMS_LOOPFUSION_H
#define LLVM_TRANSFORMS_LOOPFUSION_H
#include "llvm/IR/PassManager.h"
#include <llvm/IR/Constants.h>

namespace llvm {

class LoopFusion : public PassInfoMixin<LoopFusion> {
public:
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM);
};
}

#endif