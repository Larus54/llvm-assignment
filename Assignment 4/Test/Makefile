.PHONY: all clean

all: LoopGuarded.ll LoopNoAdj.ll LoopUnGuarded.ll MultipleGuarded.ll MultipleUnGuarded.ll

LoopGuarded_O0.ll: LoopGuarded.c
	clang -O0 -Rpass=".*" -Xclang -disable-O0-optnone -emit-llvm -S -c $< -o $@

LoopGuarded_m2r.ll: LoopGuarded_O0.ll
	opt -passes="mem2reg" -S $< -o $@

LoopGuarded.ll: LoopGuarded_m2r.ll
	opt -passes="loopfusion" -S $< -o $@
	
LoopNoAdj_O0.ll: LoopNoAdj.c
	clang -O0 -Rpass=".*" -Xclang -disable-O0-optnone -emit-llvm -S -c $< -o $@

LoopNoAdj_m2r.ll: LoopNoAdj_O0.ll
	opt -passes="mem2reg" -S $< -o $@

LoopNoAdj.ll: LoopNoAdj_m2r.ll
	opt -passes="loopfusion" -S $< -o $@

LoopUnGuarded_O0.ll: LoopUnguarded.c
	clang -O0 -Rpass=".*" -Xclang -disable-O0-optnone -emit-llvm -S -c $< -o $@

LoopUnGuarded_m2r.ll: LoopUnGuarded_O0.ll
	opt -passes="mem2reg" -S $< -o $@

LoopUnGuarded.ll: LoopUnGuarded_m2r.ll
	opt -passes="loopfusion" -S $< -o $@

MultipleGuarded_O0.ll: MultipleGuarded.c
	clang -O0 -Rpass=".*" -Xclang -disable-O0-optnone -emit-llvm -S -c $< -o $@

MultipleGuarded_m2r.ll: MultipleGuarded_O0.ll
	opt -passes="mem2reg" -S $< -o $@

MultipleGuarded.ll: MultipleGuarded_m2r.ll
	opt -passes="loopfusion" -S $< -o $@	

MultipleUnGuarded_O0.ll: MultipleUnguarded.c
	clang -O0 -Rpass=".*" -Xclang -disable-O0-optnone -emit-llvm -S -c $< -o $@

MultipleUnGuarded_m2r.ll: MultipleUnGuarded_O0.ll
	opt -passes="mem2reg" -S $< -o $@

MultipleUnGuarded.ll: MultipleUnGuarded_m2r.ll
	opt -passes="loopfusion" -S $< -o $@	

clean:
	rm -f *.ll
