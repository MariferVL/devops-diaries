#!/bin/bash
# simple_calculator.sh
# Purpose: Perform basic arithmetic operations (+, -, *, /) between two numbers.
# Author: MariferVL
# Date: 20-02-2025

# Add a blank line 
echo

# Introduction
echo "Welcome to the Coolculator 🧮"
echo "What calculation is giving you trouble? (+, -, /, or x)"
read operation

# Ask for the numbers
echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

# Perform the calculation based on the operation
case $operation in
    +)
        result=$(echo "$num1 + $num2" | bc)
        echo "Result: $num1 + $num2 = $result"
        ;;
    -)
        result=$(echo "$num1 - $num2" | bc)
        echo "Result: $num1 - $num2 = $result"
        ;;
    /)
        result=$(echo "scale=2; $num1 / $num2" | bc)
        echo "Result: $num1 / $num2 = $result"
        ;;
    x|*)
        result=$(echo "$num1 * $num2" | bc)
        echo "Result: $num1 x $num2 = $result"
        ;;
    *)
        echo "Invalid operation. Please enter one of (+, -, /, x)."
        ;;
esac

echo
