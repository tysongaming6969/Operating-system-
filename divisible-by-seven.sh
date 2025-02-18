#!/bin/bash

echo "Numbers divisible by 7 between 1 and 100:"
echo "----------------------------------------"

# Loop through numbers 1 to 100
for ((i=1; i<=100; i++))
do
    # Check if number is divisible by 7
    if [ $((i % 7)) -eq 0 ]; then
        # Print the number
        echo -n "$i "
        
        # Add a new line after every 5 numbers for better readability
        if [ $((i % 35)) -eq 0 ]; then
            echo ""
        fi
    fi
done

echo -e "\n----------------------------------------"
echo "Total count: $(( 100/7 )) numbers"
echo "----------------------------------------"
