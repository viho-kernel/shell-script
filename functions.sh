#!/bin/bash

ID=$(id -u)

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

if [ $ID -eq 0 ]
then
    echo "You are a root user"
else
    echo "You must be a root user to run this"
    exit 1
fi

yum install mysql -y

VALIDATE $? "MySQL"

yum install git -y

VALIDATE $? "Git"
