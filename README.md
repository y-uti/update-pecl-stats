update-pecl-stats
=================

*This fix has already been applied to official releases so you don't need to apply the fix.  Please use the latest release from https://pecl.php.net/package/stats.*

---

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
