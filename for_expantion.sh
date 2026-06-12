# Loop through all files in the current directory that start with the prefix "example_file"
for file in example_file*; do 

    # Check if the current file name is exactly "example_file1"
    if [[ "${file}" == "example_file1" ]]; then
        # Print a message indicating this specific file is being skipped
        echo "Skipping the first file"
        # Skip the rest of this loop iteration and move on to the next file
        continue
    fi

    # Generate a random integer and overwrite (or create) the current file with that number
    echo "${RANDOM}" > "${file}"

done