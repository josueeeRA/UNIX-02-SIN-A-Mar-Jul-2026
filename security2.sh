# Show the user who im
id
# Only show the main user 
id -gn
# Create a archive with this name 
touch ~/test_group_heredado.txt
# List in a long for the archive 
ls -la ~/test_group_heredado.txt
# Show the main group with a message
echo "Grupo actual $(id -gn)"
#create a archive with this name
touch ~/antes_de_newgrp.txt
# List in a long way the archive
ls -la ~/antes_de_newgrp.txt
# Create a temporary newgroup
newgrp desarrolladores
# Show the user 
id -gn
# Create a new archive
touch ~/dentro_de_newgrp.txt
# List in the long way 
ls -la ~/dentro_de_newgrp.txt
# make a directory
mkdir -p ~/proyecto_dev/src
# show this message in the terminal 
echo "Grupo restaurado: $(id -gn)"
# add a group
groupadd grupo_restringido
# set a password for the group
gpasswd grupo_restringido
# create a temporary group
newgrp grupo_restringido
# show the user
id -gn