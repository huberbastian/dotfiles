#!/bin/bash

config_dir="$HOME/.config"

configs=(
  "hypr"
  "fish"
  "dunst"
  "kitty"
  "nvim/lua/custom"
  "ranger"
  "rofi"
  "swappy"
  "Thunar"
  "waybar"
  "wpaperd"
  "picom"
  "i3"
  "polybar"
)

other_dots=(
  "$HOME/.vimrc"
  "$HOME/.bashrc"
  "$HOME/bin"
)

dotfiles_repo="$HOME/dotfiles"

if [ ! -d "$dotfiles_repo" ]; then
  mkdir "$dotfiles_repo"
fi

if [ ! -d "$dotfiles_repo/.config" ]; then
  mkdir "$dotfiles_repo/.config"
fi

for item in "${configs[@]}"; do 
  if [ -d "$config_dir/$item" ]; then
    cp -r "$config_dir/$item" "$dotfiles_repo/.config/"
    echo "Copied '$config_dir/$item' to '$dotfiles_repo/.config'"
  else
    echo "Warning: '$config_dir/$item' does not exist"
  fi
done

for dir in "${other_dots[@]}"; do 
  if [ -e "$dir" ]; then
    cp -r "$dir" "$dotfiles_repo"
    echo "Copied '$dir' to '$dotfiles_repo'"
  else
    echo "Warning: '$dir' does not exist"
  fi
done
