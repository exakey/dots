return {
        cmd                 = { "vscode-css-language-server", "--stdio" },
        filetypes           = { "css", "scss", "less" },
        root_markers        = { "package.json" },
        init_options        = { provideFormatter = false },
        settings            = {
                css = {
                        lint = {
                                vendorPrefix        = "ignore", -- needed for scrollbars
                                duplicateProperties = "warning",
                                zeroUnits           = "warning",
                        },
                },
        },
        single_file_support = true,
}
