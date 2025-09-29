#!/bin/bash

USER_FILE="users.txt"
DEFAULT_PASSWORD="Welcome@123"

#Step A: Check if the file exists
if [ ! -f $USER_FILE ]
then
    echo "$USER_FILE file not found!"
    exit 1
fi
#Step B: Read each line from the file and create users
while read USER; do
if 
   id "$USER" &>/dev/null; then
    echo "User $USER already exists, skipping..."
else
    useradd $USER
    echo "$USER:$DEFAULT_PASSWORD" | chpasswd
    passwd -e "$USER"  # Force password change on first login
    echo "User $USER created with default password."
