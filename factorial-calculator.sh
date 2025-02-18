#!/bin/bash

# Function to calculate factorial
calculate_factorial() {
    local num=$1
    local fact=1
    
    # Calculate factorial using a loop
    for ((i=1; i<=num; i++))
    do
        fact=$((fact * i))
    done
    
    echo $fact
}

# Get number from user
echo "Enter a number to calculate factorial: "
read number

# Validate input
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid positive number"
    exit 1
fi

# Check for negative numbers
if [ $number -lt 0 ]; then
    echo "Error: Factorial cannot be calculated for negative numbers"
    exit 1
fi

# Calculate factorial using the function
result=$(calculate_factorial $number)

# Display result with calculation steps
echo "----------------------------------------"
echo "Calculating factorial of $number"
echo "----------------------------------------"
echo -n "$number! = "

# Show calculation steps
for ((i=number; i>=1; i--))
do
    echo -n "$i"
    if [ $i -ne 1 ]; then
        echo -n " × "
    fi
done

echo " = $result"
echo "----------------------------------------"
