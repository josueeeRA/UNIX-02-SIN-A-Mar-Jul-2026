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
