return {
        "echasnovski/mini.hipatterns",
        enabled = false,
        version = false,
        config  = function()
                require("mini.hipatterns").setup({
                        highlighters = {
                                hex_color = hipatterns.gen_highlighter.hex_color(),
                        },
                })
        end,
}
