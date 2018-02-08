#!/bin/bash

sudo apt-get install libxss1 libappindicator1 libindicator7
wget -P ./temp https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./temp/google-chrome*.deb
rm ./temp/google-chrome*.deb