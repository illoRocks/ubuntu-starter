#!/bin/bash
#
# install icons
#
#
# lokales Wiki
sudo apt-get install zim graphviz ditaa texlive dvipng gnuplot scrot libgtkspell0


cat << EOF > ~/.config/zim/notebooks.list
[NotebookList]
Default=
1=~/Dropbox/Backup/Wiki/Wiki

[Notebook 1]
uri=~/Dropbox/Backup/Wiki/Wiki
name=Wiki
interwiki=None
icon=None
EOF