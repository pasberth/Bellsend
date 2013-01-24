#!/usr/bin/env sh
TOOLS=`dirname $0`
SRC=`dirname $TOOLS`/source
NOV=`dirname $TOOLS`/novel

novel-list | each_cons -p -n 2 | while read ID && read NXT; do
  echo building $ID..
  $TOOLS/build.rb $SRC/$ID $NXT > $NOV/$ID
done
