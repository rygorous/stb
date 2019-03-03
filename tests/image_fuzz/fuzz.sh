#!/bin/sh
mkdir corpus
build/image_fuzz corpus seeds -max_len=4096 -timeout=20 -jobs=10
