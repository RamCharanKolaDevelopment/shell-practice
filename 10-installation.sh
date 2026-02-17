#!/bin/bash

# "id -u" is to get user id
user=$(id -u)

if [ $user -ne 0 ]; then
    echo "you should run this script with root user access to install nginx."
    # "exit 1" this exit code is used to stop execution next lines of shell statement/code line below. 
    # we can give give any exit code from 0 to 127.
    # the shell compiler will check only exit code to stop executing next scripts in the shell.
    exit 1
fi

echo "installing....nginx"
dnf install nginx -y

# $? is to get last executed command status, this value will be from 0 to 127
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



