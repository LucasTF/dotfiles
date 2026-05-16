#!/usr/bin/env bash

if hyprctl workspaces -j | jq -e --arg ws "special:spotify" 'any(.[]; .name == $ws)' > /dev/null; then
    hyprctl dispatch 'hl.dsp.workspace.toggle_special("spotify")'
    exit 0
fi

hyprctl dispatch 'hl.dsp.workspace.toggle_special("spotify")' & $AL_MUSIC_STREAMING_CLIENT &
