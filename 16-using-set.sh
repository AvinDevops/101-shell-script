#!/bin/bash

set -e

error_catch(){

    echo "Error at line no: $1"
    echo "Error command desc: $2"

}

trap ' error_catch ${LINENO} "$BASH_COMMAND"' ERR

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "you are not root user"
    exit
else 
    echo "you are root user"
fi

dnf install mysqlll -y

dnf install chrony -y

echo "Script reached end of the line."