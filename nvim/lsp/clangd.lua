return {
        cmd          = {
                "clangd",
                "--background-index",
                "--clang-tidy",
                "--header-insertion=iwyu",
                "--completion-style=detailed",
                "--function-arg-placeholders",
                "--fallback-style=llvm",
                "--log=verbose",
        },
        filetypes    = {
                "c",
                "cpp",
                "objc",
                "objcpp",
                "cuda",
                "proto",
        },
        root_markers = {
                "build.ninja",
                ".clangd",
                "compile_commands.json",
                "compile_flags.txt",
                "config.h.in",
                "configure.ac",
                "configure.in",
                "Makefile",
                "meson.build",
                "meson_options.txt",
        },
        settings     = {
                clangd = {
                        InlayHints    = {
                                Designators    = true,
                                Enabled        = true,
                                ParameterNames = true,
                                DeducedTypes   = true,
                        },
                        fallbackFlags = { "-std=c++17" },
                },
        },
        capabilities = {
                offsetEncoding = { "utf-8", "utf-16" },
                textDocument   = {
                        completion = {
                                editsNearCursor = true,
                        },
                },
        },
}
