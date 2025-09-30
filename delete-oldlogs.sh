#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SOURCE_DIR="tmp/shellscript-logs"

cd /tmp/shellscript-logs

if [ ! -d "$SOURCE_DIR" ]
then
  echo -e "${R}Source directory:: $SOURCE_DIR does not exist. Exiting.${N}"
else
  echo -e "${G}Source directory:: $SOURCE_DIR found. Proceeding to delete old log files.${N}"
fi

FILESTODELETE=$(find $SOURCE_DIR -type f -name "*.log" -mtime +14)

while IFS= read -r line;
do
    echo "Deleting file: $line"
    rm -f "$line"
done <<< "$FILESTODELETE"
