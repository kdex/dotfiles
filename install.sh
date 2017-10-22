#!/bin/bash
REPOSITORY=$(dirname "$(readlink -f "$0")")
DIRECTORY_GIT_TEMPLATE=".git-template"
cd "$REPOSITORY"
# Setup git
git config --global user.name "kdex"
git config --global user.email "kdex@kdex.de"
git config --global core.editor "nano"
git config --global push.default "simple"
git config --global init.templatedir ~/$DIRECTORY_GIT_TEMPLATE
cp -aT $DIRECTORY_GIT_TEMPLATE ~/$DIRECTORY_GIT_TEMPLATE
# Setup keyboard
cp .Xmodmap .xinitrc ~/
# Setup shell
cp .bashrc .bash_profile .inputrc .zshrc .zsh_profile ~/
# Setup nano
git clone https://github.com/nanorc/nanorc.git /tmp/nanorc
cd /tmp/nanorc && make install && cd "$REPOSITORY"
cp .nanorc ~/
rm -rf /tmp/nanorc
# Setup KDE
cp -aT .config/. ~/.config
# Copy scripts
for binary in .bin/*; do
	cp "$binary" ~/.local/bin
done