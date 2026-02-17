#!/bin/bash

#!/bin/bash

# In shell scripting there should be no spaces around the = sign.
person1=$1  # This type of variable declaration is used to read 1st Linux CLI command argument 1 after "sh 04-variables.sh"
person2=$2  # This type of variable declaration is used to read 2nd Linux CLI command argument 2 after "sh 04-variables.sh <after-1st-variable>"
# Here the number after $ symbol will read the argument of Linux CLI command like "sh 04-variables.sh Trump Putin"
# person1=$1 reads Trump in "sh 04-variables.sh Trump Putin" command
# person1=$2 reads Putin in "sh 04-variables.sh Trump Putin" command

# In shell scripting inside strings variables are accessed with "$<variable-name>"
echo "$person1:: Hello $person2, How are you?"
echo "$person2:: Hi $person1, I am fine thanks for asking. How are you doing?"
echo "$person1:: Doing fine. What are you learning $person2?" 
echo "$person2:: I am learning shell scripting. What about you?"