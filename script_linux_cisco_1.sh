=== SINTAXIS DE COMANDOS BASICOS ===
# The firts command that I use in the VM in the course is
ls # ls is used to list the content documents or directories 
# Is important to know that commands in Linux are Key Sensitive so ls is not equals to LS 
# The sintaxis in the Linux command are: command options argument
ls Documents # This commands is used to list the files into Documents directory 
aptitude moo # Is a package gestor funtion
ls -l # For list the content into a direcory but in a large way so we can view the permissions, the name, the date of creation, etc.
ls -r # For list in reverse alphabetical order
# Commands for list the content of directory in large way and in reverse alphabetical order, and the 3 ways do the same 
ls -l -r 
ls -lr
ls -rl
pwd # Its a command for print the working directory 
cd Documents # Command for change the directory to Documents 
cd / # Command for go to the / directory 
cd /home/sysadmin # Its a command to understand the absolute rutes, so the commands change the direcories to / after home and finally sysadmin
cd .. #Command to go to the "father" directory 
. # Represent the actual directory 
~ # Represent the principal directory 
ls -l -t # For list the content but chronologically
ls -l -s # For list the content of the directory but taking into account the weight of the file
su - # To become a root user
exit # To exit of root mode
sudo sl # For run a command whit root permissions 
cd ~/Documents/ # Chnage to the Documents directory 
ls -l hello.sh # For list in a large way hello.sh file
chmod u+x hello.sh # For add the execute permission to the file 
./hello.sh # To execute the file 
sudo chown root hello.sh # For change the owner of the file
sudo ./hello.sh # Execute the file but with sudo command because we change the owner
cat animals.txt # For view the content of the file
head alpha.txt # To view only the first part of the file 
tail alpha.txt # To view the last part of the file 
head -n 5 alpha.txt # To view the first 5 lines of the file 
tail -n 5 alpha.txt # To view teh last 5 lines of the file 
cp /etc/passwd . # To copy the directory passwd in the actual directory 