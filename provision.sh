#!/usr/bin/env bash

cp -r /vagrant/dotfiles/.??* ~/

sudo apt-get update
sudo apt-get install git -y

# Increase file handle limits
sudo su -c 'echo -e "vagrant soft nofile 4096\nvagrant hard nofile 65536\n" > /etc/security/limits.d/vagrant.user.limits.conf'

