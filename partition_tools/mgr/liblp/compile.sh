clang++ -static -std=c++17 -stdlib=libc++ -D_FILE_OFFSET_BITS=64 -c -I./include -I../../../lib/include \
        "builder.cpp" \
        "images.cpp" \
        "partition_opener.cpp" \
        "property_fetcher.cpp" \
        "reader.cpp" \
        "utility.cpp" \
        "writer.cpp"
ar rcs liblp.a *.o