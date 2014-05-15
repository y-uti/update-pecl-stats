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
