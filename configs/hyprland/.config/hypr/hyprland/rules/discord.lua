local theme = require("hyprland.theme")

hl.window_rule({
    name = "discord-workspace",
    match = {
        class = "^(vesktop)$",
    },
    workspace = "special:discord",
    border_color = { colors = {"rgba(" .. theme.secondary_color .. ")", "rgba(" .. theme.secondary_color .. ")"}, angle = 45 }
})