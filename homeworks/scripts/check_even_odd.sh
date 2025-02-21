#!/bin/bash
# check_even_odd.sh
# Purpose: Check if a given number is even or odd.
# Author: MariferVL
# Date: 20-02-2025

# Add a blank line
echo 

#Prompt to ask the user for a number
echo "Please enter a number:"
read num

# Validate if the input is a number
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
    echo "Error: The input is not a valid number."
    exit 1
fi

# Check if the number is even or odd
if [ $((num % 2)) -eq 0 ]; then
    echo "$num is even."
else
    echo "$num is odd."
fi


echo
