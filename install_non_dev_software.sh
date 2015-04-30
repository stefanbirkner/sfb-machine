#!/bin/sh
# Install software without development context.

echo "deb http://archive.canonical.com/ubuntu/ utopic partner" > /etc/apt/sources.list.d/canonical_partner.list

apt-get -y update
apt-get -y install calibre
apt-get -y install keychain
apt-get -y install nautilus-dropbox
apt-get -y install keepass2
apt-get -y install steam
apt-get -y install texlive-fonts-recommended
apt-get -y install texlive-lang-german
apt-get -y install texlive-latex-base
apt-get -y install texlive-latex-recommended
