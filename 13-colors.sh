#!/bin/bash

USER=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

if [ $USER -ne 0 ]
then
    echo "you are not root user, please access with root"
    exit
else
    echo "you are root user"
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is...FAILED"
        exit
    else
        echo "$2 is...SUCCESS"
    fi
}

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing git"

dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "Installing git"