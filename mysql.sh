#!/bin/bash

id=$(id -u)
if [ $id -eq 0 ]
then
    echo "You are a root user"
else
    echo "You must be a root user to run this"
    exit 1
fi
yum install mysql -y

if [ $? -eq 0 ]
then
    echo "MySQL installed successfully"
else
    echo "Failed to install MySQL"
    exit 1
fi

yum install git -y

if [$? -ne 0]
then
    echo "Git installation failed"
    exit 1
else
    echo "Git installed successfully"
    exit 0
fi
