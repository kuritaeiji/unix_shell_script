#!/bin/bash

envname="TMPVAR"
tmpfile="envfile.$$"

env | cut -d = -f 1 > "$tmpfile"

grep -q "$envname" "$tmpfile"

if [ "$?" -eq 0 ]; then
    echo "環境変数 $envname は設定されています"
    ./start.sh
else
    echo "$envname is undefined"
fi

rm -f "$tmpfile"