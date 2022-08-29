#!/bin/bash

cd "$HOME/datadir" || exit

tar cf - bigfile1.dat bigfile2.dat | pv | gzip > archive.tar.gz

cd - || exit