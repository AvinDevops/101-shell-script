#!/bin/bash

USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo "you are not root user, please access with root access"
    exit 1
else
    echo "you are root user"
fi

dnf install mysqll -y

dnf install git -y

echo "is script reached end..!"