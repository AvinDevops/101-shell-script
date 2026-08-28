#!/bin/bash

DISK_USEAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=6

while IFS= read -r line
do 
    USEAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    echo "useage is:$USEAGE"
    if [ $USEAGE -ge $DISK_THRESHOLD ]
    then
        echo "Folder:$FOLDER is more than $DISK_THRESHOLD, current useage is: $USEAGE"
    fi
done <<<$DISK_USAGE
