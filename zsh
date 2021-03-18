#!/bin/sh
clear
tput setaf 6
echo "THE ZSH INSTALLER COMPLETE WITH SYNTAX && OH-MY-ZSH && ALIASES"
echo " "
echo "    PLEASE SELECT YOURE PACKAGE INSTALLER"
echo " "
echo "        apt/Debian.Linux"
read a in
if [ $a = pkg ]
then
  clear
  pkg update && pkg upgrade
  pkg install curl wget nano zsh git nano 
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  cd $HOME
  git clone  https://github.com/zsh-users/zsh-syntax-highlighting
  echo "source /data/data/com.termux/files/home/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh" >> .zshrc
  echo "source /data/data/com.termux/files/home/zsh/alias.txt" >> .zshrc
fi
if [ $a = apt ]
then
  clear
  sudo apt update && sudo apt upgrade -y
  sleep 2
  clear
  sudo apt install curl wget git nano zsh -y
  sleep 2
  clear
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  cd $HOME
  git clone https://github.com/zsh-users/zsh-syntax-highlighting
  echo "source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh" >> .zshrc
  echo "source $HOME/alias.txt" >> .zshrc
fi
