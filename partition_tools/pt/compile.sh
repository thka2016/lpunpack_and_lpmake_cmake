clang++ -std=c++17 -stdlib=libc++ -I../../lib/include -I../../lib/fmtlib/include -static -D_FILE_OFFSET_BITS=64 -o lpmake.exe lpmake.cc liblp.a libsparse.a libext4_utils.a libz.a libbase.a liblog.a libfmt.a libcrypto_utils.a libcrypto.a -lpthread 

clang++ -std=c++17 -stdlib=libc++ -I../../lib/include -I../../lib/fmtlib/include -static -D_FILE_OFFSET_BITS=64 -o lpadd.exe lpadd.cc liblp.a libsparse.a libext4_utils.a libz.a libbase.a liblog.a libfmt.a libcrypto_utils.a libcrypto.a -lpthread 

clang++ -std=c++17 -stdlib=libc++ -I../../lib/include -I../../lib/fmtlib/include -static -D_FILE_OFFSET_BITS=64 -o lpflash.exe lpflash.cc liblp.a libsparse.a libext4_utils.a libz.a libbase.a liblog.a libfmt.a libcrypto_utils.a libcrypto.a -lpthread 

clang++ -std=c++17 -stdlib=libc++ -I../../lib/include -I../../lib/fmtlib/include -static -D_FILE_OFFSET_BITS=64 -o lpunpack.exe lpunpack.cc liblp.a libsparse.a libext4_utils.a libz.a libbase.a liblog.a libfmt.a libcrypto_utils.a libcrypto.a -lpthread

#clang++ -std=c++17 -stdlib=libc++ -I../../lib/include -I../../lib/fmtlib/include -I../libjsonpbparse/parse/include -I./protobuf/src -static -D_FILE_OFFSET_BITS=64 -c lpdump.cc
#ar rcs liblpdump.a lpdump.o

#clang++ -std=c++17 -stdlib=libc++ -I../../lib/include -I../../lib/fmtlib/include -I../libjsonpbparse/parse/include -I./protobuf/src -static -D_FILE_OFFSET_BITS=64 -o lpdump.exe lpdump_host.cc dynamic_partitions_device_info.pb.cc liblpdump.a liblp.a libsparse.a libext4_utils.a libz.a libbase.a liblog.a libfmt.a libcrypto_utils.a libcrypto.a libjsonpbparse.a libprotobuf-cpp-full.a -lpthread 