#!/bin/bash
# Assign the first command-line argument passed to the script to the variable IP_ADDRESS
IP_ADDRESS="${1}"

# Start a case statement to check the value of the IP_ADDRESS variable
case ${IP_ADDRESS} in

    # If the IP address starts with "192.168.", match it (the '*' acts as a wildcard)
    192.168.*)
        echo "Network is 192.168.x.x"
        ;; # End of the first case match

    # If the IP address starts with "10.0.", match it
    10.0.*)
        echo "Network is 10.0.x.x"
        ;; # End of the second case match

    # The default case: if the IP address didn't match any of the patterns above
    *)
        echo "Could not identify the network"
        ;; # End of the default case match

esac # Marks the end of the case statement (case spelled backwards)


# 192.168.12.3
# 10.0.33.3