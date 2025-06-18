return {
        "luukvbaal/statuscol.nvim",
        event  = "VeryLazy",
        config = function()
                vim.opt.foldcolumn = "1"
                local builtin = require("statuscol.builtin")
                require("statuscol").setup({
                        relculright = true,
                        bt_ingore   = { "nofile", "Outline" },
                        segments    = {
                                {
                                        text  = { builtin.lnumfunc, " " },
                                        click = "v:lua.ScLa",
                                },
                                { text = { "%s" }, click = "v:lua.ScSa" },
                                {
                                        text = { builtin.foldfunc, " " },
                                        click = "v:lua.ScFa",
                                },
                        },
                })
        end,
}
