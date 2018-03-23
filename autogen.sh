#!/bin/sh
# Run this to generate all the initial configure script
test -n "$srcdir" || srcdir=`dirname "$0"`
test -n "$srcdir" || srcdir=.

olddir=`pwd`

cd $srcdir

(test -f configure.ac) || {
	echo "*** ERROR: Directory "\`$srcdir\'" does not look like the top-level project directory ***"
	exit 1
}

PKG_NAME=`autoconf --trace 'AC_INIT:$1' configure.ac`

aclocal --install || exit 1
autoreconf --verbose --force --install -Wno-portability || exit 1
rm -rf autom4te.cache

echo "Now make a build directory and run ../configure from there...."

