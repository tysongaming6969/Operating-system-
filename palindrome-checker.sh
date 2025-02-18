#!/bin/bash

# Get string from user
echo "Enter a string: "
read string

# Convert string to lowercase to make comparison case-insensitive
string_lower=$(echo "$string" | tr '[:upper:]' '[:lower:]')

# Remove spaces from string
string_nospace=$(echo "$string_lower" | tr -d ' ')

# Reverse the string
reverse=$(echo "$string_nospace" | rev)

# Display original input
echo "----------------------------------------"
echo "Original string: $string"

# Check if string is palindrome
if [ "$string_nospace" = "$reverse" ]; then
    echo "Result: This is a Palindrome!"
    echo "Forward: $string_nospace"
    echo "Reverse: $reverse"
else
    echo "Result: This is NOT a Palindrome!"
    echo "Forward: $string_nospace"
    echo "Reverse: $reverse"
fi
echo "----------------------------------------"
