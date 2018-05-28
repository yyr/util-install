#!/bin/bash
# Created: Monday, May 28 2018

. $SCRIPTS_DIR/apps/ZLIB.env

cd $BASE/src/${DIR}

./configure --prefix=$ZLIB_ROOT 2>&1 | tee log.configure

rm CMakeCache.txt

cmake -DCMAKE_INSTALL_PREFIX:path=$ZLIB_ROOT . 2>&1  | tee log.cmake
make clean

make 2>&1   | tee log.make
make install 2>&1 | tee log.make
