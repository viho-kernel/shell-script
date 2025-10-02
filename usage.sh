#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=10
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1}')
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="High Disk Utilization on $partition: $usage"   
    fi
done <<< "$DISK_USAGE"

echo "Message: $message"