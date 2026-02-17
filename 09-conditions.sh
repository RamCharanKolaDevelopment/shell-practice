#!/bin/bash

num1=25
num=$1 # script variable.

# -gt => greater then
# -lt => less than
# -eq => equal
# -ne => not equal

# in if condition space after if, [, $num1, -gt, 20 also a part of shell script sytax
# If this space is missed you will get below errors
# 09-conditions.sh: line 10: syntax error near unexpected token `then'
# 09-conditions.sh: line 10: `if[$num1 -gt 20]; then'
# 09-conditions.sh: line 10: [25: command not found (this error will occur if you miss space inside [ ](square brackets))
if [ $num -gt 20 ]; then
    echo "$num is greater than 20" # should provide tab space to write & execute statements inside if/elif/else blocks
elif [ $num -lt 20 ]; then # else if block
    echo "$num is less than 20"
else [ $num -eq 20 ]; then
    echo "$num equal to 20"
fi