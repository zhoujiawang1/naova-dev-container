#!/bin/bash

dbus-daemon --system --fork

echo "Code will be stored in \"~/naova\" directory by default"
NAOVA_ROOT=~/naova
read -p "User Git mail :"  usermail
git config --global user.email "$usermail"
read -p "Naova Github username :" username
git config --global user.name "$username"

if ! [ -f $NAOVA_ROOT ]
then
	git clone git@github.com:Naova/NaovaCode2023.git --recursive $NAOVA_ROOT
fi

cd $NAOVA_ROOT
echo "Generate code"
NO_CLION=true Make/Linux/generate

echo "Compile Nao code"
Make/Linux/compile Nao

echo "Compile SimRobot Code"
Make/Linux/compile SimRobot

echo "Compile bush"
Make/Linux/compile bush

echo "Good luck!! You can work NOW!!!"