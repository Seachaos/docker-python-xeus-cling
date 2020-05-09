#!/bin/bash
git clone -b v0.0.1 https://github.com/Seachaos/opencv-cpp-for-xeus-cling.git --depth 1
cd ./opencv-cpp-for-xeus-cling
python3 ./install.py
cd ../
rm -rf opencv-cpp-for-xeus-cling
