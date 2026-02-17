#!.bin/bash

# In shell scripting we have only 2 types of variable one is number, another one is string
# Number data type variable declaration.
num1=100
num2=200
# string data type variable declaration
num3=ramcharan

# performing Addition arithmetic operation
echo "Sum of num1 & num2 is : $(($num1+$num2))"

# performing addition arithmetic operation with string
echo "Sum of num1 & num2 is : $(($num1+$num3))" # here Linux assumed that Nun3 variable as a zero number.


# array data type declaration
fruits=("apple", "orange", "grapes")

# accessing all elements of an array
echo "Fruits are : ${fruits[@]}"
# accessing first index element of fruits array
echo "Firsts fruit : ${fruits[0]}"
# accessing second index element of fruits array
echo "Second fruit : ${fruits[1]}"
# accessing third index element of fruits array
echo "Third fruit : ${fruit[2]}"