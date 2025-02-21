#!/bin/bash
# find_replace_text.sh
# Purpose: Replace all occurrences of a specific word in a file with another word.
# Author: MariferVL
# Date: 20-02-2025

# Add a blank line
echo

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <find_word> <replace_word> <file>"
    echo "Please provide the word to find, the word to replace it with, and the file."
    echo
    exit 1
fi

# Assign arguments to variables
find_word=$1
replace_word=$2
file=$3

# Inform the user about the action being performed
echo "Replacing all occurrences of '$find_word' with '$replace_word' in the file '$file'..."

# Use sed to replace all occurrences of the find_word with the replace_word in the file
sed -i "s/$find_word/$replace_word/g" "$file"

# Inform the user that the replacement is complete
echo "Replacement complete."

echo

