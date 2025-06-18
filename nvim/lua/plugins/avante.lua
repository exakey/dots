return {
        "yetone/avante.nvim",
        enabled      = false,
        event        = "VeryLazy",
        version      = false,
        build        = "make",
        dependencies = {
                "nvim-treesitter/nvim-treesitter",
                "stevearc/dressing.nvim",
                "nvim-lua/plenary.nvim",
                "MunifTanjim/nui.nvim",
                --- The below dependencies are optional,
                "echasnovski/mini.pick",
                "nvim-telescope/telescope.nvim",
                "hrsh7th/nvim-cmp",
                "ibhagwan/fzf-lua",
                "nvim-tree/nvim-web-devicons",
                "zbirenbaum/copilot.lua",
                {
                        "HakonHarnes/img-clip.nvim",
                        event = "VeryLazy",
                        opts  = {
                                default = {
                                        embed_image_as_base64 = false,
                                        prompt_for_file_name  = false,
                                        use_absolute_path     = true,
                                        drag_and_drop         = { insert_mode = true },
                                },
                        },
                },
                {
                        'MeanderingProgrammer/render-markdown.nvim',
                        opts = { file_types = { "markdown", "Avante" } },
                        ft   = { "markdown", "Avante" },
                },
        },
        opts         = {
                provider = "ollama",
                ollama   = {
                        endpoint      = "http://127.0.0.1:11434",
                        model         = "deepsek-r1:1.5b",
                        disable_tools = true
                },
                windows  = {
                        sidebar_header = {
                                rounded = false
                        },
                        edit           = {
                                border = "single"
                        },
                        ask            = {
                                start_insert = false,
                                border       = "single"
                        }
                }
        },
}
