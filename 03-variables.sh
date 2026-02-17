#!/bin/bash

person1="Chaitanya"  # In shell scripting for variable declaration there should not be any white space between varaiable name & its value(around equal to symbol(=))
person2="Smantha"   # In shell scripting there should be no spaces around the = sign.

# In shell scripting inside strings variables are accessed with "$<variable-name>"
echo "$person1:: Hellow $person2, How are you?"
echo "$person2:: Hi $person1, I am fine thanks for asking. How are you doing?"
echo "$person1:: Doing fine. What are you learning $person2?" 
echo "$person2:: I am learning shell. What about you?"