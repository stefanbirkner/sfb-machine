#!/bin/sh
# Install software for web development.

snap install node --classic --channel=11
npm install -g bower
npm install -g yo
npm install -g grunt-cli

#Use gem to install jekyll, because the debian package is outdated.
apt-get -y update
apt-get install ruby1.9.1-dev
gem install jekyll
