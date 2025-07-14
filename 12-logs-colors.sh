#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

#getting colors
R="\e[31m"
G="\e[32m"
Y="\e[32m"
N="\e[0m"

#creating function
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2....is $R FAILED $N"
        exit
    else   
        echo -e "$2....is $G SUCCESS $N"
    fi
}

#checking root user or not
if [ $USERID -ne 0 ]
then 
    echo -e "$R you are not root user $N"
    exit
else
    echo -e "$G you are root user $N"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing git"

dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "Installing docker"


