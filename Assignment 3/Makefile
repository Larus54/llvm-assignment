.PHONY: all clean

all: Assignment3.ll

LCIMNotOpt.ll: LICM.c
	clang -O0 -Rpass=".*" -emit-llvm -S -c -Xclang -disable-O0-optnone $< -o $@

LICM_m2r.ll: LCIMNotOpt.ll
	opt -passes="mem2reg" -S $< -o $@
	
Assignment3.ll: LICM_m2r.ll
	opt -passes="loopwalk" -S $< -o $@

clean:
	rm -f LCIMNotOpt.ll LICM_m2r.ll Assignment3.ll
