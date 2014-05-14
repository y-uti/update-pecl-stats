#!/bin/sh
#
# update-pecl-stats.sh

pecl download stats
tar zxf stats-1.0.3.tgz

cp -p dcdflib.c/src/* stats-1.0.3/
cp -p randlib.c/src/* stats-1.0.3/
cp -p fdlibm/*.[ch] stats-1.0.3/
rm -f stats-1.0.3/fd_*

patch -p1 -d stats-1.0.3 <stats-1.0.3.patch
