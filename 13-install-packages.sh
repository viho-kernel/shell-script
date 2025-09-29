#!/bin/bash
# Install necessary packages for user management
# Run this script with sudo or as root
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started execution at $TIMESTAMP" &>>$LOGFILE
VALIDATE() {
  if [ $1 -ne 0 ]
  then
      echo -e "$R Error:: $2 is failed.$N"
  else
      echo -e "$G Success:: $2 is successful.$N"
  fi

}
if [ $ID -ne 0 ] 
then    
  echo -e "$R Error:: This script must be run as root or with sudo.$N"
  exit 1
else
    echo -e "$G You are running this script as root.$N"

fi

echo -e "$G All arguments passed: $@"

for package in $@
do 
    yum list installed $package &>>$LOGFILE #check installed or not
    if [ $? -ne 0 ] #if not installed
    then
        yum install $package -y &>>$LOGFILE #install package
        VALIDATE $? "Installation of $package" #validate installation
    else
        echo -e "$Y Warning:: $package is already installed, skipping...$N"
    fi

done



