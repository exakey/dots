return {
        "christoomey/vim-tmux-navigator",
        enabled = false,
        cmd = {
                "TmuxNavigateLeft",
                "TmuxNavigateDown",
                "TmuxNavigateUp",
                "TmuxNavigateRight",
                "TmuxNavigatePrevious",
                "TmuxNavigatorProcessList",
        },
        -- vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>"),
        -- vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>"),
        -- vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>"),
        -- vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>"),
        -- vim.keymap.set("n", "<C-\\>", ":TmuxNavigatePrevious<CR>"),
}
