#!/bin/sh
mkdir build
clang -g -O1 -I../.. -fsanitize=fuzzer,address image_fuzz.c -o build/image_fuzz

