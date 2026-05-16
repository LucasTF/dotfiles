hl.window_rule({
    name = "steam-workspace",
    match = {
        class = "^(steam)$",
    },
    workspace = 10,
})

hl.window_rule({
    name = "game-workspace",
    match = {
        workspace = "name:game",
    },
    content = "game",
})

hl.window_rule({
    name = "steam-game-workspace",
    match = {
        class = "^(steam_app_.*)$",
    },
    workspace = "name:game",
})

hl.window_rule({
    name = "pcsx2-game-workspace",
    match = {
        class = "^(pcsx2-qt)$",
    },
    workspace = "name:game",
})