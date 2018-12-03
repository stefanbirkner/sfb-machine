#!/bin/sh
# Create a debian package for IntelliJ Idea (Ultimate Editor) and install it.

apt-get -y install build-essential
apt-get -y install devscripts
apt-get -y install debhelper
apt-get -y install jq
git clone git://github.com/stefanbirkner/jetbrains-dpkg.git
cd jetbrains-dpkg
./build-package -p IIU
dpkg -i repository/debian/pool/jetbrains-iiu-*.deb
echo "JDK_HOME=/usr/lib/jvm/java-11-openjdk-amd64" > /etc/default/idea
echo "M2_HOME=/usr/share/maven" >> /etc/default/idea
cd ..
rm -r jetbrains-dpkg

