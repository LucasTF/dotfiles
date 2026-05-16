local theme = require("hyprland.theme")

-- Persist workspace 1
hl.workspace_rule({ workspace = "1", persistent = true })

-- Open Discord on special Discord workspace
hl.window_rule({
    name = "discord-workspace",
    match = {
        class = "^(vesktop)$",
    },
    workspace = "special:discord",
    border_color = { colors = {"rgba(" .. theme.secondary_color .. ")", "rgba(" .. theme.secondary_color .. ")"}, angle = 45 }
})

-- Open Spotify on special Spotify workspace
hl.window_rule({
    name = "spotify-workspace",
    match = {
        class = "(Spotify)$",
    },
    workspace = "special:spotify",
    border_color = { colors = {"rgba(" .. theme.secondary_color .. ")", "rgba(" .. theme.secondary_color .. ")"}, angle = 45 }
})

-- Open Steam on dedicated workspace
hl.window_rule({
    name = "steam-workspace",
    match = {
        class = "^(steam)$",
    },
    workspace = 10,
})

-- VRR
hl.window_rule({
    name = "game-workspace",
    match = {
        workspace = "name:game",
    },
    content = "game",
})

hl.window_rule({
    name = "video-workspace",
    match = {
        workspace = "name:video",
    },
    content = "video",
})

hl.window_rule({
    name = "vlc-workspace",
    match = {
        class = "^(vlc)$",
    },
    workspace = "name:video",
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

-- XDG
hl.window_rule({
    name = "xdg-format",
    match = {
        class = "^(xdg-desktop-portal-gtk)$",
        float = true,
    },
    center = true,
    size = {"(monitor_w*0.6)", "(monitor_h*0.6)"}
})

-- Thunar
hl.window_rule({
    name = "thunar-file-operation",
    match = {
        initial_class = "^thunar$",
        title = "^File Operation Progress$",
    },
    float = true,
    center = true,
    size = {"(monitor_w*0.25)", "(monitor_h*0.25)"}
})

hl.window_rule({
    name = "thunar-file-rename",
    match = {
        initial_class = "^thunar$",
        title = "^Rename.*$",
    },
    float = true,
    center = true,
    size = {"(monitor_w*0.25)", 90}
})

-- Ignore maximize events
hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

-- Fix Xwayland dragging issues
hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})