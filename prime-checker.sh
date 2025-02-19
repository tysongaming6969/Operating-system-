#!/bin/bash

# Function to check if number is prime
is_prime() {
    num=$1
    
    # 1 is not a prime number
    if [ $num -eq 1 ]; then
        return 1
    fi
    
    # Check if number is divisible by any number from 2 to sqrt(num)
    for ((i=2; i*i<=num; i++))
    do
        if [ $((num % i)) -eq 0 ]; then
            return 1  # Not prime
        fi
    done
    
    return 0  # Is prime
}

# Get number from user
echo "Enter a number to check if it's prime: "
read number

# Validate input
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid positive number"
    exit 1
fi

# Check if number is less than 1
if [ $number -lt 1 ]; then
    echo "Error: Please enter a number greater than 0"
    exit 1
fi

echo "----------------------------------------"
echo "Checking if $number is prime..."
echo "----------------------------------------"

# Check if number is prime using the function
if is_prime $number; then
    echo "$number is a Prime number"
    
    # Optional: Show why it's prime
    echo "It is only divisible by 1 and itself ($number)"
else
    echo "$number is NOT a Prime number"
    
    # Show factors if not prime
    echo "Factors of $number are: "
    for ((i=1; i<=number; i++))
    do
        if [ $((number % i)) -eq 0 ]; then
            echo -n "$i "
        fi
    done
    echo ""
fi
echo "----------------------------------------"
