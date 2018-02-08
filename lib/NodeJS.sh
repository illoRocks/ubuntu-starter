#!/bin/bash
#
# NodeJS 
#
#

# Install Node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
# to start using nvm directly
export NVM_DIR="/home/olli/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

echo ------------nvm-VERSION---------------
echo $(nvm --version)
echo --.-----------------------------------

nvm install node
nvm use node
echo ------------node-VERSION--------------
echo $(node --version)
echo --------------------------------------

# Soll neuöffnen des Terminals vermeiden,
# wenn weiter Probleme mit npm auftauchen dann Terminal schließen und öffnen
. ~/.bashrc

# install and Set config for npm
sudo apt-get install npm -y

# package manager for the web
yarn global add bower
printf "\n----------bower wurde installiert\n\n"

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
printf "\n----------Yarn wurde installiert\n\n"

# tool for improving the performance, quality, and correctness of your web apps
yarn global add lighthouse
printf "\n----------lighthouse wurde installiert\n\n"



# exit 0