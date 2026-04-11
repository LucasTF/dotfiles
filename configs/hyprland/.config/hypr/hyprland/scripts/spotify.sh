#!/usr/bin/env bash

if hyprctl workspaces -j | jq -e --arg ws "special:spotify" 'any(.[]; .name == $ws)' > /dev/null; then
    hyprctl dispatch togglespecialworkspace "spotify"
    exit 0
fi

hyprctl dispatch togglespecialworkspace "spotify" & $AL_MUSIC_STREAMING_CLIENT &
