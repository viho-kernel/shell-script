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
        message+="High Disk Utilization on $partition: $usage \n"   
    fi
done <<< "$DISK_USAGE"

echo -e "Message: $message"

echo -e "Message: $message" | mail -s "message" vihari.reddy1802@gmail.com