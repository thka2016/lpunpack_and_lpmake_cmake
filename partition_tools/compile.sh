clang++ -std=c++17 -stdlib=libc++ -I../lib/include -static -D_FILE_OFFSET_BITS=64 -o lpmake.exe lpmake.cc liblp.a libsparse.a libext4_utils.a libz.a libbase.a liblog.a libfmt.a libcrypto_utils.a libcrypto.a -lpthread 

clang++ -std=c++17 -stdlib=libc++ -I../lib/include -static -D_FILE_OFFSET_BITS=64 -o lpadd.exe lpadd.cc liblp.a libsparse.a libext4_utils.a libz.a libbase.a liblog.a libfmt.a libcrypto_utils.a libcrypto.a -lpthread 

clang++ -std=c++17 -stdlib=libc++ -I../lib/include -static -D_FILE_OFFSET_BITS=64 -o lpflash.exe lpflash.cc liblp.a libsparse.a libext4_utils.a libz.a libbase.a liblog.a libfmt.a libcrypto_utils.a libcrypto.a -lpthread 

clang++ -std=c++17 -stdlib=libc++ -I../lib/include -static -D_FILE_OFFSET_BITS=64 -o lpunpack.exe lpunpack.cc liblp.a libsparse.a libext4_utils.a libz.a libbase.a liblog.a libfmt.a libcrypto_utils.a libcrypto.a -lpthread 