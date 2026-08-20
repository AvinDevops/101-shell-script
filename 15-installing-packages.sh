#!/bin/bash

USER=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USER -ne 0 ]
then
    echo -e "$R you are not root user, please access with root user $N"
    exit
else
    echo -e "$G you are root user $N"
fi

for i in $@
do
    echo $i
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then
        echo -e "$i is installed...$Y SKIPPING $N"
    else
        echo -e "$i is not $R installed $N"
    fi
done