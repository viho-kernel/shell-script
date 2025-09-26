#!/bin/bash

id=$(id -u)
if [ $id -ne 0 ]
then
    echo "You must be a root user to run this script"
else
    echo "You are a root user"
fi

exit 0

yum install mysql -y