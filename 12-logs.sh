#!/bin/bash

user_id=$(id -u)
log_folder="/var/log/shell-practice"
log_file="/var/log/shell-practice/$0.log"

if [ $user_id -ne 0 ]; then
    # "| tee -a $log_file" is used to show echo print message & to store print messages in log life as well
    echo "you should need root user access to run this script" | tee -a $log_file
    exit 1
fi

# To create shell-practice log folder.
mkdir -p $log_folder

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2...FAILURE" | tee -a $log_file
        exit 1
    else
        echo "$2...SUCCESS" | tee -a $log_file
    fi
}

# "&>> $log_file" => to hide installation message & to store thise in log file
dnf install nginx -y &>> $log_file
VALIDATE $? "installing nginx"

dnf install nodejs -y &>> $log_file
VALIDATE $? "installing nodejs"

dnf install mysql -y &>> $log_file
VALIDATE $? "installing mysql"