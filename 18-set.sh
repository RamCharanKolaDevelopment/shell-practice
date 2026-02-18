#!/bin/bash

set -e # to set error messages if any thing failed in shell script

user_id=$(id -u)
log_folder="/var/log/shell-script"
log_file="/var/log/shell-script/$0.log"

if [ $user_id -ne 0 ]; then
    echo "please run this script with root user(sudo) access" | tee -a $log_file
    exit 1
fi

mkdir -p $log_folder

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2 ... FAILURE" | tee -a $log_file
    else
        echo "$2 ... SUCCESS" | tee -a $log_file
    fi
}

for package in $@
do
    dnf list installed $package &>> $log_file
    if [ $? -ne 0 ]; then
        echo "$package not installed, installing now" | tee -a $log_file
        # VALIDATE $? "$package installation"
    else
        echo "$package already installed, skipping" | tee -a $log_file
    fi
done