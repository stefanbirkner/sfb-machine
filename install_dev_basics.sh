#!/bin/sh
# Install basic development tools

apt-get -y update
apt-get -y install meld
apt-get -y install tree
apt-get -y install vim
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
