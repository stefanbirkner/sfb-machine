#!/bin/sh
# Install software for web development.

apt-get -y update
apt-get -y install jekyll 
apt-get -y install npm
ln -s /usr/bin/nodejs /usr/bin/node
npm install -g grunt-cli
