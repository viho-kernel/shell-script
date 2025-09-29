#!/bin/bash
# Install necessary packages for user management
# Run this script with sudo or as root
ID=$(id -u)
R=$\e[31m
G=$\e[32m
N=$\e[0m
if [ "$ID" -ne 0 ] 
then    
  echo "$R Error:: This script must be run as root or with sudo.$N"
  exit 1
else
    echo "$G You are running this script as root.$N"

fi

echo "$G All arguments passed: $@$N"



