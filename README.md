# Program Dependence Graph (PDG)

## Introduction

This program is to generate a program dependence graph.

## References

### Download the specific version of LLVM (9.0.0 is required):

https://releases.llvm.org/download.html

### Program Dependence Graph in LLVM (where the present LLVM PDG is copied from)

https://bitbucket.org/psu_soslab/program-dependence-graph-in-llvm/src/master/

### Question 1

https://stackoverflow.com/questions/7904651/how-to-generate-program-dependence-graph-for-c-program?rq=1

### Question 2

https://stackoverflow.com/questions/5101193/program-dependence-graphs-pdg/39950158#39950158

### CCS'17 Paper:

http://www.cse.psu.edu/~gxt29/papers/ptrsplit.pdf
  author    = {Shen Liu and Gang Tan and Trent Jaeger},
  title     = {{PtrSplit}: Supporting General Pointers in Automatic Program Partitioning},
  booktitle = {24th ACM Conference on Computer and Communications Security ({CCS})},

## Getting started quickly

```shell
<!--- Unpack LLVM9 into ~/clang_llvm_9.0.0 directory -->
export PATH=$HOME/clang_llvm_9.0.0/bin:$PATH

clang -emit-llvm -S hello.c -o hello.bc

mkdir build
mv hello.bc build
cd build
cmake ..
make
opt -load libpdg.so -dot-pdg < hello.bc
dot -Tpng pdgragh.main.dot -o hello.png
```

The last operation is using dot command to read in the dotfile and output a png file.

Dot command is downloaded from [Graphviz](http://www.graphviz.org/).
