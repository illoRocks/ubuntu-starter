#!/bin/bash

# R
sudo apt-get install -y g++ liblapack-dev wajig libcurl4-openssl-dev libxml2-dev libssl-dev libudunits2-dev libgdal1-dev libproj-dev 
sudo gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
sudo gpg -a --export E084DAB9 | sudo apt-key add -
sudo add-apt-repository 'deb http://cran.rstudio.org/bin/linux/ubuntu xenial/'
sudo wajig addrepo ppa:marutter/c2d4u -y
sudo wajig update
sudo wajig distupgrade -y
sudo wajig update
sudo wajig install-suggested r-recommended -y
sudo wajig install-suggested r-base-dev -y
sudo wajig install r-cran-rattle -y
sudo chmod o+w /usr/local/lib/R/site-library
R -e "install.packages(c('data.table', 'caret', 'quantmod', 'ggplot2', 'rworldmap', 'rworldxtra', 'ggmap', 'knitr', 'leaflet', 'devtools', 'foreach', 'doMC', 'rbenchmark','dplyr','tidyr','highcharter','DT','treemap','plotGoogleMaps','devtools'), repos='http://cran.rstudio.com/')"
R -e "devtools::install_github(c('duncantl/XMLRPC', 'duncantl/RWordPress'))"
echo "R wurde instaliert"

# R-Studio
wget https://download1.rstudio.org/rstudio-1.0.143-amd64.deb
sudo apt-get install libjpeg62
sudo dpkg -i rstudio-1.0.143-amd64.deb
rm https://download1.rstudio.org/rstudio-1.0.143-amd64.deb
echo "RStudio wurde instaliert"

if [ "$1" != "n" ]; then
    sudo apt-get update
    sudo apt-get autoremove
    sudo apt-get clean 
fi 
