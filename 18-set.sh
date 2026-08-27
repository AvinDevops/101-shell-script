#!/bin/bash
set -e

error_handler(){
    echo "error line no: $1 and error desc: $2"
}

trap 'error_handler ${LINENO} "$BASH_COMMAND"' ERR

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