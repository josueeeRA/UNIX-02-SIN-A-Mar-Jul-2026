## Task 1
Command: grep -E -c '^[^#]' firewall.log
Result: 100000
Explanation: The anchor ^ forces the match to start at the beginning of the line, and the negated character class [^#] ensures that the first character is not a hashtag, effectively ignoring the 4 header lines and counting only valid event entries.

## Task 2
Command: grep -E -c ' (DROP|REJECT) ' firewall.log
Result: 60156
Explanation: The expression uses parentheses () for grouping and the vertical bar | for alternation to match either DROP or REJECT. Surrounding the group with literal spaces ensures it specifically targets the action field, avoiding false positives elsewhere in the line.

## Task 3
Command: grep -E -c ' 11\.' firewall.log
Result: 33217
Explanation: A literal space is used to target the beginning of the source IP field, followed by the number 11. The dot is escaped with a backslash (\.) to match a literal period instead of acting as a regex wildcard for any character.

## Task 4
Command: grep -E -c ' [0-9]{7}$' firewall.log
Result: 2343
Explanation: The digit character class [0-9] combined with the exact quantifier {7} ensures that only numbers with exactly seven digits are selected. The end-of-line anchor $ guarantees that these digits represent the final field (size) and that no extra characters follow.