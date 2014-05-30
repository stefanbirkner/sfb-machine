#!/bin/sh
# Install software without development context.

echo "deb http://archive.canonical.com/ubuntu/ trusty partner" > /etc/apt/sources.list.d/canonical_partner.list

apt-get -y update
apt-get -y install calibre
apt-get -y install keychain
apt-get -y install nautilus-dropbox
apt-get -y install keepass2
apt-get -y install steam
apt-get -y texlive-fonts-recommended
apt-get -y texlive-lang-german
apt-get -y texlive-latex-base
apt-get -y texlive-latex-recommended
