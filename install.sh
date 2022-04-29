#!/bin/bash

sudo apt update

sudo apt install apt-transport-https curl -y

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y

sudo dpkg -i slack-desktop.deb
sudo dpkg -i code.deb

sudo apt install python3.9 -y
sudo apt install python3-pip -y

sudo apt --fix-broken install

sudo apt update

sudo apt full-upgrade -y


name="tando"

eco $name
