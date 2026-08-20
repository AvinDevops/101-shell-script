#!/bin/bash

USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo "you are not root user, please access with root access"
    exit
else
    echo "you are root user"
fi

dnf install mysqll -y
if [ $? -ne 0 ]
then
    echo "Installing mysql is...FAILED"
    exit
else
    echo "Installing mysql is...SUCCESS"
fi

dnf install git -y
if [ $? -ne 0 ]
then
    echo "Installing git is...FAILED"
    exit
else
    echo "Installing git is...SUCCESS"
fi

echo "is script reached end..!"