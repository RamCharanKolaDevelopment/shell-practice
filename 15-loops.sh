#!/bin/bash

user_id=$(id -u)
log_folder="var/log/shell-script"
log_file="var/log/shell-script/$0.log"

if [ $user_id -ne 0 ]; then
    echo "Please run this script with root user access" | tee -a $log_file
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
    dnf list installed $package &>> $log_file # to check script variable(package name passing by user) is installed and storing in log file
    if [ $? -ne 0 ]; then
        echo "$package not installed, installing now" | tee -a $log_file
        VALIDATE $? "$package installation" | tee -a $log_file
    else
        echo "$package already installed, skipping" | tee -a $log_file
done