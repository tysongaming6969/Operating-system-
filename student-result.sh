#!/bin/bash

# Get marks for each subject
echo "Enter marks for each subject (out of 100):"
echo "Enter English marks: "
read english
echo "Enter Maths marks: "
read maths
echo "Enter Gujarati marks: "
read gujarati
echo "Enter Hindi marks: "
read hindi
echo "Enter Science marks: "
read science

# Validate marks (between 0 and 100)
for mark in $english $maths $gujarati $hindi $science; do
    if ! [[ "$mark" =~ ^[0-9]+$ ]] || [ $mark -gt 100 ]; then
        echo "Error: Marks should be between 0 and 100"
        exit 1
    fi
done

# Calculate total marks
total=$((english + maths + gujarati + hindi + science))

# Calculate percentage
percentage=$((total * 100 / 500))

# Check if passed or failed (passing criteria: 40 in each subject)
if [ $english -ge 40 ] && [ $maths -ge 40 ] && [ $gujarati -ge 40 ] && [ $hindi -ge 40 ] && [ $science -ge 40 ]; then
    result="PASS"
    
    # Determine grade based on percentage
    if [ $percentage -ge 90 ]; then
        grade="A+"
    elif [ $percentage -ge 80 ]; then
        grade="A"
    elif [ $percentage -ge 70 ]; then
        grade="B"
    elif [ $percentage -ge 60 ]; then
        grade="C"
    else
        grade="D"
    fi
else
    result="FAIL"
fi

# Display results
echo "----------------------------------------"
echo "           STUDENT RESULT"
echo "----------------------------------------"
echo "Subject-wise Marks:"
echo "English: $english"
echo "Maths: $maths"
echo "Gujarati: $gujarati"
echo "Hindi: $hindi"
echo "Science: $science"
echo "----------------------------------------"
echo "Total Marks: $total/500"
echo "Result: $result"

# Display percentage and grade only if passed
if [ "$result" = "PASS" ]; then
    echo "Percentage: $percentage%"
    echo "Grade: $grade"
fi
echo "----------------------------------------"
