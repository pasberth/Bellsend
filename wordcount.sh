#!/usr/bin/env sh
cat $1 | ruby -e 'p $stdin.read.length'
