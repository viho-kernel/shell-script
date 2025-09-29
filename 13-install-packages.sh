#!/bin/bash
# Install necessary packages for user management
# Run this script with sudo or as root
ID=$(id -u)
if [ "$ID" -ne 0 ] 
then    
  echo "This script must be run as root or with sudo."
  exit 1
else
    echo "You are running this script as root."

fi

echo "All \e[32marguments passed: $@\e[0m"



