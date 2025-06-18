return {
        "michaelrommel/nvim-silicon",
        cmd  = "Silicon",
        main = "nvim-silicon",
        opts = {
                font               = "Monocraft",
                theme              = "Catppuccin Mocha",
                no_round_corner    = true,
                no_line_number     = true,
                no_window_controls = true,
                shadow_blur_radius = 0,
                to_clipboard       = false,
                tab_width          = 8,
                background         = "#11111b",
                language           = function() return vim.bo.filetype end,
                window_title       = function()
                        return vim.fn.fnamemodify(
                                vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()),
                                ":t"
                        )
                end,
                -- language = function()
                -- 	return vim.fn.fnamemodify(
                -- vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()),
                -- ":e"
                -- 	)
                -- end,
                line_offset        = function(args)
                        return args.line1
                end,
        }
}
