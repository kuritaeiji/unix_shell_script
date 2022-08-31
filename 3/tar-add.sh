#!/bin/bash

archivefile="$(date '+%Y%m').tar"
dayfile="$(date '+%Y%m%d').log"

tar rfv "$archivefile" "log/$dayfile"