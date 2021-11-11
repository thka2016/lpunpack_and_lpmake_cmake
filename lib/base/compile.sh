#!/bin/bash
set -x -e
mkdir -p lib/lib bin
CC=clang
CPP=clang++
AR=ar
STRIP=strip
CFLAGS=-static

$CPP $CFLAGS -I../liblog/include -I../include -std=c++17 -stdlib=libc++ "-Wall" -D_FILE_OFFSET_BITS=64 -D__linux__ -D__CYGWIN__ \
"-Wextra" \
"-D_FILE_OFFSET_BITS=64" -c \
        "abi_compatibility.cpp" \
        "chrono_utils.cpp" \
        "cmsg.cpp" \
        "file.cpp" \
        "liblog_symbols.cpp" \
        "logging.cpp" \
        "mapped_file.cpp" \
        "parsebool.cpp" \
        "parsenetaddress.cpp" \
        "process.cpp" \
        "properties.cpp" \
        "stringprintf.cpp" \
        "strings.cpp" \
        "threads.cpp" \
        "test_utils.cpp" \
		"errors_unix.cpp"
