#!/bin/bash

USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo "you are not root user, please access with root access"
else
    echo "you are root user"
fi

dnf install mysql -y