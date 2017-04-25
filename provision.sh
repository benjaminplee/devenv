#!/usr/bin/env bash

cp -r /vagrant/dotfiles/.??* ~/

# Elixir / Erlang Repositories
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update -y

sudo apt-get install git -y

# Install Vundle (Vim package manager) and activate
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -i NONE +PluginInstall +qall > /dev/null 2>&1

# Increase file handle limits
sudo su -c 'echo -e "vagrant soft nofile 4096\nvagrant hard nofile 65536\n" > /etc/security/limits.d/vagrant.user.limits.conf'

# Install Elixir and Erlang
sudo apt-get install esl-erlang elixir -y
