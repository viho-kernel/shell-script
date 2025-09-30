#!/bin/bash

file=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $file ]
then
  echo "File $file does not exist. Exiting."

else
  echo "File $file found. Proceeding with user creation."
fi

while IFS=":" read -r username password user_id group_id user_fullname home_directory shell_path
do
    echo "username: $username"
    echo "password: $password"
    echo "User Full name: $user_fullname"
done < $file