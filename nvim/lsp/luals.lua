return {
        cmd                 = { "lua-language-server", "--force-accept-workspace" },
        filetypes           = { "lua" },
        root_markers        = {
                ".luarc.json",
                ".luarc.jsonc",
                ".luacheckrc",
                ".stylua.toml",
                "stylua.toml",
                "selene.toml",
                "selene.yml",
        },
        settings            = {
                Lua = {
                        diagnostics = {
                                disable        = { "trailing-space", "unused-function", "lowercase-global" },
                                workspaceEvent = "OnSave",
                        },
                        hint        = { enable = true, setType = true, arrayIndex = "Auto", semicolon = "Disable" },
                        format      = { enable = true },
                        semantic    = {
                                enable   = false,
                                -- keyword  = true,
                                variable = false,
                        },
                        completion  = {
                                callSnippet    = "Replace", -- functions -> no replace snippet
                                keywordSnippet = "Replace", -- keywords -> replace
                                showWord       = "Enable",  -- already done by completion plugin
                                workspaceWord  = true,      -- already done by completion plugin
                                postfix        = "@",       -- useful for `table.insert` and the like
                        },
                        -- FIX: https://github.com/sumneko/lua-language-server/issues/679#issuecomment-925524834
                        workspace   = {
                                checkThirdParty = false,
                                library         = {
                                        vim.fn.globpath(vim.o.runtimepath, "love2d/library"),
                                        -- vim.env.VIMRUNTIME,
                                        -- vim.fn.stdpath("config"),
                                        -- "${3rd}/luv/library",
                                        -- "${3rd}/busted/library",
                                        -- "$HOME/.local/share/nvim/lazy/",
                                },
                        },
                },
        },
        single_file_support = true,
}
