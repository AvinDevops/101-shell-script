#!/bin/bash

USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo "you are not root user, please access with root access"
    exit
else
    echo "you are root user"
fi

# VALIDATE(){
#     echo "exit status: $1"
#     echo "What are you doing: $2"
# }
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2...FAILED"
        exit
    else
        echo "$2...SUCCESS"
    fi
}

dnf install mysql -y
VALIDATE $? "Installing mysql"

dnf install git -y
VALIDATE $? "Installing git"