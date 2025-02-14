return {
	"catppuccin/nvim",
	config = function()
		require("catppuccin").setup({
			integrations = {
				aerial = true,
				cmp = true,
				fidget = true,
				gitsigns = true,
				harpoon = true,
				mason = true,
				lsp_trouble = true,
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
				nvim_surround = true,
				telescope = {
					enabled = true,
				},
				treesitter = true,
				which_key = true,
			},
		})
		vim.cmd("colorscheme catppuccin-mocha")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,
}
