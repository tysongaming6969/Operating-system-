#!/bin/bash

# Number of rows in pattern
rows=5

echo "Number Pattern:"
echo "----------------------------------------"

# Outer loop for rows
for ((i=1; i<=rows; i++))
do
    # Inner loop for printing numbers in each row
    for ((j=1; j<=i; j++))
    do
        echo -n "$i "
    done
    # Move to next line after each row
    echo ""
done

echo "----------------------------------------"
