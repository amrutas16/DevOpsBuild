#!/bin/sh

sudo apt-get install git
sudo apt-get install openjdk-7-jdk
apt-cache search maven
sudo apt-get install maven
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
