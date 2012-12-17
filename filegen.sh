#!/usr/bin/env sh

ID=$(date +%Y-%m-%d)
BODYF=source/${ID}.rst
OUTF=novel/${ID}.rst

touch $BODYF
touch $OUTF
git add $BODYF
git add $OUTF
echo "./build.rb $BODYF > $OUTF" >> build.sh
echo $ID was created.
