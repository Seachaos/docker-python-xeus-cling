FROM seachaos/python-xeus-cling:python-3.7.0-basic
# RUN apt-get update && apt-get upgrade -yf

# RUN apt-get install -y libtool pkg-config build-essential autoconf automake git cmake tmux vim python-pip python3-pip

# RUN mkdir /root/source
# WORKDIR /root/source

# install dependency
# ADD ./build_dependency_1.sh /root/source/build_dependency_1.sh
# RUN chmod +x ./build_dependency_1.sh && ./build_dependency_1.sh

# install llvm & cling & xeus-cling
ADD ./build_cling_with_llvm.sh /root/source/build_cling_with_llvm.sh
RUN chmod +x ./build_cling_with_llvm.sh && ./build_cling_with_llvm.sh

# install xeus-cling
ADD ./build_dependency_2.sh /root/source/build_dependency_2.sh
RUN chmod +x ./build_dependency_2.sh && ./build_dependency_2.sh
