#!/bin/bash

# Get item details
echo "Enter Item Name: "
read item_name

echo "Enter Quantity: "
read quantity

echo "Enter Rate per unit: "
read rate

echo "Enter GST Percentage: "
read gst_percentage

echo "Enter State Code (Same state: 1, Different state: 2): "
read state_code

# Calculate basic amount
amount=$(echo "scale=2; $quantity * $rate" | bc)

# Calculate GST based on state code
if [ $state_code -eq 1 ]; then
    # Same state: Split GST into CGST and SGST
    cgst_rate=$(echo "scale=2; $gst_percentage / 2" | bc)
    sgst_rate=$cgst_rate
    igst_rate=0
    
    cgst_amount=$(echo "scale=2; $amount * $cgst_rate / 100" | bc)
    sgst_amount=$(echo "scale=2; $amount * $sgst_rate / 100" | bc)
    igst_amount=0
else
    # Different state: Apply IGST
    cgst_rate=0
    sgst_rate=0
    igst_rate=$gst_percentage
    
    cgst_amount=0
    sgst_amount=0
    igst_amount=$(echo "scale=2; $amount * $igst_rate / 100" | bc)
fi

# Calculate net amount
net_amount=$(echo "scale=2; $amount + $cgst_amount + $sgst_amount + $igst_amount" | bc)

# Display bill
echo "----------------------------------------"
echo "              GST BILL"
echo "----------------------------------------"
echo "Item Name: $item_name"
echo "Quantity: $quantity"
echo "Rate per unit: ₹$rate"
echo "Basic Amount: ₹$amount"
echo "----------------------------------------"
echo "GST Details:"
if [ $state_code -eq 1 ]; then
    echo "CGST ($cgst_rate%): ₹$cgst_amount"
    echo "SGST ($sgst_rate%): ₹$sgst_amount"
else
    echo "IGST ($igst_rate%): ₹$igst_amount"
fi
echo "----------------------------------------"
echo "Net Amount: ₹$net_amount"
echo "----------------------------------------"
