return {
        "folke/lazydev.nvim",
        enabled      = false,
        ft           = "lua",
        opts         = {
                library = {
                        { path = vim.env.LAZY_STDPATH },
                        { path = vim.fn.stdpath("config") .. "nvim" },
                        "lazy.nvim",
                        "LazyVim",
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
        },
        integrations = {
                lspconfig = true
        },
}
