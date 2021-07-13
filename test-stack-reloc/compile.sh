#!/bin/sh
/usr/local/musl/bin/musl-gcc -o sd self-dump.c -static -v -g
