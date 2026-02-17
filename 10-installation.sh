#!/bin/bash

# "id -u" is to get user id
user=$(id -u)

if [ $user -ne 0 ]; then
    echo "you should run this script with root user access to install nginx."
    exit 0
fi

echo "installing....nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "installation....FAILURE"
else
    echo "installation...SUCCESS"
fi

