#!/bin/sh
#
# update-pecl-stats.sh

pecl download stats
tar zxf stats-1.0.3.tgz

wget http://www.netlib.org/random/dcdflib.c.tar.gz
tar zxf dcdflib.c.tar.gz
cp -p dcdflib.c/src/* stats-1.0.3/

wget http://www.netlib.org/random/ranlib.c.tar.gz
tar zxf ranlib.c.tar.gz
cp -p ranlib.c/linpack/* stats-1.0.3/
cp -p ranlib.c/src/* stats-1.0.3/
rm -f stats-1.0.3/randlib.c stats-1.0.3/randlib.h

mkdir fdlibm
pushd fdlibm
wget http://www.netlib.org/fdlibm/fdlibm.h
cp -p fdlibm.h ../stats-1.0.3/
for f in e_lgamma_r.c e_log.c k_cos.c k_sin.c w_lgamma.c; do
  wget http://www.netlib.org/fdlibm/$f
  cp -p $f ../stats-1.0.3/
  rm -f ../stats-1.0.3/fd_$f
done
popd

#patch -p1 -d stats-1.0.3 <stats-1.0.3.patch
patch -p1 -d stats-1.0.3 <stats-1.0.3-cdftnc.patch
