# This command is for list all repositories that we have in the repository and show all the specs about the  respository
ls -l -a -h
# Is the same command but in a simple way
ls -lah
# Command for make a directory beggins whit "-"
mkdir -- rm
# Remove directory beggings whit "-"
rmdir -- -rm
# Create a superficial clone whit the history of the commits 
--depth 
# To create a file whit "archivo.sh"
touch archivo.ah
# Change permissions the script.sh file whit execute permissions
chmod +x script.sh
# To add execute permissions for user 
chmod u+x script.sh
# Delete the read permission to others
chmod o-r secreto.txt
# Add read and write permissions for user, and remove read, write and execute permissions for group and other in "privado"
chmod u+rw,go-rwx privado
# Sudo only execute for echo so we dont have permissions 
sudo echo "hola">/etc/archivo_archivo_protegido
# Sudo is for the commnad belows so we have the permsissions
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null
# To show the content of the file
cat archivo_protegido 
# Create the file but shows the content in the terminal when execute the command 
echo "hola" | sudo tee /etc/archivo_protegido
# To rewrite the text that we have inside the file that we placed
sudo sh --c 'echo' "chao" >> /etc/arcchivo_protegido'
# To change to root mode 
sudo -i
# To change to root mode but not optimal
sudo su
#  To change to root mode 
sudo su -
