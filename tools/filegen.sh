#!/usr/bin/env sh

TOOLS=`dirname $0`
SRC=`dirname $TOOLS`/source
NOV=`dirname $TOOLS`/novel

ID=$(date +%Y-%m-%d)
BODYF=$SRC/${ID}.rst
OUTF=$NOV/${ID}.rst

touch $BODYF
touch $OUTF
git add $BODYF
git add $OUTF
echo "\$TOOLS/build.rb $BODYF > $OUTF" >> build.sh
echo $ID was created.
