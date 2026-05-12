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
ls -l