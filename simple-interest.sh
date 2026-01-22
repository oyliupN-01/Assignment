#!/bin/bash

# Clear the screen for a clean interface
clear

echo "------------------------------------------"
echo "      Simple Interest Calculator          "
echo "------------------------------------------"
echo "Formula: SI = (P * R * T) / 100"
echo "------------------------------------------"

# 1. Get User Input
# We use -p to prompt the user on the same line
read -p "Enter Principal Amount (P): " principal
read -p "Enter Rate of Interest per year (R): " rate
read -p "Enter Time Period in years (T): " time

# 2. Validation
# Check if inputs are empty
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
    echo ""
    echo "Error: All fields are required."
    exit 1
fi

# 3. Calculation
# We use 'bc' for floating point arithmetic. 
# scale=2 ensures we keep 2 decimal places.
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total_amount=$(echo "scale=2; $principal + $interest" | bc)

# 4. Output Results
echo "------------------------------------------"
echo "Calculated Results:"
echo "------------------------------------------"
echo "Principal Amount : $principal"
echo "Interest Rate    : $rate%"
echo "Time Duration    : $time years"
echo "------------------------------------------"
echo "Simple Interest  : $interest"
echo "Total Amount     : $total_amount"
echo "------------------------------------------"
