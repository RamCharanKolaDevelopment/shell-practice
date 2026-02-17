#!/bin/bash

# +%s is used to get current time in seconds.

# isualizing the process:
# Shell sees: start_time=$(date +%s)
# Shell executes: date +%s (which returns, for example, 1739778865).
# Shell replaces: start_time=1739778865
# Result: The variable start_time now holds the value 1739778865.
start_time=$(date +%s)

echo "Scripts executed at : $start_time"

# used to keep linux system in sleep for 10 seconds.
sleep 10

end_time=$(date +%s)

# (( )) double are used to tell linux this is Arithmetic Expansion.
# $( ... ): Starts a Command Substitution (Run a command and put the result here). Note: In arithmetic expansion, it's combined as $((.
# (( ... )): Tells Linux "This is Math"
total_time=$(($end_time-$start_time))

echo "Scripts executed at : $total_time"