#!/bin/bash

# Set value of pi
PI=3.14159

# Get radius from user
echo "Enter the radius of circle: "
read radius

# Calculate area using bc for floating point calculation
area=$(echo "scale=2; $PI * $radius * $radius" | bc)

# Display results
echo "----------------------------------------"
echo "Radius of Circle: $radius units"
echo "Area of Circle: $area square units"
echo "----------------------------------------"
