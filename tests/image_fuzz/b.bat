@echo off
setlocal
REM On Windows, this requires Clang-9.0 or higher. As of writing 2019-03-03, LLVM-7.0.1
REM is stable; you need to use a nightly snapshot right now.
cd %~dp0
mkdir build 2>nul
clang -g -O1 -I../.. -fsanitize=fuzzer,address image_fuzz.c -o build/image_fuzz.exe
