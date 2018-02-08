#!/bin/bash
#
# setup swappiness
#
#
if grep -Fq "swap" /etc/sysctl.conf; then
    echo swapiness schon eingestellt
else
    sudo echo "# Decrease swap usage to a more reasonable level" >> /etc/sysctl.conf
    sudo echo "vm.swappiness=10" >> /etc/sysctl.conf
    echo swapiness wurde geändert eingestellt
fi