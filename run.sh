#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 <csv_file>"
    exit 1
fi
FILE=$1
awk -f task6.awk "$FILE" | head -n 1
awk -f task6.awk "$FILE" | tail -n +2 | sort