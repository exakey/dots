return {
        cmd          = { "pyright-langserver", "--stdio" },
        filetypes    = { "python" },
        root_markers = { "pyproject.toml" },
        settings     = {
                pyright             = {
                        disableOrganizeImports = true,
                        strict                 = true,
                },
                python              = {
                        analysis = {
                                autoImportCompletions = true,
                                autoSearchPaths       = false,
                                diagnosticMode        = "openFilesOnly",
                                typeCheckingMode      = "basic",
                        },
                },
                single_file_support = true,
        },
}
