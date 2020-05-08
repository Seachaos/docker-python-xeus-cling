#!/bin/bash
git clone https://github.com/Seachaos/llvm-with-cling.git --depth 1
cd llvm-with-cling && mkdir build && cd build && \
    cmake \
        -DLLVM_BUILD_TOOLS=Off \
        -DCMAKE_BUILD_TYPE=Release \
        -DLLVM_TARGETS_TO_BUILD="host" \
        -DCLING_CXX_HEADERS=ON \
        -DCLING_INCLUDE_TESTS=ON \
        -DLLVM_ENABLE_RTTI=ON \
        ../ && \
    make -j8 && make install && \
    make llvm-config && cp ./bin/llvm-config /usr/local/bin/