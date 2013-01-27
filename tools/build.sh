#!/usr/bin/env sh
TOOLS=`dirname $0`
SRC=`dirname $TOOLS`/source
cat <<EOF
TODO: build.rb と build.sh,
今は書き出すディレクトリをハードコードしてある。
あとで直して。
EOF
NOV=`dirname $TOOLS`/novel/chapter-01/act-01

novel-list | each_cons -p -n 2 | while read ID && read NXT; do
  echo building $ID..
  $TOOLS/build.rb $SRC/$ID $NXT > $NOV/$ID
done
