# 220922
cmake_minimum_required(VERSION 3.23)
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)
project(lpunpack_and_lpmake CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Xclang -flto-visibility-public-std")
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
#set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin/lib)


include(cmakes/liblog.cmake)
include(cmakes/zlib.cmake)
include(cmakes/base.cmake)
include(cmakes/libsparse.cmake)
include(cmakes/fmtlib.cmake)
include(cmakes/liblp.cmake)
include(cmakes/ext4_utils.cmake)
include(cmakes/libcrypto_utils.cmake)
include(cmakes/libcrypto.cmake)
include(cmakes/partition_tools/pt/pt.cmake)

