.PHONY: all clean

all: Assignment1.ll

Assignment1.ll: Foo.ll
	opt -passes="localopts" -S $< -o $@

clean:
	rm -f Assignment1.ll