#!/bin/bash
set -x -e
mkdir -p lib/lib bin
CC=clang
CPP=clang++
AR=ar
STRIP=strip
CFLAGS=-static

cd lib
cd liblog

./compile.sh
$AR rcs ../lib/liblog.a *.o
rm -r *.o


cd ../zlib
./compile.sh
$AR rcs ../lib/libz.a *.o
rm -r *.o

cd ../base
./compile.sh
$AR rcs ../lib/libbase.a *.o
rm -r *.o


cd ../libsparse
./compile.sh
$AR rcs ../lib/libsparse.a *.o
rm -r *.o

cd ../fmtlib
$CPP -std=c++17 -stdlib=libc++ -Iinclude ${CFLAGS} -c src/format.cc
$AR rcs ../lib/libfmt.a *.o
rm -r *.o

cd ../../partition_tools/mgr/liblp
./compile.sh
$AR rcs ../../../lib/lib/liblp.a *.o
rm -r *.o

cd ../../../lib

cd ext4_utils
./compile.sh
$AR rcs ../lib/libext4_utils.a *.o
rm -r *.o

cd ../libcrypto_utils
$CC -Iinclude -I../boringssl/include ${CFLAGS} -c android_pubkey.c
$AR rcs ../lib/libcrypto_utils.a *.o
rm -r *.o

#libcrypto
cd ../boringssl
./compile.sh
rm -r *.o

cd ../../partition_tools/pt
cp ../../lib/lib/*.a ./

./compile.sh
cp *.exe ../../bin/
cd ../..


echo copy dependencies....
cp /bin/cygwin1.dll ./bin/
