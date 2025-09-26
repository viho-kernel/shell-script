#!/bin/bash


TIMESTAMP=$(date +'%Y-%m-%d %H:%M:%S')
LOG_FILE="/var/log/$0-$TIMESTAMP.log"

VALIDATE() {
  if [ $1 -ne 0 ]
  then
      echo "$2 installation failed"
      exit 1
  else
      echo "$2 installed successfully"
      exit 0
  fi

}

yum install mysql -y &>> $LOG_FILE

VALIDATE $? "MySQL" 

yum install git -y &>> $LOG_FILE

VALIDATE $? "Git"


