#!/bin/bash

# Get number from user
echo "Enter a number: "
read number

# Validate input
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid positive number"
    exit 1
fi

# Initialize sum
sum=0

# Store original number for display
original=$number

# Calculate sum of digits
while [ $number -gt 0 ]
do
    # Get last digit
    digit=$((number % 10))
    # Add digit to sum
    sum=$((sum + digit))
    # Remove last digit from number
    number=$((number / 10))
done

# Display result with step by step calculation
echo "----------------------------------------"
echo "Number: $original"
echo "Digits: "

# Show individual digits
temp=$original
while [ $temp -gt 0 ]
do
    digit=$((temp % 10))
    echo -n "$digit "
    temp=$((temp / 10))
done

echo -e "\n----------------------------------------"
echo "Sum of digits: $sum"
echo "----------------------------------------"
