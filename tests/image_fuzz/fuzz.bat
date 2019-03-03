@echo off
setlocal
cd %~dp0
mkdir corpus 2>nul
build\image_fuzz corpus seeds -max_len=4096 -timeout=20 -jobs=10
