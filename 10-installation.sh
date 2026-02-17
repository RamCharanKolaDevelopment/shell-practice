#!/bin/bash

# "id -u" is to get user id
user=$(id -u)

if [ $user -ne 0 ]; then
    echo "you should run this script with root user access to install nginx."
# elif [ $user -eq 0 ]; then
#     dnf install nginx -y
fi

dnf install nginx -y