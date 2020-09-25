#!/bin/sh
# Install software for web development.

snap install node --classic --channel=14
npm install -g bower
npm install -g yo
npm install -g grunt-cli

apt-get -y update
apt-get install jekyll
