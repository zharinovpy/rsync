#!/bin/bash

DEST_DIR=$1
BACKUP_DIR=$2
LOG_FILE=/var/log/syslog

rsync -a --delete "$DEST_DIR" "$BACKUP_DIR" > /dev/null 2>&1

if [ $? -eq  0 ]; then
  echo "ОК. Резервирование папки $DEST_DIR прошло успешно!" >> "$LOG_FILE"
else
  echo "ERR. Резервирование папки $DEST_DIR не выполнено!" >> "$LOG_FILE"
fi
