#!/bin/bash
SIGNAL_TO_STOP_FILE="stoploop" # Create a global varible 
while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do # Create a while loop
echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist #Print the message 
t..."
echo "Checking again in 2 seconds..."
sleep 2
done
echo "File was found! Exiting..."