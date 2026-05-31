=== Part 2 of the linux course on Cisco ===
# We use this command to go to home directory
cd ~ 
# Creates a 50MB file filled with binary zeros at the specified temporary location.
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
#if: specifies the data source or file to be read by the command.
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
#of: specifies the destination path or file where the data will be written.
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
#bs: sets the byte size of data blocks to be read and written at a time.
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
#count: determines the total number of input blocks to copy before stopping the operation.
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
# Clones the entire primary hard drive (sda) directly onto a second hard drive (sdb), overwriting all target data.
dd if=/dev/sda of=/dev/sdb
# Command to change the directory to Documents 
cd ~/Documents/
# Moves the file people.csv into the Work directory
mv people.csv Work
# List Work directory for view the changes 
ls Work
# Moves multiple specified files simultaneously into the School directory
mv numbers.txt letters.txt alpha.txt School
# List School directory for view the changes
ls School
# We use this commands also to change the names of the archives 
mv animals.txt zoo.txt
# List the directory to view the change on the name of the archive 
ls
# Permanently deletes the specified file linux.txt from the file system.
rm linux.txt
# Checks for the existence of linux.txt, returning an error if the file has been deleted.
ls linux.txt
# Fails to delete the directory Work because the standard rm command only targets files.
rm Work
# Recursively and permanently deletes the Work directory along with all of its contents
rm -r Work
# Attempts to list the contents of the Work directory, confirming its deletion via a "No such file or directory" error.
ls Work 
# Copies the system's user account configuration file (/etc/passwd) into the current working directory.
cp /etc/passwd .
# Searches for and displays all lines containing the text string "sysadmin" inside the passwd file.
grep sysadmin passwd
# Matches any single character except a newline.
. 
# Matches any single character specified inside the brackets.
[ ] 
# Matches any single character that is not specified inside the brackets.
[^] 
# Matches zero or more occurrences of the preceding character.
* 
# Anchors the match pattern to the absolute beginning of a line. 
^ 
# Anchors the match pattern to the absolute end of a line.
$ 
# Matches one or more occurrences of the preceding pattern.
+ 
# Makes the preceding pattern optional, matching zero or one occurrence.
? 
# Specifies the exact number, minimum, or range of matches required for the preceding pattern.
{ } 
# Acts as a logical OR (alternation) between two alternative patterns.
| 
# Groups multiple characters or patterns together to treat them as a single unit.
( ) 
# Searches for and prints every line that contains the exact string "root" inside the passwd file.
grep 'root' passwd
# Filters and displays only the lines that strictly begin with the string "root" inside the /etc/passwd file.
grep '^root' /etc/passwd
# Displays the entire text content of the file alpha-first.txt directly to the terminal standard output.
cat alpha-first.txt
# Filters and displays only the lines that strictly end with the lowercase letter "r" inside the
grep 'r$' alpha-first.txt
# Displays the entire content of the file red.txt.
cat red.txt
# Matches any 4-character string starting with "r" and ending with "f".
grep 'r..f' red.txt
# Matches any 4-character string starting with "r" and ending with "d".
grep 'r..d' red.txt
# Matches any sequence of exactly four consecutive characters.
grep '....' red.txt
# Searches for 4-character strings starting with "r" and ending with "t" within /etc/passwd.
grep 'r..t' /etc/passwd
# Displays the complete text content of profile.txt.
cat profile.txt
# Matches and displays any line that contains at least one numeric digit.
grep '[0-9]' profile.txt
# Matches lines containing at least one non-numeric character.
grep '[^0-9]' profile.txt
# Searches for and matches a literal dot character instead of treating it as a wildcard.
grep '[.]' profile.txt
# Matches "r" followed by zero or more "e" characters, ending with "d".
grep 're*d' red.txt
# Matches "r" followed by any combination of zero or more "o" or "e" characters, ending with "d".
grep 'r[oe]*d' red.txt
# Matches zero or more occurrences of "z", which effectively returns every single line of the file.
grep 'z*' red.txt
# Matches zero or more occurrences of "e", resulting in displaying all lines of the file.
grep 'e*' red.txt
# Matches a literal "e" followed by zero or more "e" characters, filtering lines with at least one "e".
grep 'ee*' red.txt
# Reads directly from standard input (keyboard) and mirrors back lines containing "red" until interrupted with Ctrl+D.
grep 'red'
# Switches the current terminal session to the root user superaccount while completely loading the root user's environment profiles.
su -
# Immediately halts and powers down the system, safely terminating all active processes and unmounting file systems.
shutdown now
# Displays or sets the current system date, time, and timezone information on the terminal.
date
# Schedules a system shutdown to execute at the specific, explicit 24-hour military clock time of 01:51 AM.
shutdown 01:51
# Schedules a system shutdown to occur in exactly one minute while broadcasting a custom warning message to all logged-in users.
shutdown +1 "Goodbye World!"
# Displays network interface configurations, including active IP addresses, netmasks, and hardware MAC addresses.
ifconfig
# Sends exactly four ICMP echo request packets to the specified IP address to test network connectivity.
ping -c 4 192.168.1.2
# Sends exactly four ICMP echo request packets to a secondary IP host to verify network layer reachability.
ping -c 4 192.168.1.3
# Terminates the current shell session
exit
# Displays a snapshot of the active processes currently running within the user's immediate terminal session.
ps
# Lists every single process running across the entire operating system, spanning all users and system services.
ps -e
# Lists all system-wide processes using a full-format listing that details the UID, PID, PPID, and execution commands.
ps -ef
