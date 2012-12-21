#!/usr/bin/env sh

TOOLS=`dirname $0`
SRC=`dirname $TOOLS`/source
emacs $SRC/`$TOOLS/novel-list.sh | tail -n 1`
