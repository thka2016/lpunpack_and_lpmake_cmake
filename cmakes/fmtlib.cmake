# 220922
project(fmtlib CXX)
set(source_dir ${CMAKE_SOURCE_DIR}/lib/fmtlib)
set(sources
        ${source_dir}/src/format.cc)
add_library(fmtlib ${sources})
target_include_directories(fmtlib PRIVATE
        ${source_dir}/include)
