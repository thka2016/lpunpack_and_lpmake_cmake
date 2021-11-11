clang -I../include -I. \
"-DHAVE_HIDDEN" \
"-DZLIB_CONST" \
"-Wall" \
"-Wno-unused" \
"-Wno-unused-parameter" \
"-DX86_NOT_WINDOWS" \
"-DADLER32_SIMD_SSSE3" \
"-mssse3" \
"-mpclmul" \
"-DCRC32_SIMD_SSE42_PCLMUL" \
"-DINFLATE_CHUNK_READ_64LE" \
-c \
"adler32.c" \
"compress.c" \
"crc32.c" \
"deflate.c" \
"gzclose.c" \
"gzlib.c" \
"gzread.c" \
"gzwrite.c" \
"infback.c" \
"inffast.c" \
"inflate.c" \
"inftrees.c" \
"trees.c" \
"uncompr.c" \
"zutil.c" \
"crc_folding.c" \
"fill_window_sse.c" \
"adler32_simd.c" \
"cpu_features.c" \
"crc32_simd.c"