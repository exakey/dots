return {
        cmd          = { "bash-language-server", "start" },
        filetypes    = { "bash", "sh", "zsh" },
        root_markers = {},
        settings     = {
                bashIde = {
                        includeAllWorkspaceSymbols = true,
                        globPattern                = "**/*@(.sh|.bash)",
                        shellcheckArguments        = "--shell=bash",
                },
        },
}
