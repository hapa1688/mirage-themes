#!/bin/sh
# Run this to generate all the initial makefiles, etc.

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

PKG_NAME="mirage-themes"

(test -f $srcdir/configure.ac) || {
    echo -n "**Error**: Directory "\`$srcdir\'" does not look like the"
    echo " top-level $PKG_NAME directory"
    exit 1
}

which mirage-autogen || {
    echo "You need to install mirage-common from the MIRAGE Git"
    exit 1
}

REQUIRED_AUTOMAKE_VERSION=1.9
USE_MIRAGE2_MACROS=1
USE_COMMON_DOC_BUILD=yes

. mirage-autogen

