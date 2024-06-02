#!/bin/bash

# Check if directory path is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 vinay"
    exit 1
fi

# Check if directory exists
if [ ! -d "$1" ]; then
    echo "Error: Directory '$1' not found."
    exit 1
fi

# Traverse directory recursively and count file types
file_types=$(find "$1" -type f | awk -F. '{print $NF}' | sort | uniq -c)

# Display sorted list of file types and their counts
echo "File Type   Count"
echo "----------------"
echo "$file_types" | awk '{printf "%-12s %d\n", $2, $1}'
