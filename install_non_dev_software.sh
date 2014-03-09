#!/bin/sh
# Install software without development context.

echo "deb http://archive.canonical.com/ubuntu/ saucy partner" > /etc/apt/sources.list.d/canonical_partner.list

apt-get -y update
apt-get -y install calibre
apt-get -y install keychain
apt-get -y install nautilus-dropbox
apt-get -y install keepass2
