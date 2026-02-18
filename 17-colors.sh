#!/bin/bash

user_id=$(id -u)
log_folder="/var/log/shell-practice"
log_file="/var/log/shell-practice"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $user_id -ne 0 ]; then
    echo -e "$R please run this script with root user access(sudo) $N" | tee -a $log_file
    exit 1
fi

mkdir -p $log_folder

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$R $2...FAILURE $N" | tee -a $log_file
    else
        echo "$G $2...SUCCESS $N" | tee -a $log_file
    fi
}

for package in $@
do
    dnf list installed $package &>> $log_file
    if [ $? -ne 0 ]; then
        echo "$R $package not installed, $N installing now" | tee -a $log_file
        VALIDATE $? "$package installation"
    else
        echo "$G $package already installed, $Y skipping" | tee -a $log_file
    fi
done