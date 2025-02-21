#!/bin/bash
# extract_errors.sh
# Purpose: Extract all lines containing "ERROR" from a log file.
# Author: MariferVL
# Date: 20-02-2025

# Add a blank line 
echo

# Check if the user provided a log file
if [ -z "$1" ]
then
    echo "❌ Error: No log file specified."
    echo "Usage: $0 <log_file>"
    echo
    exit 1
fi

log_file=$1

# Check if the specified file has a .log extension
if [[ "$log_file" != *.log ]]
then
    echo "❌ Error: The specified file is not a .log file."
    echo "Please provide a valid log file with the .log extension."
    echo
    exit 1
fi

# Inform the user about the action being performed
echo "🔍 Extracting lines containing 'ERROR' from $log_file..."

# Extract lines containing "ERROR" and store them in a variable
error_lines=$(grep "ERROR" "$log_file")

# Check if any error lines were found
if [ -z "$error_lines" ]
then
    echo "📂 No lines containing 'ERROR' found in $log_file."
else
    echo "📄 Lines containing 'ERROR' found:"
    echo "$error_lines"
fi


echo

