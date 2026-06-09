#!/bin/bash

# Create the arguments to ask the first and last name 
read -p "Ingresa tu primer nombre: " FIRST_NAME
read -p "Ingresa tu apellido: " LAST_NAME

# Create a file named output.txt with the command touch 
touch output.txt

# Write the current date using DD-MM-YYYY format 
date +%d-%m-%Y >> output.txt

# Append first and last name to the file
echo "${FIRST_NAME} ${LAST_NAME}" >> output.txt

# Backup the output.txt file to a new backup.txt file
cp output.txt backup.txt

# Print the content of output.txt file
cat output.txt