# 220922
project(zlib C)
set(source_dir ${CMAKE_SOURCE_DIR}/lib/zlib)
set(sources
        ${source_dir}/adler32.c
        ${source_dir}/compress.c
        ${source_dir}/crc32.c
        ${source_dir}/deflate.c
        ${source_dir}/gzclose.c
        ${source_dir}/gzlib.c
        ${source_dir}/gzread.c
        ${source_dir}/gzwrite.c
        ${source_dir}/infback.c
        ${source_dir}/inffast.c
        ${source_dir}/inflate.c
        ${source_dir}/inftrees.c
        ${source_dir}/trees.c
        ${source_dir}/uncompr.c
        ${source_dir}/zutil.c
        ${source_dir}/crc_folding.c
        ${source_dir}/fill_window_sse.c
        ${source_dir}/adler32_simd.c
        ${source_dir}/cpu_features.c
        ${source_dir}/crc32_simd.c)
add_library(zlib ${sources})
target_include_directories(zlib PRIVATE
        ${source_dir})
target_compile_definitions(zlib PRIVATE
        HAVE_HIDDEN
        ZLIB_CONST
        X86_NOT_WINDOWS
        ADLER32_SIMD_SSSE3
        CRC32_SIMD_SSE42_PCLMUL
        INFLATE_CHUNK_READ_64LE)
target_compile_options(zlib PRIVATE
        -Wall
        -Wno-unused
        -Wno-unused-parameter
        -mssse3
        -mpclmul)
