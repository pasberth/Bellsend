#!/usr/bin/env sh
TOOLS=`dirname $0`
SRC=`dirname $TOOLS`/source
NOV=`dirname $TOOLS`/novel

$TOOLS/build.rb $SRC/2012-11-04.rst > $NOV/2012-11-04.rst
$TOOLS/build.rb $SRC/2012-12-11.rst > $NOV/2012-12-11.rst
$TOOLS/build.rb $SRC/2012-12-14.rst > $NOV/2012-12-14.rst
$TOOLS/build.rb $SRC/2012-12-15.rst > $NOV/2012-12-15.rst
$TOOLS/build.rb $SRC/2012-12-16.rst > $NOV/2012-12-16.rst
$TOOLS/build.rb $SRC/2012-12-17.rst > $NOV/2012-12-17.rst
