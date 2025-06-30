return {
        "RaafatTurki/hex.nvim",
        event  = "VeryLazy",
        config = function()
                require("hex").setup({})
                vim.keymap.set("n", ",x", function() require("hex").toggle() end, { desc = "Toggle hex" })
        end
}
