#!/usr/bin/env sh

ID=$(date +%Y-%m-%d)
BODYF=source/${ID}_body.rst
OUTF=source/${ID}.rst

touch $BODYF
touch $OUTF
git add $BODYF
git add $OUTF
echo "./build.rb $BODYF > $OUTF" >> build.sh
echo $ID was created.
