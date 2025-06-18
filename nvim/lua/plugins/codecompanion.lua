return {
        "olimorris/codecompanion.nvim",
        enabled      = false,
        event        = "VeryLazy",
        dependencies = {
                "nvim-lua/plenary.nvim",
                "nvim-treesitter/nvim-treesitter",
        },
        opts         = {
                strategies = {
                        chat   = {
                                adapter = "deepseek",
                        },
                        inline = {
                                adapter = "deepseek",
                        },
                },
                adapters = {
                        deepseek = function()
                                return require("codecompanion.adapters").extend("ollama", {
                                        name   = "deepseek",
                                        schema = {
                                                model = {
                                                        default = "deepsek-r1:1.5b",
                                                },
                                        },
                                })
                        end,
                },
        },
}
