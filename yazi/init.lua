Status:children_add(function()
        local h = cx.active.current.hovered
        if h == nil or ya.target_family() ~= "unix" then
                return ui.Line({})
        end

        return ui.Line({
                ui.Span(ya.user_name(h.cha.uid) or tostring(h.cha.uid)):fg("magenta"),
                ui.Span(":"),
                ui.Span(ya.group_name(h.cha.gid) or tostring(h.cha.gid)):fg("magenta"),
                ui.Span(" "),
        })
end, 500, Status.RIGHT)

if os.getenv("NVIM") then
        require("toggle-pane"):entry("min-preview")
end

require("full-border"):setup({
        type = ui.Border.PLAIN,
})

require("git"):setup()
-- require("glow"):setup()
-- require("hexyl"):setup()
-- require("lsar"):setup()

th.git               = th.git or {}
th.git.modified_sign = "▐"
th.git.added_sign    = "▐"
th.git.added_sign    = "🭶"
th.git.modified      = ui.Style():fg("#f9e2af")
th.git.added         = ui.Style():fg("#7c7157")
th.git.added         = ui.Style():fg("#f38ba8")

require("fuse-archive"):setup({
        smart_enter = true
})

require("telegram-send"):setup({
        command      = "telegram-send --file",
        notification = true,
})

require("copy-file-contents"):setup({
        append_char  = "\n",
        notification = true,
})
