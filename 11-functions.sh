#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "you are not super user"
    exit
else
    echo "you are super user"
fi

VALIDATE(){

    # echo "Exit status: $1"
    # echo "What are you doing: $2"

    if [ $1 -ne 0 ]
    then
        echo "$2... is FAILED"
        exit
    else
        echo "$2... is SUCCESS"
    fi
}

dnf install mysqll -y
VALIDATE $? "Installing mysql"


dnf install git -y
VALIDATE $? "Installing git"