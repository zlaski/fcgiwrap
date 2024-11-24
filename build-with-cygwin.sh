#!/bin/bash
rm -rf config.* aclocal.m4 configure Makefile autom4te.cache fcgiwrap.exe
autoreconf -i
FL="-O0 -g3 -Wno-error=implicit-fallthrough -Wno-implicit-fallthrough -L/usr/local/lib"
./configure CFLAGS="$FL" CXXFLAGS="$FL" LDFLAGS="-L/usr/local/lib" LIBS="/usr/local/lib/libfcgi.a"
make
make install
