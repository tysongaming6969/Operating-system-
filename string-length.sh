#!/bin/bash

# Get string input from user
echo "Enter a string: "
read string

# Calculate length using ${#string}
length=${#string}

# Display results
echo "----------------------------------------"
echo "Input String: $string"
echo "Length of String: $length characters"
echo "----------------------------------------"

# Optional: Show if string is empty
if [ $length -eq 0 ]; then
    echo "Note: You entered an empty string"
fi
