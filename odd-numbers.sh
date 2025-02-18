#!/bin/bash

echo "Odd Numbers between 1 and 100:"
echo "----------------------------------------"

# Loop through numbers 1 to 100
for ((i=1; i<=100; i+=2))
do
    # Print each odd number
    echo -n "$i "
    
    # Add a new line after every 10 numbers for better readability
    if [ $((i % 20)) -eq 19 ]; then
        echo ""
    fi
done

echo -e "\n----------------------------------------"
