#!/bin/sh
# Create a debian package for IntelliJ Idea (Ultimate Editor) and install it.

apt-get -y install build-essential
apt-get -y install devscripts
apt-get -y install debhelper
git clone git://github.com/trygvis/intellij-idea-dpkg.git
cd intellij-idea-dpkg
./build-package -f IU -p debian -u
dpkg -i repository/debian/intellij-idea-iu-*.deb
echo "JDK_HOME=/usr/lib/jvm/java-8-oracle" > /etc/default/idea
echo "M2_HOME=/usr/share/maven" >> /etc/default/idea
cd ..
rm -r intellij-idea-dpkg
