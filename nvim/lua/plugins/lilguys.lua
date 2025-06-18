return {
        "stunwin/lilguys.nvim",
        enabled = false,
        event   = "VeryLazy",
        opts    = {
                keybind     = "<leader>g",
                -- insert_keybind = "<leader>,",
                symbol      = ",",
                filetypes   = { "lua", "gleam", "elm", "elixir", "fsharp", "ocaml", "reason" },
                auto_insert = true,
        }
}
