#!/bin/bash

logdir="."

find "$logdir" -name "*.log" -mtime +364 -print0 | xargs -0 ls