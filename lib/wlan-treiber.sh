#!/bin/bash
BASEDIR=$(dirname $0)

# Meditak MT7630E-Treiber insatllieren
cd ./Programme/MT7630E
sudo chmod +x uninstall
sudo ./uninstall
sudo chmod +x install
sudo ./install
echo "Wlan-Treiber wurde installiert. Bei Kernelupdate muss er neu installiert werden"

