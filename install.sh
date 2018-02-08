#!/bin/bash
#
# Script to install usefull components
#

##### COLORS
GREEN=`tput setaf 2`
RESET=`tput sgr0`

##### Constants

BASEDIR=$(dirname $0)
STORAGE=temp/storage.txt
DELETE="${GREEN}zurücksetzen${RESET}"
UPDATE="${GREEN}update${RESET}"
CLEAN="${GREEN}clean/autoremove${RESET}"
FILES=("$DELETE" "$UPDATE" "$CLEAN" ./lib/*)

##### Functions

reportError() {
  if [ $1 -ne 0 ]; then
    printf "\n-----Error: $2 wurde nicht richtig ausgeführt\nBitte taste drücken\n"
    read hwklh
  fi
}

delete(){
  e=()
}

update(){
  sudo apt-get update && sudo apt-get -y upgrade
}

clean(){
  sudo apt-get update && sudo apt-get autoremove && sudo apt-get clean
}

##### Main

gstream libschroedinger mediapack zum videos abspielen!!!!!!!!!!!!!


e=()

while [ true ] ; do
  
  names=()
  read -a e < $STORAGE
  
  i=0
  printf "\n-----------------------\nInstallation auswählen:\n\n"
  for file in "${FILES[@]}"; do
    # menu erstellen
    name=${file//"./lib/"/""}
    name=${name//".sh"/""}
    if [[ " ${e[*]} " == *"$name"* ]]; then
      printf "[x] %02d. %s\n" $i $name
    else
      printf "[ ] %02d. %s\n" $i $name
    fi
    names+=($name)
    i=$(($i + 1))
  done
  
  printf "$msg"
  msg=""
  
  read input
  
  # execute functions
  if ! [[ $input =~ ^[0-9]+$ ]] ; then
    echo invalid argument
    msg="\n\nBitte nummer eingeben\n\n"
  
  elif [ "${names[input]}" == "$DELETE" ]; then
    delete
    
    elif [ "${names[input]}" == "$UPDATE" ]; then
    update
    
    elif [ "${names[input]}" == "$CLEAN" ]; then
    clean
    
    # execute scripts in ./lib
    elif [ $input -eq $input 2>/dev/null ] && [ "$input" ]; then
    printf "\n${FILES[input]} wird ausgeführt...\n\n"
    sh "${FILES[input]}"
    err=$?
    reportError $? ${names[input]}
    e+=("${names[input]}")

    else
    msg="\n\nIrgendetwas ist schief gelaufen\n\n"
  fi
  
  # ausgeführtes script speichern
  e=( $(printf "%s\n" "${e[@]}" | uniq) )
  
  echo "${e[*]}" > $STORAGE
  
done
