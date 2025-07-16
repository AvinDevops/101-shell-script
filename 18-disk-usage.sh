#!/bin/bash

DISK_SPACE=$(df -hT | grep xfs)
DISK_THRESHOLD=10

while IFS= read -r line
do
    USAGE=$($line | awk -F " " '{print $6F}')
    FOLDER=$($line | awk -F " " '{print $NF}')

    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        echo "This folder: $FOLDER is more than $DISK_THRESHOLD, current usage is: $USAGE"
    fi

done <<< $DISK_SPACE