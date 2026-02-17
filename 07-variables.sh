#!/bin/bash

# special variables
echo "All arguments passed to the script : $@"
echo "Number of variables passed to script : $#"
echo "Script name : $0"
echo "Present working directory : $PWD"
echo "Who is running scripts : $USER"
echo "Home directory of current user : $HOME"
echo "PID of last run script : $$"

sleep 100 &

echo "PID of recently executed background process : $!"
echo "All args passed to script : $*"
echo "Exit status of previous command : $?"

# $@ vs $*
# ----------
# $@ treats args separately
# $* treats as single args