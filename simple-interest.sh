#!/bin/bash

# Get principal amount from user
echo "Enter Principal Amount: "
read principal

# Get rate of interest
echo "Enter Rate of Interest (per year): "
read rate

# Get time period
echo "Enter Time Period (in years): "
read time

# Calculate simple interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
total=$(echo "scale=2; $principal + $interest" | bc)

# Display results
echo "----------------------------------------"
echo "Principal Amount: Rs. $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: Rs. $interest"
echo "Total Amount: Rs. $total"
echo "----------------------------------------"
