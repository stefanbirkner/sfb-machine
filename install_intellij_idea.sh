#!/bin/sh
# Create a debian package for IntelliJ Idea (Ultimate Editor) and install it.

apt-get -y install build-essential
apt-get -y install devscripts
apt-get -y install debhelper
git clone git://github.com/stefanbirkner/jetbrains-dpkg.git
cd jetbrains-dpkg
./build-package -p idea-iu
dpkg -i repository/debian/pool/idea-iu-*.deb
echo "JDK_HOME=/usr/lib/jvm/java-11-openjdk-amd64" > /etc/default/idea
echo "M2_HOME=/usr/share/maven" >> /etc/default/idea
cd ..
rm -r jetbrains-dpkg
