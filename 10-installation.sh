#!/bin/bash

# "id -u" is to get user id
user=$(id -u)

if [ $user -ne 0 ]; then
    echo "you should run this script with root user access to install nginx."
fi

echo "installing....nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "installation....FAILURE"
else
    echo "installation...SUCCESS"
fi

echo "installing...mysql"
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "installation...FAILURE"
else
    echo "installation...SUCCESS"
fi

echo "installing...nodejs"
dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "installation...FAILURE"
else
    echo "installation...SUCCESS"
fi



