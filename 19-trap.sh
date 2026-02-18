#!/bin/bash

set -e

trap 'echo "Error occured at $LINENO, Command: $BASH_COMMAND"' ERR

echo "Hello world"
echo "I am handling errors with trap"
echoo "intentional echo error"
echo "line after error"