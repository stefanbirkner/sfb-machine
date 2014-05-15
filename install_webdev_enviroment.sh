#!/bin/sh
# Install software for web development.

apt-get -y update
apt-get -y install npm
ln -s /usr/bin/nodejs /usr/bin/node
npm install -g grunt-cli
npm install -g bower 

#Use gem to install jekyll, because the debian package is outdated.
apt-get install ruby1.9.1-dev
gem install jekyll
