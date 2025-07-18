#!/bin/bash

DISK_SPACE=$(df -hT | grep xfs)
DISK_THRESHOLD=10
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print $NF}')

    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="This folder: $FOLDER is more than $DISK_THRESHOLD, current usage is: $USAGE \n"
    fi

done <<< $DISK_SPACE

echo -e "Message:$MESSAGE" | mail -s "DISK USEAGE" avinashbandela25@gmail.com
