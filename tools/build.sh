#!/usr/bin/env sh
TOOLS=`dirname $0`
SRC=`dirname $TOOLS`/source
NOV=`dirname $TOOLS`/novel

$TOOLS/novel-list.sh | while read ID; do
  echo building $ID..
  $TOOLS/build.rb $SRC/$ID > $NOV/$ID
done
