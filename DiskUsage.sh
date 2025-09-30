#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_Threshold=1
message=""

while IFS= read -r line;
do
    usage=$(echo $line | awk '{print $6F}' | cut -d'%' -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $DISK_Threshold ]
    then
        message +="High Disk Utilization on $partition. Usage is at ${usage}%
"
    fi
done <<< "$DISK_USAGE"

echo -e "Message: $message"