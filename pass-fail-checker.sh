#!/bin/bash

# Get marks from user
echo "Enter the marks (out of 100): "
read marks

# Validate input
if ! [[ "$marks" =~ ^[0-9]+$ ]] || [ $marks -gt 100 ]; then
    echo "Error: Please enter valid marks between 0 and 100"
    exit 1
fi

# Calculate percentage
percentage=$marks

# Check if pass or fail (40% is pass mark)
echo "----------------------------------------"
echo "Marks Obtained: $marks/100"
echo "Percentage: $percentage%"

if [ $percentage -ge 40 ]; then
    echo "Result: PASS"
    echo "Congratulations! You have passed the exam."
else
    echo "Result: FAIL"
    echo "You need at least 40% to pass the exam."
fi
echo "----------------------------------------"
