#!/bin/bash

# Get input from user
echo "Enter a single character: "
read input

# Check if input is more than one character
if [ ${#input} -ne 1 ]; then
    echo "Error: Please enter only a single character"
    exit 1
fi

# Check if input is a number
if [[ $input =~ ^[0-9]$ ]]; then
    echo "----------------------------------------"
    echo "'$input' is a Number"
    echo "----------------------------------------"
# Check if input is a letter
elif [[ $input =~ ^[A-Za-z]$ ]]; then
    echo "----------------------------------------"
    echo "'$input' is a Character"
    echo "----------------------------------------"
else
    echo "----------------------------------------"
    echo "'$input' is a Special Character"
    echo "----------------------------------------"
fi
