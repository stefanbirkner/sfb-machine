#!/bin/sh
# Install basic development tools

apt-get -y update
apt-get -y install git
apt-get -y install meld
apt-get -y install tree
apt-get -y install vagrant
apt-get -y install vim
apt-get -y install virtualbox
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

snap install code --classic

