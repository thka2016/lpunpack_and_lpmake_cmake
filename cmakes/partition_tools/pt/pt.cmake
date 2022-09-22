# 220922
project(pt CXX)
set(source_dir ${CMAKE_SOURCE_DIR}/partition_tools/pt)
set(target_list lpmake lpadd lpflash lpunpack lpdump)

foreach(target ${target_list})
    if (${target} STREQUAL lpdump)
        add_executable(${target} ${source_dir}/${target}.cc ${source_dir}/lpdump_host.cc)
    else()
        add_executable(${target} ${source_dir}/${target}.cc)
    endif ()
    target_include_directories(${target} PRIVATE
            ${CMAKE_SOURCE_DIR}/lib/base/include
            ${CMAKE_SOURCE_DIR}/lib/fmtlib/include
            ${CMAKE_SOURCE_DIR}/lib/libsparse/include
            ${CMAKE_SOURCE_DIR}/partition_tools/mgr/liblp/include)
    if (${target} STREQUAL lpadd)
        target_compile_options(${target} PRIVATE -include "cstring")
    else()
        target_compile_options(${target} PRIVATE )
    endif ()
    target_link_options(${target} PRIVATE -static -s
            -Wl,--allow-multiple-definition)
    target_compile_definitions(${target} PRIVATE _FILE_OFFSET_BITS=64)
    target_link_libraries(${target} PRIVATE
            lp sparse base log crypto_utils crypto zlib ext4_utils)
endforeach()

add_dependencies(lpmake lpadd lpflash lpunpack lpdump)
