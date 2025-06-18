return {
        "markgandolfo/lightswitch.nvim",
        event        = "VeryLazy",
        dependencies = { "MunifTanjim/nui.nvim" },
        config       = function()
                local lightswitch = require("lightswitch")

                lightswitch.add_toggle("Diagnostics", "lua vim.diagnostic.enable()", "lua vim.diagnostic.disable()", true)
        end
}
