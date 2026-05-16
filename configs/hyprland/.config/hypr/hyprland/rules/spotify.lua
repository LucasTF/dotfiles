local theme = require("hyprland.theme")

hl.window_rule({
    name = "spotify-workspace",
    match = {
        class = "(Spotify)$",
    },
    workspace = "special:spotify",
    border_color = { colors = {"rgba(" .. theme.secondary_color .. ")", "rgba(" .. theme.secondary_color .. ")"}, angle = 45 }
})