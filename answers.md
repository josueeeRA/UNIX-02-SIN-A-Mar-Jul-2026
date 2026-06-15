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

## Task 5
Command: grep -E '^[^#]' firewall.log | sed -E 's/(^[^ ]+) ([^ ]+) ([^ ]+) ([^ ]+).*/\1 \3 \4/' | head -n 5
Result: 
2018-05-25 FORWARD TCP
2018-02-22 FORWARD UDP
2018-03-20 REJECT UDP
2018-11-08 REJECT TCP
2018-07-24 REJECT TCP
Explanation: The grep command filters out the headers, passing only raw events to sed. In sed, four capture groups inside parentheses () isolate the date, time, action, and protocol fields respectively; the backreferences \1 \3 \4 discard the time group (\2) and everything after the protocol (.*), formatting the output as requested.

## Task 6
Command: grep -E -c ' ACCEPT TCP .* 80 [0-9]+$' firewall.log
Result: 93
Explanation: This single regex combines literal matches for 'ACCEPT' and 'TCP' separated by spaces, followed by a wildcard .* to bypass the intermediate IP addresses and source port. It explicitly anchors the destination port '80' right before the final size field ([0-9]+$) to guarantee it targets the correct column.

## Task 7
Command: grep -E -c '^[0-9]{4}-[0-9]{2}-[0-9]{2} 0[0-2]:' firewall.log
Result: 13138
Explanation: The pattern anchors the match to the start of the line using ^ followed by the exact structure of the date field. Immediately after the separating space, the character class range 0[0-2]: strictly captures hours 00, 01, and 02, ensuring the time window is evaluated right at the beginning of the event log fields.

## Bonus
Regex: ^[^ ]+$
Explanation: The regex uses a negated character class [^ ] to match any character that is not a space. Combined with the anchors for the start (^) and end ($) of the line, and the one-or-more quantifier (+), it strictly filters out any lines containing spaces, successfully matching only single-word identifiers.