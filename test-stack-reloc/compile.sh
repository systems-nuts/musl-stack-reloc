#!/bin/sh
../toolchain_x86-64/bin/musl-gcc -o sd self-dump.c -static -v

