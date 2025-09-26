#!/bin/bash

id=$(id -u)
if [ $id -ne 0 ]
then
    echo "You must be a root user to run this script"
    exit 1
else
    echo "You are a root user"
fi
yum install mysql -y

echo "mysql --version"