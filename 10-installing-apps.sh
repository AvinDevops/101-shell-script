#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "you are not root user, please run run with root access"
    exit 1
else
    echo "you are root user"
fi

dnf install mysql -y
if [ $? -ne 0 ]
then 
    echo "Installation is failed"
    exit 0
else
    echo "Installation is success"
fi


dnf install git -y
if [ $? -ne 0 ]
then 
    echo "Installation is failed"
    exit
else
    echo "Installation is success"
fi


echo "Execution reached last line of code"