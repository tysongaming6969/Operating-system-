#!/bin/bash

# Get number from user
echo "Enter a number: "
read number

# Check if number is valid
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid number"
    exit 1
fi

# Check if number is odd or even using modulus operator
if [ $((number % 2)) -eq 0 ]; then
    echo "----------------------------------------"
    echo "$number is an Even number"
    echo "----------------------------------------"
else
    echo "----------------------------------------"
    echo "$number is an Odd number"
    echo "----------------------------------------"
fi
