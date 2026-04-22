#!/bin/bash

# Check if exactly two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_file> <output_file>"
    exit 1
fi

INPUT_FILE=$1
OUTPUT_FILE=$2

# Check if the input file actually exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' not found!"
    exit 1
fi

# Use sed to find '//' and remove it along with everything after it on that line.
# It then writes the clean text to the output file.
sed 's/\/\/.*//' "$INPUT_FILE" > "$OUTPUT_FILE"

echo "Comments stripped successfully! Clean code saved to $OUTPUT_FILE"