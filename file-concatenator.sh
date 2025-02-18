#!/bin/bash

# Get filenames from user
echo "Enter the name of first file: "
read file1
echo "Enter the name of second file: "
read file2

# Check if files exist
if [ ! -f "$file1" ]; then
    echo "Error: File '$file1' does not exist"
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "Error: File '$file2' does not exist"
    exit 1
fi

# Create output file name
output_file="concatenated_file.txt"

# Concatenate files
echo "----------------------------------------"
echo "Contents of $file1:"
cat "$file1"
echo "----------------------------------------"
echo "Contents of $file2:"
cat "$file2"
echo "----------------------------------------"

# Perform concatenation
cat "$file1" "$file2" > "$output_file"

echo "Files have been concatenated!"
echo "Output saved in: $output_file"
echo ""
echo "Contents of concatenated file:"
cat "$output_file"
echo "----------------------------------------"
