# 220922
project(liblp CXX)
set(source_dir
        ${CMAKE_SOURCE_DIR}/partition_tools/mgr/liblp)
set(sources
        ${source_dir}/builder.cpp
        ${source_dir}/images.cpp
        ${source_dir}/partition_opener.cpp
        ${source_dir}/property_fetcher.cpp
        ${source_dir}/reader.cpp
        ${source_dir}/utility.cpp
        ${source_dir}/writer.cpp)
add_library(lp ${sources})
target_include_directories(lp PRIVATE
        ${source_dir}/include
        ${CMAKE_SOURCE_DIR}/lib/base/include
        ${CMAKE_SOURCE_DIR}/lib/libsparse/include
        ${CMAKE_SOURCE_DIR}/lib/include)
target_compile_definitions(lp PRIVATE
        _FILE_OFFSET_BITS=64)
