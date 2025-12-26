#!/usr/bin/env bash

hyprctl dispatch workspace "name:code"

if ! hyprctl clients -j | jq -e --arg ws "code" 'any(.[]; .workspace.name | test($ws))' > /dev/null; then
    if [[ $AL_CODE_EDITOR -eq "vscodium" ]] then
        hyprctl dispatch exec "[workspace code] /usr/bin/codium --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland"
    fi
fi
