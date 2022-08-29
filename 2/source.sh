#!/bin/bash

[ -f env.sh ] && source "env.sh"

nowtime
cp -i -v largefile.tar.gz "$WORK_DIR"
nowtime