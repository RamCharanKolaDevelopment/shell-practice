#!/bin/bash

user=$(id -u) # to get user id

if [ $user -ne 0 ]; then
    echo "you need root user access to execute this script"
    exit 1
fi

# VALIDATE() {} => is used to write finctions in shell scripting
# like in other programming langiages in shell we can use VALIDATE to write reusable functions.
VALIDATE() {
    if [ $1 -eq 0 ]; then
        echo "$2...SUCCESS"
    else
        echo "$2...FAILURE"
    fi
}

dnf install nginx -y
VALIDATE $? "installation nginx"

dnf install nodejs -y
VALIDATE $? "installation nodejs"

dnf install mysql -y
VALIDATE $? "installation mysql"