-- Persist workspace 1
hl.workspace_rule({ workspace = "1", persistent = true })

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