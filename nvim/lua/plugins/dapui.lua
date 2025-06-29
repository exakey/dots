return {
        "rcarriga/nvim-dap-ui",
        dependencies = { "nvim-neotest/nvim-nio", "mfussenegger/nvim-dap" },
        keys         = {
                -- { "<f8>", function() require("dap-view").toggle() end, desc = "󱂬 Toggle UI" },
                { "<f10>", function() require("dapui").toggle() end, desc = "󱂬 Toggle UI" },
                {
                        "<leader>db",
                        function() require("dapui").float_element("breakpoints", { enter = true }) end,
                        desc = " List breakpoints",
                },
                {
                        "<leader>de",
                        function() require("dapui").eval() end,
                        mode = { "n", "x" },
                        desc = " Eval under cursor",
                },
        },
        opts         = {
                controls = { enabled = false },
                mappings = {
                        expand = { "<Tab>", "<2-LeftMouse>" }, -- 2-LeftMouse = Double Click
                        open   = "<CR>",
                },
                floating = {
                        border = vim.g.borderStyle,
                },
                layouts  = {
                        {
                                position = "right",
                                size     = 50, -- = width
                                elements = {
                                        { id = "scopes", size = 0.8 },
                                        { id = "stacks", size = 0.2 },
                                },
                        },
                },
        },
        config       = function(_, opts)
                require("dapui").setup(opts)

                -- AUTO-CLOSE THE DAP-UI
                require("dap").listeners.after.disconnect.dapui = require("dapui").close
        end,
}
