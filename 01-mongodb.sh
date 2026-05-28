#!/bin/bash

LOGS_FOLDER="/Var/log/roboshop"
sudo mkdir -p $LOGS_FOLDER
sudo chown  -R ec2-user:ec2-user |$LOGs-FOLDER
sudo chmod -R 755 $LOGS_FOLDER
LOGS_FILES="LOGS_FOLDER/$|0.logs"

USERID=(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [$USERID -ne 0]; then
   echo "Please run this script with root access"
   exit 1
   fi
      
      
VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e $TIMESTAMP [ERROR] $2  ...$R FAILED $N" | tee -a $LOGS_FILE
        exit 1
    else
        echo -e $TIMESTAMP [INFO] $2  ...$G SUCCESS $N" | tee -a $LOGS_FILE
    fi
}

cp mongo.repo /etc/yum.repo.d/mongo.repo
VALIDATE $? "Adding Mongo repo"

