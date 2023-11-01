#!/bin/bash

#Check if stow is installed if not install it
if ! command -v stow &> /dev/null
then
    echo "stow could not be found"
    echo "installing stow"
    sudo apt install stow
fi


#Check if .oh-my-zsh is installed if not install it
if [ ! -d ~/.oh-my-zsh ]; then
    echo "oh-my-zsh could not be found"
fi

stow oh-my-zsh -t ~/.oh-my-zsh/

#stow xfce4shortcuts -t ~/.config/xfce4/xfconf/xfce-perchannel-xml/

rm $HOME/.zshrc

stow zshrc functions aliases gitconfig -t ~/

stow konsole -t ~/.local/share/konsole/

