#!/bin/sh
[ -d m4 ] || mkdir m4
aclocal -I m4
libtoolize --copy --force
autoconf
autoheader
touch config.h.in
automake --foreign --add-missing --copy
rm -rf autom4te.cache
