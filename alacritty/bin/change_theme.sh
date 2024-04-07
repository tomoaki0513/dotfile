# !/usr/bin/env zsh

## If alacritty.yml does not exist, raise an alert
[[ ! -f $HOME/.config/alacritty/alacritty.yml ]] && \
    notify-send "alacritty.yml does not exist" && exit 0

new_theme=$(ls -l $HOME/.config/alacritty/themes/themes | awk '{print $9}' | fzf)

old_theme=$(grep -Eo '~\/\.config\/alacritty\/themes\/themes\/[^[:space:]]+' \
    "$HOME/.config/alacritty/alacritty.yml" | xargs -n1 basename)

## Replace theme value in alacritty.yml
sed -i "" "s/$old_theme/$new_theme/g" \
   $HOME/.config/alacritty/alacritty.yml
