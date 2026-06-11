#!/bin/bash
# This is a "shebang." It tells the system to use the Bash interpreter to run this script.

USER_INPUT="${1}"
# This stores the first argument passed to the script in a variable named USER_INPUT.
# For example, if you run `./script.sh myfile.txt`, then USER_INPUT will hold "myfile.txt".

#  Check if the USER_INPUT variable is empty (-z stands for "zero length").
if [[ -z "${USER_INPUT}" ]]; then
    # If no argument was provided, print an error message.
    echo "You must provide an argument!"
    # Exit the script immediately with a status code of 1 (indicating an error).
    exit 1
fi

# Check if the path stored in USER_INPUT points to a regular file (-f stands for "file").
if [[ -f "${USER_INPUT}" ]]; then
    # If it is a file, print this message.
    echo "${USER_INPUT} is a file."

# If it is not a file, check if it points to a directory (-d stands for "directory").
elif [[ -d "${USER_INPUT}" ]]; then
    # If it is a directory, print this message.
    echo "${USER_INPUT} is a directory."

# If it is neither a file nor a directory (e.g., it doesn't exist, or it's a special device).
else
    # Print this fallback message.
    echo "${USER_INPUT} is not a file or a directory."
fi