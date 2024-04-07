# !/usr/bin/env zsh

 ## If alacritty.yml does not exist, raise an alert
 [[ ! -f $HOME/.config/alacritty/alacritty.yml ]] && \
     notify-send "alacritty.yml does not exist" && exit 0

 ## Fetch opacity from alacritty.yml
 opacity=$(awk -F ":" '/opacity/{gsub(/ /, "", $2); print $2}' \
     "$HOME/.config/alacritty/alacritty.yml")

 ## Assign toggle opacity value
 case $opacity in
   1)
     toggle_opacity=0.8
     ;;
   *)
     toggle_opacity=1
     ;;
 esac

 ## Replace opacity value in alacritty.yml
sed -i "" "s/opacity: $opacity/opacity: $toggle_opacity/g" \
   $HOME/.config/alacritty/alacritty.yml
