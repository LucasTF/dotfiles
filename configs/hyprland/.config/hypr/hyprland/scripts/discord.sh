#!/usr/bin/env bash

if hyprctl workspaces -j | jq -e --arg ws "special:discord" 'any(.[]; .name == $ws)' > /dev/null; then
    hyprctl dispatch togglespecialworkspace "discord"
    exit 0
fi

$AL_DISCORD_CLIENT &