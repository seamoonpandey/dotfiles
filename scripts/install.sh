#!/bin/bash

set -e

# system update
sudo pacman -Syu --noconfirm

# core packages
sudo pacman -S --noconfirm \
  git base-devel zsh neovim tmux stow curl wget

# install yay (AUR helper)
if ! command -v yay &> /dev/null; then
  git clone https://aur.archlinux.org/yay.git ~/yay
  cd ~/yay
  makepkg -si --noconfirm
  cd ~
  rm -rf ~/yay
fi

# stow dotfiles
cd ~/dotfiles
stow */

# set zsh as default shell
chsh -s $(which zsh)

echo "Done. Restart shell."
