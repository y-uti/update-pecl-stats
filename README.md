update-pecl-stats
=================

This is a script to replace library source files used in PECL::stats (ver. 1.0.3).

### Usage

Clone this repository and execute update-pecl-stats.sh script.

```
$ git clone https://github.com/y-uti/update-pecl-stats.git
$ cd update-pecl-stats
$ ./update-pecl-stats.sh
```

Then build and install the module as usual.

```
$ cd stats-1.0.3
$ phpize
$ ./configure
$ make
$ sudo make install
```

### Description

This script downloads following files:
- PECL::stats
- DCDFLIB, RANDLIB, and some files in FDLIBM (from Netlib),

copy library files into PECL::stats, and applies stats-1.0.3-cdftnc.patch to it.

At the moment, cdftnc is not supported by DCDFLIB (it is not appeared in cdflib.h).
The implementation is imported from the current dcdflib.c in PECL::stats to the patch file.
If you don't use stats_cdf_noncentral_t, you can use stats-1.0.3.patch, alternatively.


