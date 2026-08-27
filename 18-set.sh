#!/bin/bash
set -e

R="\e[31m"
G="\e[32m"
N="\e[0m"

USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo -e "$R you are not super user, please access with super user $N"
    exit 1
else
    echo -e "$G you are super user $N"
fi

dnf install mysqllll -y

dnf install git -y

echo "Script reached end!"