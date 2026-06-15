## Task 1
Command: awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv
Result: 322
Explanation: The `-F','` option sets the comma as the field separator, and `NR>1` skips the first header line. In the main block, we increment the `count` variable for each record, and in the `END` block, we print the total.

## Task 2
Command: awk -F',' 'NR>1 {students[$1]} END {for (s in students) count++; print count}' Lab03-data.csv
Result: 14
Explanation: We use an associative array `students` indexed by the student's name (`$1`) to ensure that each student is unique. In the `END` block, we iterate through the array using a `for` loop to count how many distinct students were registered.