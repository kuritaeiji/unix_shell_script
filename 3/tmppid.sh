#!/bin/bash

tmpfile="tmp.$$"

date > $tmpfile
sleep 10

cat $tmpfile
rm -f $tmpfile