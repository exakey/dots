------------------------------------------------------------------------------------------------------------------------
-- TOGGLE FORMAT

vim.api.nvim_create_user_command("ToggleFormat", function()
        vim.g.autoformat = not vim.g.autoformat
        vim.notify(string.format("%s formatting...", vim.g.autoformat and "Enabling" or "Disabling"), vim.log.levels
                .INFO)
end, { desc = "Toggle conform.nvim auto-formatting", nargs = 0 })

------------------------------------------------------------------------------------------------------------------------
-- TOGGLE INLAY HINTS

vim.api.nvim_create_user_command("ToggleInlayHints", function()
        vim.g.inlay_hints = not vim.g.inlay_hints
        vim.notify(string.format("%s inlay hints...", vim.g.inlay_hints and "Enabling" or "Disabling"),
                vim.log.levels.INFO)

        local mode = vim.api.nvim_get_mode().mode
        vim.lsp.inlay_hint.enable(vim.g.inlay_hints and (mode == "n" or mode == "v"))
end, { desc = "Toggle inlay hints", nargs = 0 })

------------------------------------------------------------------------------------------------------------------------
-- SCRATCH BUFFER

vim.api.nvim_create_user_command("Scratch", function()
        vim.cmd "bel 10new"
        local buf = vim.api.nvim_get_current_buf()
        for name, value in pairs {
                filetype   = "scratch",
                buftype    = "nofile",
                bufhidden  = "wipe",
                swapfile   = false,
                modifiable = true,
        } do
                vim.api.nvim_set_option_value(name, value, { buf = buf })
        end
end, { desc = "Open a scratch buffer", nargs = 0 })

------------------------------------------------------------------------------------------------------------------------
-- DELETE COMMENTS

vim.api.nvim_buf_create_user_command(0, "DeleteComments", function()
        vim.cmd(("'<,'>g/%s/d"):format(vim.fn.escape(vim.fn.substitute(vim.o.commentstring, "%s", "", "g"), "/.*[]~")))
end, { range = true, desc = "Delete comments in the current buffer" })

------------------------------------------------------------------------------------------------------------------------
-- LSP CAPABILITIES

vim.api.nvim_create_user_command("LspCapabilities", function(ctx)
        local client = vim.lsp.get_clients({ name = ctx.args })[1]
        local newBuf = vim.api.nvim_create_buf(true, true)
        local info   = {
                capabilities        = client.capabilities,
                server_capabilities = client.server_capabilities,
                config              = client.config,
        }
        vim.api.nvim_buf_set_lines(newBuf, 0, -1, false, vim.split(vim.inspect(info), "\n"))
        vim.api.nvim_buf_set_name(newBuf, client.name .. " capabilities")
        vim.bo[newBuf].filetype = "lua" -- syntax highlighting
        vim.cmd.buffer(newBuf)          -- open
        vim.keymap.set("n", "q", vim.cmd.bdelete, { buffer = newBuf })
end, {
        nargs = 1,
        complete = function()
                return vim.iter(vim.lsp.get_clients { bufnr = 0 })
                    :map(function(client) return client.name end)
                    :totable()
        end,
})
