

###https://releases.llvm.org/download.html
source ~/myllvm9.sh

clang -emit-llvm -S hello.c -o hello.bc

mkdir build
mv hello.bc build

cd build

cmake ..
make
opt -load libpdg.so -dot-pdg < hello.bc
