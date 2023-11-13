#!/bin/sh

LD_LIBRARY_PATH=$(pwd)/stubs:$LD_LIBRARY_PATH

mkdir build && cd build

cmake ${CMAKE_ARGS} -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      -DCMAKE_BUILD_TYPE=Release \
      -DBUILD_SHARED_LIBS=ON \
      $SRC_DIR

ninja
ninja install
