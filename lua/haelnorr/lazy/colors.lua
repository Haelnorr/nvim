return {
    "catppuccin/nvim",
    config = function()
        require("catppuccin").setup({
            integrations = {
                gitsigns = true,
                treesitter = true,
                harpoon = true,
                mason = true,
                cmp = true,
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                        ok = { "italic" },
                    },
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                        ok = { "underline" },
                    },
                    inlay_hints = {
                        background = true,
                    },
                },
                fidget = true,
                telescope = {
                    enabled = true,
                },
                lsp_trouble = true,
            },
        })
        vim.cmd('colorscheme catppuccin-mocha')
    end,
}
