return {
        "NTBBloodbath/color-converter.nvim",
        enabled = false,
        event  = "VeryLazy",
        opts   = {},
        config = function()
                local convert = require("color-converter")
                vim.keymap.set("n", ",x", function() convert.cycle() end, { desc = "Cycle Colors" })
        end,
}
