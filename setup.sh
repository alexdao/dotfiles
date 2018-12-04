#!/bin/bash

# This symlinks all the dotfiles to ~/
# This is safe to run multiple times and will prompt you about anything unclear

# Warn user this script will overwrite current dotfiles
while true; do
  read -p "Warning: this will overwrite your current dotfiles. Continue? [y/n] " yn
  case $yn in
    [Yy]* ) break;;
    [Nn]* ) exit;;
    * ) echo "Please answer yes or no.";;
  esac
done

dir=~/dotfiles

install_zsh () {
  # Test to see if zshell is installed.  If it is:
  if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    # Install Oh My Zsh if it isn't already present
    if [[ ! -d "$HOME/.oh-my-zsh/" ]]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        echo "$~/.oh-my-zsh/"
    fi
    # Set the default shell to zsh if it isn't currently set to zsh
    chsh -s $(which zsh)
  else
    # If zsh isn't installed, get the platform of the current machine
    platform=$(uname);
    # If the platform is Linux, try an apt-get to install zsh and then recurse
    if [[ $platform == 'Linux' ]]; then
      if [[ -f /etc/redhat-release ]]; then
        sudo yum install zsh
        install_zsh
      fi
      if [[ -f /etc/debian_version ]]; then
        sudo apt-get install zsh
        install_zsh
      fi # If the platform is OS X, tell the user to install zsh :) elif [[ $platform == 'Darwin' ]]; then
      echo "We'll install zsh, then re-run this script!"
      brew install zsh
      exit
    fi
  fi
}

install_zsh

ln -sf ~/dotfiles/zsh/themes/alex.zsh-theme $HOME/.oh-my-zsh/themes
ln -sf ~/dotfiles/.vim/.vimrc $HOME/.vimrc
ln -sf ~/dotfiles/.vim $HOME/.vim
ln -sf ~/dotfiles/.zshrc $HOME/.zshrc
#ln -sf ~/dotfiles/.gitconfig $HOME/.gitconfig
ln -sf ~/dotfiles/.hushlogin $HOME/.hushlogin

zsh ~/.zshrc
