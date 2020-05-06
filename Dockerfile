FROM python:3.7.0
RUN apt-get update && apt-get upgrade -yf

RUN apt-get install -y libtool pkg-config build-essential autoconf automake git cmake tmux vim python-pip python3-pip

RUN mkdir /root/source
WORKDIR /root/source


# upgrade cmake
RUN wget https://github.com/Kitware/CMake/releases/download/v3.17.2/cmake-3.17.2.tar.gz
RUN tar -xvf ./cmake-3.17.2.tar.gz
RUN cd  cmake-3.17.2 && ./configure && make -j4 && make install

# json
RUN git clone -b v3.7.3 https://github.com/nlohmann/json.git --depth 1
RUN cd json && mkdir build && cd build && cmake ../ && make -j4 && make install

# xtl
RUN git clone -b 0.6.13 https://github.com/xtensor-stack/xtl.git --depth 1
RUN cd xtl && mkdir build && cd build && cmake ../ && make -j4 && make install

# openssl
RUN git clone -b OpenSSL_1_1_1g https://github.com/openssl/openssl.git --depth 1
RUN cd openssl && ./config && make -j4 && make test && make install

# libzmq
RUN git clone -b v4.3.2 https://github.com/zeromq/libzmq.git --depth 1
RUN cd libzmq && mkdir build && cd build && cmake ../ && make -j4 && make install

# cppzmq
RUN git clone -b v4.3.0 https://github.com/zeromq/cppzmq.git --depth 1
RUN cd cppzmq && mkdir build && cd build && cmake ../ && make -j4 && make install

# install xeus
RUN git clone -b 0.23.3 https://github.com/jupyter-xeus/xeus.git --depth 1
RUN cd xeus && mkdir build && cd build && \
    cmake -D ../ && make -j4 && make install


RUN git clone -b v1.8.1 https://github.com/zeux/pugixml.git --depth 1
RUN cd pugixml && mkdir build && cd build && \
    cmake \
        -D CMAKE_BUILD_TYPE=Release \
        -D BUILD_SHARED_LIBS=ON \
        ../ && \
    make -j4 && make install

# install cxxopts
RUN git clone -b v2.1.1 https://github.com/jarro2783/cxxopts --depth 1
RUN cd cxxopts && mkdir build && cd build && cmake ../ && make -j4 && make install

# install cling
RUN git clone https://github.com/Seachaos/llvm-with-cling.git --depth 1
RUN cd llvm-with-cling && mkdir build && cd build \
    cmake \
        -DLLVM_BUILD_TOOLS=Off \
        -DCMAKE_BUILD_TYPE=Release \
        -DCLING_CXX_HEADERS=ON \
        -DCLING_INCLUDE_TESTS=ON \
        ../ && \
    make -j8

# install xeus-cling
WORKDIR /root/source
RUN git clone -b 0.8.1 https://github.com/jupyter-xeus/xeus-cling.git --depth 1
RUN cd xeus-cling && mkdir build && cd build && \
    cmake \
        -DCMAKE_BUILD_TYPE=Release \
        -DDOWNLOAD_GTEST=ON \
        ../ && \
    make -j8 && make install
