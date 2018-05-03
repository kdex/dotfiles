#!/bin/bash
REPOSITORY=$(dirname "$(readlink -f "$0")")
DIRECTORY_GIT_TEMPLATE=".git-template"
cd "$REPOSITORY"
# Set up git
cp .gitconfig ~/
cp -aT "$DIRECTORY_GIT_TEMPLATE" "~/$DIRECTORY_GIT_TEMPLATE"
# Set up keyboard
cp .Xmodmap .xinitrc ~/
# Set up shell
cp .bashrc .bash_profile .inputrc .zshrc .zsh_profile ~/
# Set up nano
git clone https://github.com/nanorc/nanorc.git /tmp/nanorc
cd /tmp/nanorc && make install && cd "$REPOSITORY"
cp .nanorc ~/
rm -rf /tmp/nanorc
# Set up .npmrc
cp .npmrc ~/
# Set up KDE
cp -aT .config/. ~/.config
cp -aT .local ~/.local