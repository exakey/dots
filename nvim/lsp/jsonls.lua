return {
        cmd          = { "vscode-json-language-server", "--stdio" },
        filetypes    = { "json", "jsonc" },
        root_markers = {},
        init_options = {
                provideFormatter                = false,
                documentRangeFormattingProvider = false,
        },
        settings     = {},
}
