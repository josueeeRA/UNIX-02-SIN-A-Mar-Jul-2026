#!/bin/bash
FILE="output11.txt" # Create a global enviroment variable 
touch "${FILE}" # Create the file
until [[ -s "${FILE}" ]]; do # Do the loop
 echo "${FILE} is empty..."
 echo "Checking again in 2 seconds..."
sleep 2
done
 echo "${FILE} appears to have some content in it!" # Check if the archive exist