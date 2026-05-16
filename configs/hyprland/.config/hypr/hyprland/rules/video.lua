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