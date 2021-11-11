clang++ -std=c++17 -stdlib=libc++ -I../include -D_FILE_OFFSET_BITS=64 -static \
-c \
"builder.cpp" \
"images.cpp" \
"partition_opener.cpp" \
"property_fetcher.cpp" \
"reader.cpp" \
"utility.cpp" \
"writer.cpp"