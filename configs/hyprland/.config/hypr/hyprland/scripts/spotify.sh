#!/usr/bin/env bash

if hyprctl workspaces -j | jq -e --arg ws "special:spotify" 'any(.[]; .name == $ws)' > /dev/null; then
    hyprctl dispatch togglespecialworkspace "spotify"
    exit 0
fi

if [[ $AL_MUSIC_STREAMING_APP -eq "spotify" ]] then
    spotify-launcher &
elif [[ $AL_MUSIC_STREAMING_APP -eq "ncspot" ]] then
    alacritty --class "spotify" -e ncspot &
else
    hyprctl notify 3 5000 0 "Environment Variable 'AL_MUSIC_STREAMING_APP' invalid."
    exit 1
fi