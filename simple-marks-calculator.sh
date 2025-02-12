#!/bin/bash

# Input marks for each subject
echo "Enter marks for English (out of 100): "
read english

echo "Enter marks for Maths (out of 100): "
read maths

echo "Enter marks for Hindi (out of 100): "
read hindi

echo "Enter marks for Gujarati (out of 100): "
read gujarati

echo "Enter marks for Science (out of 100): "
read science

# Calculate total
total=$((english + maths + hindi + gujarati + science))

# Calculate percentage
percentage=$((total * 100 / 500))

# Display all marks and results
echo "----------------------------------------"
echo "Marks Obtained:"
echo "English: $english"
echo "Maths: $maths"
echo "Hindi: $hindi"
echo "Gujarati: $gujarati"
echo "Science: $science"
echo "----------------------------------------"
echo "Total Marks: $total / 500"
echo "Percentage: $percentage%"
echo "----------------------------------------"
