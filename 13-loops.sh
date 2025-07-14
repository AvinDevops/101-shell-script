#!/bin/bash

# for i in {1..20}
# do 
#     echo $i 
# done
# for i in $@
# do 
#     echo $i 
# done

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

for i in $@
do
    echo "Installing package is: $i"
    dnf list installed $i &>>LOGFILE
    if [ $? -eq 0 ]
    then
        echo -e "$G $i is already installed $N"
        exit
    else
        echo "$R $i is not installed $N"
        dnf install $i -y &>>LOGFILE
        VALIDATE $? "Installing $i"
    fi
done
