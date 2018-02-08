#!/bin/bash
#
# install icons
#
#
# Basiswerkzeuge

# Programme installieren
sudo apt install build-essential -y
sudo apt-get install git -y
sudo apt install nemo-dropbox -y
sudo apt-get install gedit -y
sudo apt-get install qpdfview -y
sudo apt-get install usb-creator-gtk -y
sudo apt-get install gparted -y
sudo apt-get install sane-utils -y
sudo apt-get install libncurses-dev -y

# Passwortverwaltung
sudo apt-get install keepass2 xdotool -y
printf "\n----------keepass2 wurde installiert\n\n"


# Eigene Befehle hinzufügen
echo "# eigene Befehle" >> ~/.bashrc
echo "export PATH=\$PATH:~/Dropbox/Backup/Programme/EigeneScripte" >> ~/.bashrc
printf "\n----------eigene Befehle zu PATH hinzugefügt\n\n"

exit 0
