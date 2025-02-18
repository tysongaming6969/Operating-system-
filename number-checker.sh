#!/bin/bash

# Get number from user
echo "Enter a number: "
read number

# Validate if input is a number
if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please enter a valid number"
    exit 1
fi

# Check if number is positive, negative, or zero
if [ $number -gt 0 ]; then
    echo "----------------------------------------"
    echo "$number is a Positive number"
    echo "----------------------------------------"
elif [ $number -lt 0 ]; then
    echo "----------------------------------------"
    echo "$number is a Negative number"
    echo "----------------------------------------"
else
    echo "----------------------------------------"
    echo "$number is Zero"
    echo "----------------------------------------"
fi
