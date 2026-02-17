#!ban/bash

echo "Please Enter Your Name"

# To read input from user.
read USER_NAME

echo "User name is $USER_NAME"

read PASSWORD

echo "Password you entered is $PASSWORD"

# To read user entered input without showing what he entered or To hide entered input
read -s PASSWORD

echo "Password you entered is $PASSWORD"