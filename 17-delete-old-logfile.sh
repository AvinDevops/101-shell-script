#!/bin/bash

SOURCE_DIR=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIR ]
then
    echo -e "$G DIR $SOURCE_DIR exists $N"
else
    echo -e "$R DIR $SOURCE_DIR does not exist $N"
    exit
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)

while IFS= read -r line
do 
    echo "file to delete is: $line"
    rm -rf $line

done <<< $FILES