#!/usr/bin/env earl

module Debug

let debug = false;
try { debug = ("debug", "d", "g", "ggdb").contains(argv()[1]); }

if debug {
    $"cc -o main -Iinclude/ *.c -g -O0 -lforge";
} else {
    $"cc -o main -Iinclude/ *.c -lforge";
}
