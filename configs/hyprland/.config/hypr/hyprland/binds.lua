local apps = require("hyprland.apps")

local main_mod = "SUPER"

-- Applications binds
hl.bind(main_mod .. " + RETURN", hl.dsp.exec_cmd(apps.terminal))
hl.bind(main_mod .. " + B", hl.dsp.exec_cmd(apps.browser))
hl.bind(main_mod .. " + M", hl.dsp.exec_cmd(apps.logout))
hl.bind(main_mod .. " + F", hl.dsp.exec_cmd(apps.file_manager))
hl.bind(main_mod .. " + S", hl.dsp.exec_cmd(apps.spotify))
hl.bind(main_mod .. " + D", hl.dsp.exec_cmd(apps.discord))
hl.bind(main_mod .. " + KP_Delete", hl.dsp.exec_cmd(apps.code))
hl.bind(main_mod .. " + SPACE", hl.dsp.exec_cmd(apps.menu))

hl.bind(main_mod .. " + C", hl.dsp.window.close())
hl.bind(main_mod .. " + V", hl.dsp.window.float())

-- Print Screen
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m region --freeze --clipboard-only"))
hl.bind("CTRL + PRINT", hl.dsp.exec_cmd("hyprshot -m output -o ~/Pictures/screenshots"))

-- ALT + TAB
hl.bind("ALT + TAB", hl.dsp.focus({workspace = "previous"}))

-- Move focus with main_mod + arrow keys
hl.bind(main_mod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(main_mod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(main_mod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(main_mod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with main_mod + num_key[0-9]
hl.bind(main_mod .. " + KP_End", hl.dsp.focus({workspace = 1}))
hl.bind(main_mod .. " + KP_Down", hl.dsp.focus({workspace = 2}))
hl.bind(main_mod .. " + KP_Next", hl.dsp.focus({workspace = 3}))
hl.bind(main_mod .. " + KP_Left", hl.dsp.focus({workspace = 4}))
hl.bind(main_mod .. " + KP_Begin", hl.dsp.focus({workspace = 5}))
hl.bind(main_mod .. " + KP_Right", hl.dsp.focus({workspace = 6}))
hl.bind(main_mod .. " + KP_Home", hl.dsp.focus({workspace = 7}))
hl.bind(main_mod .. " + KP_Up", hl.dsp.focus({workspace = 8}))
hl.bind(main_mod .. " + KP_Prior", hl.dsp.focus({workspace = 9}))
hl.bind(main_mod .. " + KP_Insert", hl.dsp.focus({workspace = 10}))

-- Move active window to a workspace with main_mod + ALT + num_key[0-9]
hl.bind(main_mod .. " + ALT + KP_End", hl.dsp.window.move({workspace = 1}))
hl.bind(main_mod .. " + ALT + KP_Down", hl.dsp.window.move({workspace = 2}))
hl.bind(main_mod .. " + ALT + KP_Next", hl.dsp.window.move({workspace = 3}))
hl.bind(main_mod .. " + ALT + KP_Left", hl.dsp.window.move({workspace = 4}))
hl.bind(main_mod .. " + ALT + KP_Begin", hl.dsp.window.move({workspace = 5}))
hl.bind(main_mod .. " + ALT + KP_Right", hl.dsp.window.move({workspace = 6}))
hl.bind(main_mod .. " + ALT + KP_Home", hl.dsp.window.move({workspace = 7}))
hl.bind(main_mod .. " + ALT + KP_Up", hl.dsp.window.move({workspace = 8}))
hl.bind(main_mod .. " + ALT + KP_Prior", hl.dsp.window.move({workspace = 9}))
hl.bind(main_mod .. " + ALT + KP_Insert", hl.dsp.window.move({workspace = 10}))

-- Dedicated workspaces
hl.bind(main_mod .. " + Z", hl.dsp.workspace.toggle_special("magic"))
hl.bind(main_mod .. " + ALT + Z", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind(main_mod .. " + ALT + KP_Delete", hl.dsp.window.move({ workspace = "code" }))

-- Scroll through existing workspaces with main_mod + scroll / main_mod + CTRL + arrow keys
hl.bind(main_mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1"}))
hl.bind(main_mod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1"}))
hl.bind(main_mod .. " + CTRL + right", hl.dsp.focus({ workspace = "e+1"}))
hl.bind(main_mod .. " + CTRL + left", hl.dsp.focus({ workspace = "e-1"}))

-- Move/resize windows with main_mod + LMB/RMB and dragging
hl.bind(main_mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(main_mod .. " + mouse:273", hl.dsp.window.resize(), {mouse = true })

-- Audio controls
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))

-- Media controls with playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))