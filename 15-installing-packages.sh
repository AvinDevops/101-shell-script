#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then
    echo "you are not root user, please access with root user"
    exit
else
    echo "you are root user"
fi

for i in $@
do
    echo $i
    dnf list installed $i
    if [ $? -eq 0 ]
    then
        echo "$i is installed...SKIPPING"
    else
        echo "$i is not installed"
    fi
done