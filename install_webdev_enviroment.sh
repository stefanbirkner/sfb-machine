#!/bin/sh
# Install software for web development.

apt-get -y update
apt-get -y install npm
npm install -g grunt-cli
