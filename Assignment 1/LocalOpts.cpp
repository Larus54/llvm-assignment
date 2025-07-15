//===-- LocalOpts.cpp - Example Transformations --------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "llvm/Transforms/Utils/LocalOpts.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstrTypes.h"
// L'include seguente va in LocalOpts.h
#include <llvm/IR/Constants.h>
#include <cmath>

using namespace llvm;

//svolto a lezione ma migliorato in runOnBasicBlockAdv
bool runOnBasicBlock(BasicBlock &B) {

    for (auto &I : B) {

        if (Instruction::Mul == I.getOpcode()) {

            outs() << "Operazione: " << I << "\n";

            bool swp = false;
            ConstantInt *power2 = nullptr;

            if (ConstantInt *secOp = dyn_cast<ConstantInt>(I.getOperand(1))) {
              if (secOp->getValue().isPowerOf2()) {
                  power2 = secOp;
              }
            }

            if (power2 == nullptr) {
              if (ConstantInt *firOp = dyn_cast<ConstantInt>(I.getOperand(0))) {
                if (firOp->getValue().isPowerOf2()) {
                    power2 = firOp;
                    swp = true;
                }
              }
            }

            if (power2 != nullptr) {
                ConstantInt *shiftOp = ConstantInt::get(power2->getType(), power2->getValue().exactLogBase2());
                outs() << "Operando: " << power2->getValue() << "\n";

                Instruction *NewI;

                if (swp) {
                  NewI = BinaryOperator::Create(Instruction::Shl, I.getOperand(1), shiftOp);
                } else {
                  NewI = BinaryOperator::Create(Instruction::Shl, I.getOperand(0), shiftOp);
                }

                NewI->insertAfter(&I);
                I.replaceAllUsesWith(NewI);
            } else {
                outs() << "Nessuna potenza di 2\n";
            }
        }
    }
    return true;
}

//funzione che implementa il riconoscimento delle Algebraic Identities
bool runOnAlgebraicIdentity (BasicBlock &B) {
  bool status = false;

  for (auto &I : B) {

        if (Instruction::Add == I.getOpcode() || Instruction::Mul == I.getOpcode()) {
            
            ConstantInt *imm = nullptr;

            if (ConstantInt *secOp = dyn_cast<ConstantInt>(I.getOperand(1))) {
              if (secOp->getValue().isZero() && Instruction::Add == I.getOpcode()) {
                imm = secOp;
                outs() << "[runOnAlgebraicIdentity]: "<< I.getOpcodeName() << " ->"<< I << "\n";
                outs() << "Identità risolta su "<< I.getOpcodeName() << " con x in prima posizione" << "\n";
                I.replaceAllUsesWith(I.getOperand(0));
                status = true;
              }
              else if (secOp->getValue().isOne() && Instruction::Mul == I.getOpcode()) {
                imm = secOp;
                outs() << "[runOnAlgebraicIdentity]: "<< I.getOpcodeName() << " ->"<< I << "\n";
                outs() << "Identità risolta su "<< I.getOpcodeName() << " con x in prima posizione" << "\n";
                I.replaceAllUsesWith(I.getOperand(0));
                status = true;
              }
            }

            if (imm == nullptr) {
              if (ConstantInt *firOp = dyn_cast<ConstantInt>(I.getOperand(0))) {
                if (firOp->getValue().isZero() && Instruction::Add == I.getOpcode()) {
                    imm = firOp;
                    outs() << "[runOnAlgebraicIdentity]: "<< I.getOpcodeName() << " ->"<< I << "\n";
                    outs() << "Identità risolta su "<< I.getOpcodeName() << " con x in seconda posizione" << "\n";
                    I.replaceAllUsesWith(I.getOperand(1));
                    status = true;
                } 
                else if (firOp->getValue().isOne() && Instruction::Mul == I.getOpcode()) {
                  imm = firOp;
                  outs() << "[runOnAlgebraicIdentity]: "<< I.getOpcodeName() << " ->"<< I << "\n";
                  outs() << "Identità risolta su "<< I.getOpcodeName() << " con x in seconda posizione" << "\n";
                  I.replaceAllUsesWith(I.getOperand(1));
                  status = true;
                }
              }
            }
        }
  }
  if (!status)
    outs()<< "Nessuna identità trovata \n";
  outs()<< "[runOnAlgebraicIdentity] terminata \n\n";
  return status;
}

//funzione che implementa l'advanced strength reduction 
bool runOnBasicBlockAdv(BasicBlock &B) {
    for (auto &I : B) {
        if (Instruction::Mul == I.getOpcode()) {

            bool swp = false;
            ConstantInt *imm = nullptr;

            if (ConstantInt *secOp = dyn_cast<ConstantInt>(I.getOperand(1))) {
              imm = secOp;
            }
            else if (ConstantInt *firOp = dyn_cast<ConstantInt>(I.getOperand(0))) {
                imm = firOp;
                swp = true;
            }

            if (imm != nullptr && !imm->getValue().isOne()) {

              APInt val = imm->getValue();
              if (val.isPowerOf2()) {

                ConstantInt *shiftOp = ConstantInt::get(imm->getType(), imm->getValue().exactLogBase2());
                outs() << "[runOnBasicBlockAdv]: "<< I.getOpcodeName() << " ->"<< I << "\n";
                outs() << "Immediato potenza di 2 -> shift x<<" << shiftOp->getValue() <<"\n";

                Instruction *NewI_1;

                if (swp) {
                  NewI_1 = BinaryOperator::Create(Instruction::Shl, I.getOperand(1), shiftOp);
                } else {
                  NewI_1 = BinaryOperator::Create(Instruction::Shl, I.getOperand(0), shiftOp);
                }

                NewI_1->insertAfter(&I);
                I.replaceAllUsesWith(NewI_1);
              } else if ((val+1).isPowerOf2()) {

                ConstantInt *shiftOp = ConstantInt::get(imm->getType(), imm->getValue().nearestLogBase2());
                outs() << "[runOnBasicBlockAdv]: "<< I.getOpcodeName() << " ->"<< I << "\n";
                outs() << "(immediato+1) potenza di 2 -> shift x<<" << shiftOp->getValue() <<" e aggiunta una sub \n";

                Instruction *NewI_1;
                Instruction *NewI_2;

                if (swp) {
                  NewI_1 = BinaryOperator::Create(Instruction::Shl, I.getOperand(1), shiftOp);
                  NewI_2 = BinaryOperator::Create(Instruction::Sub, NewI_1, I.getOperand(1));
                } else {
                  NewI_1 = BinaryOperator::Create(Instruction::Shl, I.getOperand(0), shiftOp);
                  NewI_2 = BinaryOperator::Create(Instruction::Sub, NewI_1, I.getOperand(0));
                }

                NewI_1->insertAfter(&I);
                NewI_2->insertAfter(NewI_1);
                I.replaceAllUsesWith(NewI_2);
            } else if ((val-1).isPowerOf2()) {

                ConstantInt *shiftOp = ConstantInt::get(imm->getType(), imm->getValue().nearestLogBase2());
                outs() << "[runOnBasicBlockAdv]: "<< I.getOpcodeName() << " ->"<< I << "\n";
                outs() << "(immediato-1) potenza di 2 -> shift x<<" << shiftOp->getValue() <<" e aggiunta una add \n";

                Instruction *NewI_1;
                Instruction *NewI_2;

                if (swp) {
                  NewI_1 = BinaryOperator::Create(Instruction::Shl, I.getOperand(1), shiftOp);
                  NewI_2 = BinaryOperator::Create(Instruction::Add, NewI_1, I.getOperand(1));
                } else {
                  NewI_1 = BinaryOperator::Create(Instruction::Shl, I.getOperand(0), shiftOp);
                  NewI_2 = BinaryOperator::Create(Instruction::Add, NewI_1, I.getOperand(0));
                }

                NewI_1->insertAfter(&I);
                NewI_2->insertAfter(NewI_1);
                I.replaceAllUsesWith(NewI_2);
              }
          }
        } else if (Instruction::SDiv == I.getOpcode()) {

            bool swp = false;
            ConstantInt *imm = nullptr;

            if (ConstantInt *secOp = dyn_cast<ConstantInt>(I.getOperand(1))) {
              imm = secOp;
            }
            else if (ConstantInt *firOp = dyn_cast<ConstantInt>(I.getOperand(0))) {
                imm = firOp;
                swp = true;
            }

            if (imm != nullptr) {
              if (imm->getValue().isPowerOf2()) {
                ConstantInt *shiftOp = ConstantInt::get(imm->getType(), imm->getValue().nearestLogBase2());
                outs() << "[runOnBasicBlockAdv]: "<< I.getOpcodeName() << " ->"<< I << "\n";
                outs() << "Immediato potenza di 2 -> shift x>>" << shiftOp->getValue() <<"\n";

                Instruction *NewI_1;

                if (swp) {
                  NewI_1 = BinaryOperator::Create(Instruction::LShr, I.getOperand(1), shiftOp);
                } else {
                  NewI_1 = BinaryOperator::Create(Instruction::LShr, I.getOperand(0), shiftOp);
                }

                NewI_1->insertAfter(&I);
                I.replaceAllUsesWith(NewI_1);

              }
            }
        }
    }
    outs()<< "[runOnBasicBlockAdv] terminata \n\n";
    return true;
}

//funzione che implementa il miglioramento delle multi instruction
bool runOnMultiInstruction(BasicBlock &B) {
  for (auto &I : B) {
    //std::string opc1 = I.getOpcodeName();
    if (Instruction::Add == I.getOpcode() || Instruction::Sub == I.getOpcode()) {
      bool swp = false;
      ConstantInt *imm1 = nullptr;

      if (ConstantInt *secOp = dyn_cast<ConstantInt>(I.getOperand(1))) {
        imm1 = secOp;
      }
      else if (ConstantInt *firOp = dyn_cast<ConstantInt>(I.getOperand(0))) {
          imm1 = firOp;
          swp = true;
      }

      if (imm1 != nullptr) {
        for (auto iter_U = I.user_begin(); iter_U != I.user_end(); ++iter_U) {
          Instruction *U = dyn_cast<Instruction>(*iter_U);
          //std::string opc2 = U->getOpcodeName();
          if (Instruction::Add == U->getOpcode() || Instruction::Sub == U->getOpcode()) {

            ConstantInt *imm2 = nullptr;

            if (ConstantInt *secOp = dyn_cast<ConstantInt>(U->getOperand(1))) {
              imm2 = secOp;
            }
            else if (ConstantInt *firOp = dyn_cast<ConstantInt>(U->getOperand(0))) {
              imm2 = firOp;
            }

            if (imm2) {
              if (imm1 == imm2 && I.getOpcode() != U->getOpcode()) {
                outs() << "[runOnMultiInstruction]: "<< I.getOpcodeName() << " ->"<< I << "\n";
                outs() << "[runOnMultiInstruction]: "<< U->getOpcodeName() << " ->"<< I << "\n";
                if(swp) {
                  U->replaceAllUsesWith(I.getOperand(1));
                }
                else {
                  U->replaceAllUsesWith(I.getOperand(0));
                }
                outs() << "Multi Instruction trovata" << "\n" ;
              }
            }
            else
              outs() << "Multi Instruction non trovata" << "\n";
          }
        }
      }
    }
  }
  outs()<< "[runOnMultiInstruction] terminata \n\n";
  return true;
}

bool runOnFunction(Function &F) {
  bool Transformed = false;

  for (auto Iter = F.begin(); Iter != F.end(); ++Iter) {
    if (runOnAlgebraicIdentity(*Iter))
      Transformed = true;
    if (runOnBasicBlockAdv(*Iter)) {
      Transformed = true;
    }
    if (runOnMultiInstruction(*Iter)) {
      Transformed = true;
    }
    /*if (runOnBasicBlock(*Iter)) {
      Transformed = true;
    }*/
  }
  return Transformed;
}

PreservedAnalyses LocalOpts::run(Module &M,ModuleAnalysisManager &AM) {
  for (auto Fiter = M.begin(); Fiter != M.end(); ++Fiter)
    if (runOnFunction(*Fiter))
      return PreservedAnalyses::none();
  
  return PreservedAnalyses::all();
}

