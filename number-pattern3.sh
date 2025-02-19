#!/bin/bash

# Number of rows in pattern
rows=5

# Initialize the number to start from
number=1

echo "Number Pattern:"
echo "----------------------------------------"

# Outer loop for rows
for ((i=1; i<=rows; i++))
do
    # Inner loop for printing numbers in each row
    for ((j=1; j<=i; j++))
    do
        echo -n "$number "
        # Increment number for next position
        number=$((number + 1))
    done
    # Move to next line after each row
    echo ""
done

echo "----------------------------------------"
