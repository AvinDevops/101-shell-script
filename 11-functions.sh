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

    echo "Exit status: $1"
    echo "What are you doing: $2"

}

dnf install mysql -y
VALIDATE $? "Installing mysql"


dnf install git -y
VALIDATE $? "Installing git"