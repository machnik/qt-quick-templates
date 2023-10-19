#!/bin/bash

export PATH=/home/user/Qt/6.5.0/gcc_64/bin:$PATH

rm -rf build
mkdir build
cd build
cmake ..
make

