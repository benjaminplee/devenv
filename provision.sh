#!/usr/bin/env bash

cp -r /vagrant/dotfiles/.??* ~/

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install git curl tmux rlwrap mit-scheme -y

# Install Vundle (Vim package manager) and activate
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -i NONE +PluginInstall +qall > /dev/null 2>&1

# Increase file handle limits
sudo su -c 'echo -e "vagrant soft nofile 4096\nvagrant hard nofile 65536\n" > /etc/security/limits.d/vagrant.user.limits.conf'

