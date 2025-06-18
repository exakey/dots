return {
        "OXY2DEV/markview.nvim",
        enabled = true,
        lazy    = false,
        opts    = {
                markdown = {
                        tables = {
                                enable = true,
                                parts  = {
                                        top          = { "┌", "─", "┐", "┬" },
                                        header       = { "│", "│", "│" },
                                        separator    = { "├", "─", "┤", "┼" },
                                        row          = { "│", "│", "│" },
                                        bottom       = { "└", "─", "┘", "┴" },
                                        overlap      = { "┝", "━", "┥", "┿" },
                                        align_left   = "╼",
                                        align_right  = "╾",
                                        align_center = { "╴", "╶" }
                                },
                        }
                }
        }
}
