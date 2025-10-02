#!/bin/bash

SOURCE_DIR="/tmp/shell-script"

if [ ! -d "$SOURCE_DIR" ]; then
  echo "Source directory $SOURCE_DIR does not exist."
  exit 1
fi

FILES_TO_DELETE=$(find "$SOURCE_DIR" -type f -name "*.java" -mtime +7)

while IFS= read -r line
do
    echo "Deleting the file $line"
    rm -f "$line"
done <<<"$FILES_TO_DELETE"

