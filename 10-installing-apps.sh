#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "you are not root user, please run run with root access"
else
    echo "you are root user"
fi

dnf install mysql -y

dnf install git -y

echo "Execution reached last line of code"