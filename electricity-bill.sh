#!/bin/bash

# Get units consumed from user
echo "Enter the number of units consumed: "
read units

# Initialize bill variable
bill=0

# Calculate bill based on usage slabs
if [ $units -le 50 ]; then
    # First 50 units at ₹0.50 per unit
    bill=$(echo "scale=2; $units * 0.50" | bc)

elif [ $units -le 150 ]; then
    # First 50 units at ₹0.50 + remaining at ₹0.75 per unit
    bill=$(echo "scale=2; (50 * 0.50) + ($units - 50) * 0.75" | bc)

elif [ $units -le 250 ]; then
    # First 50 at ₹0.50 + next 100 at ₹0.75 + remaining at ₹1.20 per unit
    bill=$(echo "scale=2; (50 * 0.50) + (100 * 0.75) + ($units - 150) * 1.20" | bc)

else
    # First 50 at ₹0.50 + next 100 at ₹0.75 + next 100 at ₹1.20 + remaining at ₹1.50 per unit
    bill=$(echo "scale=2; (50 * 0.50) + (100 * 0.75) + (100 * 1.20) + ($units - 250) * 1.50" | bc)
fi

# Add fixed meter charge
meter_charge=100
total_bill=$(echo "scale=2; $bill + $meter_charge" | bc)

# Display the bill details
echo "----------------------------------------"
echo "Electricity Bill Calculation"
echo "----------------------------------------"
echo "Units Consumed: $units"
echo "Rate Applied:"
echo "  First 50 units: ₹0.50 per unit"
echo "  51-150 units: ₹0.75 per unit"
echo "  151-250 units: ₹1.20 per unit"
echo "  Above 250 units: ₹1.50 per unit"
echo "----------------------------------------"
echo "Energy Charges: ₹$bill"
echo "Meter Charge: ₹$meter_charge"
echo "Total Bill Amount: ₹$total_bill"
echo "----------------------------------------"
