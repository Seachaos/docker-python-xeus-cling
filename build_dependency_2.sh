#!/bin/bash
git clone -b 0.8.1 https://github.com/jupyter-xeus/xeus-cling.git --depth 1
cd xeus-cling && mkdir build && cd build && \
    cmake \
        -DCMAKE_BUILD_TYPE=Release \
        -DDOWNLOAD_GTEST=ON \
        ../ && \
    make -j8 && make install