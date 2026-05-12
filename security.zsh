apt-get upate # Update the packages to the last versions 
apt-get upgrade  # Apply the changes 
apt-get install acl # Install acl
# Commands to fix the problem of the umask 
chown -R $(whoami) . 
setfacl -bnR .
# Now mae the changes and do umask 027 again
umask 027
touch archivo3 # Create a new file 
mkdir directorio3 # Create a new directory 
ls -l # List the directory in a long way 
umask 077 # To rest the number 077 to the permissions of the new file
touch secreto.txt # Create a new file 
ls -l # List in a long form
umaks 022 # To change the umask to the predetermined numbers 
whoami # Command for view who user im 
echo "Hola" > mi_archivo # Command to create a file whit the message
ls -l mi_archivo # List in a long form 
useradd -m -s /usr/bin/zsh luna # Add a user
groups # For view the groups
# We create a group but we not put the group 
groupadd grupo_test # Add a group
touch comun # Create a file 
ls -l comun # List in a long way
usermod -a -G grupo_test luna # Add a group for the user 
chgrp grupo_test comun # Chage the group to comun to grupo_tets 
ls -l comun #List in a long way