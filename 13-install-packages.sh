#!/bin/bash
# Install necessary packages for user management
# Run this script with sudo or as root
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ $ID -ne 0 ] 
then    
  echo -e "$R Error:: This script must be run as root or with sudo.$N"
  exit 1
else
    echo -e "$G You are running this script as root."

fi

echo -e "$G All arguments passed: $@"



