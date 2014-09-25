LLVM-MC provides bindings to acquire MCInst data from LLVM for bitstrings.
This functionality is normally only available in C++, but OCaml does not bind well against C++, so we have a slightly modified version of LLVM which re-exports this functionality in C.

## Building
### Getting LLVM
To get this, run

    git clone https://github.com/maurer/llvm.git
    git checkout c-disasm-mcinst

### Build LLVM
Build LLVM and install it. For the purposes of the example, I will assume you followed this procedure, starting in your llvm directory:

    mkdir ../llvm-build
    cd ../llvm-build
    cmake -G Ninja ../llvm
    ninja
    sudo ninja install

### Import LLVM Data

To bind yourself to a particular llvm, edit the Makefile and set `LLVM_TREE` to the source directory you built from and `LLVM_TBLGEN` to the binary `llvm-tblgen` built.

If you followed the build layout above, this means you will edit `Makefile` to read

    LLVM_TREE=../llvm
    LLVM_TBLGEN=../llvm-build/bin/llvm-tblgen

### Building
Now build and install as any other package

    ./configure
    make
    sudo make install