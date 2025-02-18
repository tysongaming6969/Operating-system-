#!/bin/bash

# Check if argument is provided
if [ $# -eq 0 ]; then
    echo "Error: Please provide a number as argument"
    echo "Usage: $0 <number>"
    exit 1
fi

# Get the number from command line argument
number=$1

# Validate if input is a number
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please provide a valid number"
    exit 1
fi

# Print the multiplication table
echo "----------------------------------------"
echo "Multiplication Table for $number"
echo "----------------------------------------"

for ((i=1; i<=10; i++))
do
    result=$((number * i))
    # Format output with proper spacing
    printf "%2d × %2d = %3d\n" $number $i $result
done

echo "----------------------------------------"
