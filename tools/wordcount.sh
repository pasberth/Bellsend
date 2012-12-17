#!/usr/bin/env sh
cat $* | ruby -e 'p $stdin.read.length'
