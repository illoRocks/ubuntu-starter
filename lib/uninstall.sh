#!/bin/bash


# Programme deinstalllieren    
sudo apt-get purge pidgin -y
sudo apt-get purge virtualbox* -y
sudo apt-get purge hexchat -y
sudo apt-get purge tomboy -y




sudo apt-get autoremove -y && sudo apt-get autoclean
