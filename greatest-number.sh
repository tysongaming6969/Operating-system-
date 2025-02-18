#!/bin/bash

# Get three numbers from user
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2
echo "Enter third number: "
read num3

# Validate inputs
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]] || ! [[ "$num3" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please enter valid numbers"
    exit 1
fi

# Find the greatest number using if-else
echo "----------------------------------------"
echo "Numbers entered: $num1, $num2, $num3"

if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]; then
    echo "Greatest number is: $num1"
elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ]; then
    echo "Greatest number is: $num2"
else
    echo "Greatest number is: $num3"
fi
echo "----------------------------------------"
