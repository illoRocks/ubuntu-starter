#!/bin/bash
BASEDIR=$(dirname $0)

cd $BASEDIR/Programme/Kernel

sudo dpkg -i

echo "PC muss neu gestartet werden!! Jetzt neustarten? [j/N]"
read  input
if [ "$input" == "J" ] || [ "$input" == "j" ]; then
    reboot
fi
