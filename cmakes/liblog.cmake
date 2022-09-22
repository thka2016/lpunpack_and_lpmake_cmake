# 220922
project(liblog CXX)
set(source_dir ${CMAKE_SOURCE_DIR}/lib/liblog)
set(sources
        ${source_dir}/log_event_list.cpp
        ${source_dir}/log_event_write.cpp
        ${source_dir}/logger_name.cpp
        ${source_dir}/logger_read.cpp
        ${source_dir}/logger_write.cpp
        ${source_dir}/logprint.cpp
        ${source_dir}/properties.cpp)
add_library(log ${sources})
target_include_directories(log PRIVATE
        ${source_dir}/include
        ${CMAKE_SOURCE_DIR}/lib/libcutils/include
        ${CMAKE_SOURCE_DIR}/lib/base/include)
target_compile_definitions(log PRIVATE
        __linux__
        LIBLOG_LOG_TAG=1006
        SNET_EVENT_LOG_TAG=1397638484)
