#!/bin/bash

# Defines a custom function named "check_if_root".
check_if_root(){
    # Checks if the Effective User ID (${EUID}) is equal to 0.
    # In Linux/Unix systems, the 'root' (administrator) user always has an ID of 0.
    if [[ "${EUID}" -eq "0" ]]; then
        # If the user is root, return a success status code (0 means success in Bash).
        return 0
    else
        # If the user is not root, return a failure status code (1).
        return 1
    fi
}

# Calls the "check_if_root" function inside an 'if' statement.
# In Bash, an 'if' statement checks if a command/function exits with a success code (0).
if check_if_root; then
    # If the function returned 0 (success), this line runs.
    echo "User is root!"
else
    # If the function returned 1 (failure), this line runs instead.
    echo "User is not root!"
fi