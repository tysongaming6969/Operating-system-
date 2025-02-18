#!/bin/bash

# Get basic salary from user
echo "Enter Basic Salary: "
read basic_salary

# Calculate allowances
ta=$(echo "scale=2; $basic_salary * 0.15" | bc)  # Travel Allowance (15%)
da=$(echo "scale=2; $basic_salary * 0.02" | bc)  # Dearness Allowance (2%)
hi=$(echo "scale=2; $basic_salary * 0.10" | bc)  # House Allowance (10%)

# Calculate gross salary
gross_salary=$(echo "scale=2; $basic_salary + $ta + $da + $hi" | bc)

# Calculate deductions
income_tax=$(echo "scale=2; $gross_salary * 0.05" | bc)     # Income Tax (5%)
pf=$(echo "scale=2; $gross_salary * 0.10" | bc)             # Provident Fund (10%)

# Calculate net salary
total_deductions=$(echo "scale=2; $income_tax + $pf" | bc)
net_salary=$(echo "scale=2; $gross_salary - $total_deductions" | bc)

# Display salary slip
echo "----------------------------------------"
echo "          EMPLOYEE SALARY SLIP"
echo "----------------------------------------"
echo "Basic Salary: ₹$basic_salary"
echo ""
echo "ALLOWANCES:"
echo "Travel Allowance (15%): ₹$ta"
echo "Dearness Allowance (2%): ₹$da"
echo "House Allowance (10%): ₹$hi"
echo ""
echo "Gross Salary: ₹$gross_salary"
echo ""
echo "DEDUCTIONS:"
echo "Income Tax (5%): ₹$income_tax"
echo "Provident Fund (10%): ₹$pf"
echo "Total Deductions: ₹$total_deductions"
echo ""
echo "NET SALARY: ₹$net_salary"
echo "----------------------------------------"
