#!/bin/bash

disk_usage=$(df -ht | grep -vE 'tmp|File')
Threshold_Value=10
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $Threshold_Value ]
    then
        message+="High Disk Utilization on $partition: $usage \n"   
    fi
done <<< "$disk_usage"
echo -e "Message: $message"