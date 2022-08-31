#!/bin/bash

cd "${0%/*}" || exit 1

tar cf - ../log | gzip -9 --stdout > app2.log.tar.gz