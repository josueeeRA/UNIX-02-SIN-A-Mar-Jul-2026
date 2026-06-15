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

## Task 5
Command: awk -f task5.awk Lab03-data.csv
Result:
Name       Low High Average
FINAL      116  200  156.86
H01         46  100   82.71
H02         55  100   77.57
H03         62  100   82.43
H04         32   97   72.93
H05         51  100   74.00
H06         37   98   74.21
H07         40  100   72.93
L01         27   50   40.21
L02         23   50   39.21
L03         19   50   36.57
L04         25   50   40.36
L05         17   50   38.21
L06         27   50   40.07
L07         21   50   38.43
Q01          9   20   14.29
Q02          9   20   14.86
Q03          8   20   15.07
Q04         13   20   16.43
Q05          8   18   15.07
Q06          8   20   14.71
Q07         12   20   15.36
WS           2    5    4.21
Explanation: The script stores sums, counts, minimums, and maximums inside associative arrays indexed by the assignment name ($3). In the END block, it loops through all tasks, computes the statistical average, and uses printf to output the formatted columns.

## Task 6
Command: awk -f task6.awk Lab03-data.csv
Result:
Student    Percentage Grade
Andrew          73.69 C
Ava             81.43 B
Chelsey         62.65 D
Diana           62.08 D
Eliza           84.16 B
Jackson         78.64 C
Kenji           86.45 B
Lucia           89.53 B
Maria           79.57 C
Noah            63.08 D
Priya           71.04 C
Sam             72.90 C
Shane           93.12 A
Tomas           82.22 B
Explanation: The script accumulates the total earned points and total possible points for each student using two associative arrays indexed by student name ($1). At the end, it calculates the dynamic final percentage and determines the letter grade using an if-else structure.

## Task 7
Command: ./run.sh Lab03-data.csv
Result:
Student    Percentage Grade
Andrew          73.69 C
Ava             81.43 B
Chelsey         62.65 D
Diana           62.08 D
Eliza           84.16 B
Jackson         78.64 C
Kenji           86.45 B
Lucia           89.53 B
Maria           79.57 C
Noah            63.08 D
Priya           71.04 C
Sam             72.90 C
Shane           93.12 A
Tomas           82.22 B
Explanation: The Bash script reads the input file passed as an argument, extracts and displays the header row independently using head, and then processes the remaining body records through tail and the Unix sort tool to organize students alphabetically.

## Bonus
Command: awk -f task6_bonus.awk Lab03-data.csv
Result:
Student    Percentage Grade
Andrew          73.69 C
Ava             81.43 B
Chelsey         62.65 D
Diana           62.08 D
Eliza           84.16 B
Jackson         78.64 C
Kenji           86.45 B
Lucia           89.53 B
Maria           79.57 C
Noah            63.08 D
Priya           71.04 C
Sam             72.90 C
Shane           93.12 A
Tomas           82.22 B
CLASS           77.18
Explanation: This script extends the functionality of task 6 by accumulating individual percentages and maintaining a counter of unique students in the END block. After printing all students, it appends a final summary row showing the CLASS label and the overall final grade average.