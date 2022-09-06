#!/bin/bash

set -e

deldir="/var/log/myapp-"

cd "$deldir"

rm -f ./*.log
