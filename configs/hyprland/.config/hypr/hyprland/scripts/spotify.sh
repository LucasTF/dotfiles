#!/usr/bin/env bash

WORKSPACE="spotify"

if hyprctl workspaces -j | jq -e --arg ws "special:$WORKSPACE" 'any(.[]; .name == $ws)' > /dev/null; then
    hyprctl dispatch togglespecialworkspace "$WORKSPACE"
    exit 0
fi

alacritty --class "spotify_cava" -e cava &
sleep 0.1
alacritty --class "spotify_ncspot" -e ncspot &
sleep 0.1
hyprctl dispatch togglesplit
hyprctl dispatch resizeactive exact "100% 70%"