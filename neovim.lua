return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#1e2028",
                bg_dark = "#1e2028",
                bg_highlight = "#8b909e",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#f7f8fa",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#e8e9ed",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#8b909e",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#b54a5a",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#b54a5a",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#c9a96e",
                -- green: Comments, strings, success states, git additions
                green = "#b54a5a",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#7a8fad",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#d45c7a",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#d45c7a",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#d45c7a",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
