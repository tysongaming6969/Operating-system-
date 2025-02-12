#!/bin/bash

# Get string input from user
echo "Enter a string in lowercase: "
read string

# Convert to uppercase using tr command
uppercase=$(echo "$string" | tr '[a-z]' '[A-Z]')

# Display results
echo "----------------------------------------"
echo "Original String: $string"
echo "Uppercase String: $uppercase"
echo "----------------------------------------"
