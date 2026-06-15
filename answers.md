## Task 1
Command: grep -E -c '^[^#]' firewall.log
Result: 100000
Explanation: The anchor ^ forces the match to start at the beginning of the line, and the negated character class [^#] ensures that the first character is not a hashtag, effectively ignoring the 4 header lines and counting only valid event entries.

## Task 2
Command: grep -E -c ' (DROP|REJECT) ' firewall.log
Result: 60156
Explanation: The expression uses parentheses () for grouping and the vertical bar | for alternation to match either DROP or REJECT. Surrounding the group with literal spaces ensures it specifically targets the action field, avoiding false positives elsewhere in the line.