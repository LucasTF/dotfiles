#!/usr/bin/env bash

hyprctl dispatch 'hl.dsp.focus({ workspace = "name:code"})'

if ! hyprctl clients -j | jq -e --arg ws "code" 'any(.[]; .workspace.name | test($ws))' > /dev/null; then
    if [[ $AL_CODE_EDITOR -eq "vscodium" ]] then
        hyprctl dispatch 'hl.dsp.exec_cmd("vscodium")'
    fi
fi
