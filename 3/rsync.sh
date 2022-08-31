#!/bin/bash

logdir="${HOME}/log"
backupdir="${HOME}/3/backup"

rsync -av "$logdir" "$backupdir"

# rsync -av -e ssh --delete "$logdir" "user1@server1:$backupdir"