#!/bin/bash

USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo "you are not super user, please access with super user"
    exit 1
else
    echo "you are super user"
fi

dnf install mysqllll -y

dnf install git -y

echo "Script reached end!"