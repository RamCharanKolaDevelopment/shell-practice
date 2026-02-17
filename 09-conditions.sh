#!/bin/bash

num1=25

# -gt => greater then
# -lt => less than
# -eq => equal
# -ne => not equal

if [$num1 -gt 20]; then # should provide space after if
    echo "num1 is greater than 20"
fi