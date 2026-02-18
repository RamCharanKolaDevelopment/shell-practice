#!/bin/bash

user_id=$(id -u)
log_folder="/var/log/shell-practice"
log_file="/var/log/shell-practice/$0.log"

if [ $user_id -ne 0 ]; then
    echo "you should run this script with root access" | tee -a $log_file
    exit 1
fi

mkdir -p /var/log/shell-practice"

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2 ... FAILURE" | tee -a $log_file
        exit 1
    else
        echo "$2...SUCCESS" | tee -a $log_file
    fi
}

for package in $@
do
    dnf install $package -y &>> $log_file
    VALIDATE $? "$package installation"
done

