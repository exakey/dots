return {
        enabled = false,
        "chrisgrieser/nvim-origami",
        event  = "VeryLazy",
        init   = function()
                vim.opt.foldlevel      = 99
                vim.opt.foldlevelstart = 99
        end,
        opts   = {},
        config = function()
                require("origami").setup({
                        useLspFoldsWithTreesitterFallback = true,
                        autoFold                          = {
                                enabled = true,
                                kinds   = { "region", "comment", "region" }, ---@type lsp.FoldingRangeKind[]
                        },
                        foldtext                          = {
                                enabled     = true,
                                lineCount   = { template = "   %d lines", hlgroup = "Visual" },
                                diagnostics = { enabled = true },
                        },
                        pauseFoldsOnSearch                = true,
                        foldKeymaps                       = { setup = true, hOnlyOpensOnFirstColumn = false },

                })
        end
}
