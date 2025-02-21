#!/bin/bash
# count_word_occurrences.sh
# Purpose: Count how many times a specific word appears in a given text file.
# Author: MariferVL
# Date: 20-02-2025

# Add a blank line 
echo

# Check if the user provided a word and a file
if [ -z "$1" ] || [ -z "$2" ]
then
    echo "Error: No word or file specified."
    echo "Usage: $0 <word> <file>"
    echo
    exit 1
fi

# Assign the first argument to the variable 'word'
word=$1

# Assign the second argument to the variable 'file'
file=$2

# Count the number of occurrences of the word in the file
word_count=$(grep -o -i "\b$word\b" "$file" | wc -l)

# Display the count
echo "The word '$word' appears $word_count times in the file $file."

echo

