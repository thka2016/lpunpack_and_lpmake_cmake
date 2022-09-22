# 220922
project(libcrypto_utils C)
set(source_dir ${CMAKE_SOURCE_DIR}/lib/libcrypto_utils)
set(sources ${source_dir}/android_pubkey.c)
add_library(crypto_utils ${sources})
target_include_directories(crypto_utils PRIVATE
        ${source_dir}/include
        ${CMAKE_SOURCE_DIR}/lib/boringssl/include)
