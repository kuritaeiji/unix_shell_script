#!/bin/bash

filename=largefile.tar.gz

cp "$filename" "${TMPDIR:=/tmp}"
cd $TMPDIR || exit

tar xfz "$filename"
cd - || exit

echo "extract files to $TMPDIR"