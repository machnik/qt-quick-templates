#!/bin/bash

QT_PATH=/home/user/Qt/6.5.0/gcc_64

if [ ! -f "CMakeLists.txt" ]; then
    echo "Error: This script should be run from the root directory of the project, where CMakeLists.txt is located."
    exit 1
fi

rm -rf build
mkdir build

cd build

cmake .. -DCMAKE_PREFIX_PATH=$QT_PATH

if [ $? -ne 0 ]; then
    echo "CMake configuration failed."
    exit 1
fi

cmake --build .

if [ $? -ne 0 ]; then
    echo "Build failed."
    exit 1
fi

echo "Build completed successfully. You can now run the application with ./HelloWidgets"

