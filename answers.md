## Task 1
Command: awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv
Result: 322
Explanation: The `-F','` option sets the comma as the field separator, and `NR>1` skips the first header line. In the main block, we increment the `count` variable for each record, and in the `END` block, we print the total.

## Task 2
Command: awk -F',' 'NR>1 {students[$1]} END {for (s in students) count++; print count}' Lab03-data.csv
Result: 14
Explanation: We use an associative array `students` indexed by the student's name (`$1`) to ensure that each student is unique. In the `END` block, we iterate through the array using a `for` loop to count how many distinct students were registered.

## Task 3
Command: awk -F',' 'NR>1 && $3 == "FINAL" {printf "%-10s %3d\n", $1, $4}' Lab03-data.csv
Result:
Jackson    169
Kenji      162
Noah       116
Lucia      200
Priya      159
Diana      152
Eliza      141
Tomas      163
Sam        152
Ava        172
Chelsey    142
Shane      193
Andrew     123
Maria      152
Explanation: The script filters the rows where the third field ($3) matches the string FINAL. Then, printf formats the output using %-10s to left-align the name within 10 spaces and %3d to right-align the score within 3 spaces.

## Task 4
Command: awk -F',' 'NR>1 {if ($4 < 0.60 * $5) count++} END {print count}' Lab03-data.csv
Result: 50
Explanation: A conditional if statement checks if the earned score ($4) is strictly less than 60 percent (0.60) of the dynamic maximum score ($5) for that specific assignment. If true, the counter increments and the total is printed at the end.