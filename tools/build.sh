#!/usr/bin/env sh
TOOLS=`dirname $0`
SRC=`dirname $TOOLS`/source
NOV=`dirname $TOOLS`/novel

$TOOLS/novel-list.sh | $TOOLS/each_cons.sh -p 2 | while read SET; do
  SET=($SET)
  ID=${SET[0]}
  NXT=${SET[1]}

  echo building $ID..
  $TOOLS/build.rb $SRC/$ID $NXT > $NOV/$ID
done
