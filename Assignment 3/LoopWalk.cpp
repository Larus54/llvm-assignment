#include "llvm/Transforms/Utils/LoopWalk.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstrTypes.h"
#include <cmath>

using namespace llvm;

std::vector<Instruction*> ToMove;
std::set<Instruction*> Invariants;

/**
 * Funzione che controlla se l'operando di un'istruzione è Loop Invariant o meno.
 * Dapprima fa il check sulle costanti e gli argomenti di funzione.
 * Successivamente, controlla che l'operand sia effettivamente un'istruzione e che il
 * BB che contiene l'istruzione non sia effettivamente dentro il loop corrente.
 */
bool isOperandInvariant(Value *operand, Loop &loop) {
    if(isa<Constant>(operand) || isa<Argument>(operand)) return true;
    if(Instruction *inst = dyn_cast<Instruction>(operand)){
        if(!loop.contains(inst->getParent()) || Invariants.count(inst)) return true;
    }

    return false;
}

/**
 * Funzione che controlla se l'istruzione è Loop Invariant o meno.
 * Dapprima fa il check sulla sua speculatività: se l'istruzione può lanciare eccezioni,
 * toccare la memoria o lavorare sui thread può essere pericoloso spostarla fuori dal
 * loop (cambiando la semantica del programma!). Questa funzione controlla proprio questo,
 * ovvero se l'istruzione può essere eseguita "a freddo".
 * Successivamente, controlliamo che ogni singolo operando dell'istruzione sia loop invariant.
 */
bool isInstrInvariant(Instruction *I, Loop &loop) {
    if(!isSafeToSpeculativelyExecute(I)){
        errs() << "[" << *I << "] ERR: L'istruzione non è safe da spostare!\n";
        return false;
    }

    for(auto instr = I->op_begin(); instr != I->op_end(); ++instr) {
        if(!isOperandInvariant(*instr, loop)) return false;
    }

    outs() << "[" << *I << "] Istruzione removibile!\n";

    return true;
}

/**
 * Funzione di popolamento dei vettori ToMove e Invariants.
 * ToMove come scopo ha quello di collezionare tutte le instructions su cui eseguire
 * Code Motion. Invariants lo si usa in altre funzioni per determinare l'invariance di
 * operandi.
 */
void findInvariantsInstr(BasicBlock &block, Loop &loop) {
    for(auto &I : block) {
        if(isInstrInvariant(&I, loop)) {
            ToMove.push_back(&I);
            Invariants.insert(&I);
        }
    }
}

/**
 * Funzione principale che esegue su un loop intero.
 * Essa va a iterare su tutti i blocchi del loop e controlla che dominino tutte
 * le uscite. Se questo accade, allora puoi procedere con la CM (assunto ovviamente che
 * tutte le altre condizioni siano vere, ma questo è un controllo che verrà fatto dopo).
 */
bool runOnLoop(Loop &loop, LoopAnalysisManager &LAM, LoopStandardAnalysisResults &LAR,
                LPMUpdater &LU) {
    BasicBlock* preHeader = loop.getLoopPreheader();

    // Controllo che esista il preheader
    if(!preHeader) return false;

    /**
     * Strutture dati utili al fine della Code Motion.
     * - vec contiene tutti i blocchi d'uscita del loop
     * - exitBlock è usato dopo per controllare la dominanza
     * - DT è il Dominator Tree
     */
    SmallVector<BasicBlock*> vec {};
    loop.getExitBlocks(vec);
    BasicBlock* exitBlock = loop.getUniqueExitBlock();
    DominatorTree &DT = LAR.DT;
    
    // FOR sui blocchi del loop
    auto loopBlocks = loop.getBlocks();
    for(auto &block : loopBlocks) {
        bool dominateExits = true;
        
        // FOR che controlla che "block" domini tutte le uscite
        for(auto instr = vec.begin(); instr != vec.end(); ++instr){
            BasicBlock *exitBlock = *instr;
            if(!DT.dominates(block, exitBlock))
                dominateExits = false;
        }

        // Setta un nome al BB (se non presente)
        if(!block->hasName())
            block->setName("BB"); // llvm gestisce l'unicità

        outs() << "[" <<block->getName() << "] Dominate Exit: " << dominateExits << "\n";

        if(dominateExits)
            findInvariantsInstr(*block, loop);
    }

    // Procede con la CM
    for(auto &I : ToMove) {
        outs() << "Instruction to move: " << *I << "\n";
        I->moveBefore(preHeader->getTerminator());
    }

    preHeader->print(outs());

    return true;
}

// RUN FUNCTION
PreservedAnalyses LoopWalk::run(Loop &L, LoopAnalysisManager &LAM, LoopStandardAnalysisResults &LAR, 
                                LPMUpdater &LU) {
    if(!runOnLoop(L, LAM, LAR, LU))
        return PreservedAnalyses::none();

    return PreservedAnalyses::all();
}
