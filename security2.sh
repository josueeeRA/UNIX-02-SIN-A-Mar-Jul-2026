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