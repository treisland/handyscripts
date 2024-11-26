#!/bin/bash
# Purpose of this file is to recursively search for a string within files under a given directory

# usage: ./search.sh <directory> <search_string>

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory> <search_string>"
    exit 1
fi

# Assign arguments to variables
search_file=$1
search_string=$2

#escaped_search_string=$(printf "%s\n" "$search_string" | sed 's/[]\/$*.^|[]/\\&/g')

# Find all files and search for the text string
find . -type f -name "$search_file" | while read -r file; do
    grep -Hn "$search_string" "$file"
done

