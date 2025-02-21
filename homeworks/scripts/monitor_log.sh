#!/bin/bash
# monitor_log.sh
# Purpose: Monitor a system log file in real-time using tail -f.
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

# Inform the user about the action being performed
echo "📄 Monitoring log file: $log_file"

# Monitor the log file in real-time
tail -f "$log_file"

echo

