## Task 1
Command: `awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv`
Result: `322`
Explanation: The `-F','` option sets the comma as the field separator, and `NR>1` skips the first header line. In the main block, we increment the `count` variable for each record, and in the `END` block, we print the total.