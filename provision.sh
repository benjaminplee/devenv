#!/usr/bin/env bash

cp -r /vagrant/dotfiles/.??* ~/

sudo apt-get install git curl -y

# Install Vundle (Vim package manager) and activate
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -i NONE +PluginInstall +qall > /dev/null 2>&1

# Increase file handle limits
sudo su -c 'echo -e "vagrant soft nofile 4096\nvagrant hard nofile 65536\n" > /etc/security/limits.d/vagrant.user.limits.conf'

sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc

wget http://apache.mirror.serversaustralia.com.au/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.tar.gz
tar xzvf apache-maven-3.5.3-bin.tar.gz
echo 'export MVN_HOME=/home/vagrant/apache-maven-3.5.3' >> ~/.bashrc
echo 'export PATH=$PATH:$MVN_HOME/bin' >> ~/.bashrc
