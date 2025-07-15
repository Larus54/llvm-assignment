.PHONY: all clean

all: Assignment1.ll Assignment11.ll Assignment111.ll

Assignment1.ll: Foo.ll
	opt -passes="localopts" -S $< -o $@

Assignment11.ll: Foo2.ll
	opt -passes="localopts" -S $< -o $@
	
Assignment111.ll: Foo3.ll
	opt -passes="localopts" -S $< -o $@

clean:
	rm -f Assignment1.ll Assignment11.ll Assignment111.ll
