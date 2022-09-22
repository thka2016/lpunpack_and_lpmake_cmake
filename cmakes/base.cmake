# 220724
project(base CXX)
set(source_dir ${CMAKE_SOURCE_DIR}/lib/base)
add_library(base
        ${source_dir}/abi_compatibility.cpp
        ${source_dir}/chrono_utils.cpp
        ${source_dir}/cmsg.cpp
        ${source_dir}/file.cpp
        ${source_dir}/liblog_symbols.cpp
        ${source_dir}/logging.cpp
        ${source_dir}/mapped_file.cpp
        ${source_dir}/parsebool.cpp
        ${source_dir}/parsenetaddress.cpp
        ${source_dir}/process.cpp
        ${source_dir}/properties.cpp
        ${source_dir}/stringprintf.cpp
        ${source_dir}/strings.cpp
        ${source_dir}/threads.cpp
        ${source_dir}/test_utils.cpp
        ${source_dir}/errors_unix.cpp)
target_include_directories(base PRIVATE
        ${source_dir}/include
        ${CMAKE_SOURCE_DIR}/lib/liblog/include)
