# 220922
project(libsparse CXX)
set(source_dir ${CMAKE_SOURCE_DIR}/lib/libsparse)
set(sources
        ${source_dir}/backed_block.cpp
        ${source_dir}/output_file.cpp
        ${source_dir}/sparse.cpp
        ${source_dir}/sparse_crc32.cpp
        ${source_dir}/sparse_err.cpp
        ${source_dir}/sparse_read.cpp)
add_library(sparse ${sources})
target_include_directories(sparse PRIVATE
        ${source_dir}/include
        ${CMAKE_SOURCE_DIR}/lib/base/include)

add_executable(img2simg ${source_dir}/img2simg.cpp)
target_include_directories(img2simg PRIVATE
        ${source_dir}/include)
target_link_libraries(img2simg sparse zlib base)
target_link_options(img2simg PRIVATE -static -s
        -Wl,--allow-multiple-definition)

add_executable(simg2img ${source_dir}/simg2img.cpp)
target_include_directories(simg2img PRIVATE
        ${source_dir}/include)
target_link_libraries(simg2img sparse zlib base)
target_link_options(simg2img PRIVATE -static -s
        -Wl,--allow-multiple-definition)

add_dependencies(img2simg simg2img)
