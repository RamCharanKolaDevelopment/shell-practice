#!/bin/bash

user_id=$(id -u)
log_folder="/var/log/shell-script"
log_file="/var/log/shell-script/$0.log"

if [ $user_id -ne 0 ]; then
    echo "you need root user access to run this script"
    exit 1
fi

mkdir -p $log_folder

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2...FAILURE"
    else
        echo "$2...SUCCESS"
    fi
}

for package in $@
do
    dnf list installed $package &>> $log_file
    if [ $? -ne 0 ]; then
        echo "$package not installed, installing now"
        # VALIDATE $? "$package installation"
    else
        echo "$package already installed, skipping"
    fi
done