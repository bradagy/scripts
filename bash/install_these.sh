#!/bin/bash

# Installing yadm.
sudo apt-get install yadm

# Installing tmux.
sudo apt-get install tmux

# Installing Peek (animated GIF recorder)
sudo add-apt-repository ppa:peek-developers/stable
sudo apt update
sudo apt install peek

# Download the latest Google Chrome .deb package.
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Installing chrome.
sudo apt install ./google-crhome-stable_current_amd64.deb

# Installing redshift
sudo apt-get install redshift redshift-gtk

# Installing hexchat.
sudo add-apt-repository ppa:gwendal-lebihan-dev/hexchat-stable
sudo apt update
sudo apt install hexchat

# Installing tree cli.
sudo apt-get install tree

# Installing syncthing.
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt-get update
sudo apt-get install syncthing

# Cloning the fzf directory. Remember to run the install script later.
# cd into the directory first.
# Install script; ~/.fzf/install
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

# Installing tor.
sudo apt update
# Installing apt-transport-https package. Necessary to access a repo
# over HTTPS.
sudo apt-get install apt-transport-https
sudo add-apt-repository universe
# Import the Tor Apt repo GPG key to my system using wget.
# This command should output "OK" which means that the key has been
# successfully imported and the packages from this repo will be considered
# trusted.
wget -q -O - https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | sudo apt-key add -
# Enable the Tor repo.
echo "deb https://deb.torproject.org/torproject.org $(lsb_release -cs) main" | sudo tee -a /etc/apt/sources.list
# Once the repo is enabled, update the apt package list and install the latest
# version of tor.
sudo apt update
sudo apt install tor deb.torproject.org-keyring torbrowser-launcher

# Cloning the  tmux plugin manager repo.
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Installing nord terminal colorscheme. Remember to run the install script
# later. cd in to the directory first.
# nord terminal install script: ./nord.sh
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git

# Installing neofetch.
sudo apt-get update
sudo apt-get install neofetch

# Installing Keybase.
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
sudo apt install ./keybase_amd64.deb

# Installing trash-cli
sudo apt install trash-cli
