local function smart_float()
    local win = hl.get_active_window()
    if not win or win.fullscreen ~= 0 then
        return
    end

    hl.dispatch(hl.dsp.window.float())

    if win.floating ~= 0 then
        local mon = hl.get_active_monitor()
        if mon then
            local w = math.floor(mon.width * 0.5)
            local h = math.floor(mon.height * 0.5)
                hl.dispatch(hl.dsp.window.resize({x = w, y = h}))
                hl.dispatch(hl.dsp.window.center())
        end
    end
end

return smart_float