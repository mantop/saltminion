#!/bin/bash
echo
echo This script will install salt-minion with custom configuration.
echo This bash-script is from github.com/mantop/saltminion
echo
sudo apt-get install -y salt-minion
echo
echo
echo Editing salt-minion configuration 
echo Please insert id for this minion: 
read -p 'id: ' idvar
echo -e "master: 46.101.181.102\nid: $idvar" | sudo tee /etc/salt/minion
echo
echo Tried to write in /etc/salt/minion
echo
echo
echo Here is contents of /etc/salt/minion:
cat /etc/salt/minion
echo Trying restarting salt-minion
sudo systemctl restart salt-minion
echo Done!
