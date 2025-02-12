#!/bin/bash

# Current exchange rate (as of 2024)
# 1 USD = approximately 83 INR
exchange_rate=83

# Get amount in rupees from user
echo "Enter amount in Rupees (INR): "
read rupees

# Calculate dollars
# Using bc for floating point calculation
dollars=$(echo "scale=2; $rupees / $exchange_rate" | bc)

# Display results
echo "----------------------------------------"
echo "Amount in Rupees: ₹$rupees"
echo "Exchange Rate: 1 USD = ₹$exchange_rate"
echo "Amount in Dollars: \$$dollars"
echo "----------------------------------------"
