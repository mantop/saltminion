#!/bin/bash
echo
echo This script will install salt-minion with custom configuration.
echo This bash-script is from github.com/mantop/saltminion
echo
sudo apt-get update
sudo apt-get install -y salt-minion
echo
echo
echo Editing salt-minion configuration 
echo Please insert master IP and your minion id for this minion: 
read -p 'master ip: ' ipvar
read -p 'id: ' idvar
echo -e "master: $ipvar\nid: $idvar" | sudo tee /etc/salt/minion
echo
echo Tried to write in /etc/salt/minion
echo
echo
echo Here is contents of /etc/salt/minion:
cat /etc/salt/minion
echo Trying restarting salt-minion
sudo systemctl restart salt-minion
echo Done!
