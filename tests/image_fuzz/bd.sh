#!/bin/sh
mkdir -p build
clang -g -O0 -I../.. -fsanitize=fuzzer,address image_fuzz.c -o build/image_fuzz

