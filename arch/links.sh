#!/bin/bash

dotfiles_repo="$1"
xdg_config="$HOME/.config"

ls -l "$xdg_config"

ln -s "$dotfiles_repo/.config/compton" "$xdg_config/compton"
ln -s "$dotfiles_repo/.config/gtk-3.0/gtk.css" "$xdg_config/gtk-3.0/gtk.css"
ln -s "$dotfiles_repo/.config/redshift.conf" "$xdg_config/redshift.conf"
ln -s "$dotfiles_repo/.config/i3/config" "$xdg_config/i3/config"
ln -s "$dotfiles_repo/.config/i3status/" "$xdg_config/i3status"
ln -s "$dotfiles_repo/.config/termite/" "$xdg_config/termite"
ln -s "$dotfiles_repo/.config/geoclue" /etc/geoclue

dotfiles_in_home=$(find "$dotfiles_repo" -name '.*' -type f)
for file in $dotfiles_in_home; do
	ln -s "$file" "$HOME/$(basename $file)"
done
