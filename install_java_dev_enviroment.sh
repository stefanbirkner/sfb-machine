#!/bin/sh
# Install Java development enviroment.

add-apt-repository -y ppa:webupd8team/java
add-apt-repository ppa:linuxuprising/java
apt-get -y update
apt-get -y install oracle-java10-installer
apt-get -y install oracle-java8-installer
apt-get -y install maven
apt-get -y install gradle
