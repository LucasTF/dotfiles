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