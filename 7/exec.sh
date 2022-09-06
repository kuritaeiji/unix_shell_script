#!/bin/bash

export TMPDIR="disk1/tmp"

exec ./myapp "$@"
