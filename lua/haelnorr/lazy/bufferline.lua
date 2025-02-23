return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"catppuccin/nvim",
	},
	config = function()
		vim.opt.termguicolors = true
		local bufferline = require("bufferline")
		local mocha = require("catppuccin.palettes").get_palette("mocha")
		bufferline.setup({
			options = {
				always_show_bufferline = true,
				numbers = function(opts)
					return opts.raise(opts.ordinal)
				end,
				show_buffer_icons = false,
			},
			highlights = require("catppuccin.groups.integrations.bufferline").get({
				styles = { "italic", "bold" },
				custom = {
					all = {
						fill = { bg = mocha.base },
					},
					mocha = {
						background = { fg = mocha.text },
					},
				},
			}),
		})
	end,
}
