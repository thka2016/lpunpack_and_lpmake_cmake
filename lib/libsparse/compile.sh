clang++ -static -std=c++17 -stdlib=libc++ -I./include -I../../lib/include -D__linux__ -c \
        "backed_block.cpp" \
        "output_file.cpp" \
        "sparse.cpp" \
        "sparse_crc32.cpp" \
        "sparse_err.cpp" \
        "sparse_read.cpp"
#ar rcs libsparse.a *.o
#clang++ -static -std=c++17 -stdlib=libc++ -I./include -I../../lib/include -D__linux__ -o simg2img.exe \
#        "simg2img.cpp" \
#        "sparse_crc32.cpp" \
#		"libsparse.a" "libbase.a" "libz.a"
#clang++ -static -std=c++17 -stdlib=libc++ -I./include -I../../lib/include -D__linux__ -o img2simg.exe \
#        "img2simg.cpp" \
#		"libsparse.a" "libbase.a" "libz.a"