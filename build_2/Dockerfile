FROM seachaos/python-xeus-cling:python-3.7.0-basic

# install llvm & cling & xeus-cling
ADD ./build_cling_with_llvm.sh /root/source/build_cling_with_llvm.sh
RUN chmod +x ./build_cling_with_llvm.sh && ./build_cling_with_llvm.sh

# install jupyter
RUN pip3 install -U pip setuptools
RUN pip3 install jupyter

# install xeus-cling
ADD ./build_dependency_2.sh /root/source/build_dependency_2.sh
RUN chmod +x ./build_dependency_2.sh && ./build_dependency_2.sh
