#!/bin/sh
# Install Java development enviroment.

apt-get -y update
apt-get -y install openjdk-14-jdk
apt-get -y install maven
apt-get -y install gradle

snap install intellij-idea-ultimate --classic

