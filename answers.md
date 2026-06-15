## Task 1
Command: grep -E -c '^[^#]' firewall.log
Result: 100000
Explanation: The anchor ^ forces the match to start at the beginning of the line, and the negated character class [^#] ensures that the first character is not a hashtag, effectively ignoring the 4 header lines and counting only valid event entries.