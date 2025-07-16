#!/bin/bash

set -e

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "you are not root user"
    exit
else 
    echo "you are root user"
fi

dnf install mysqlll -y

dnf install chrony -y

echo "Script reached end of the line."