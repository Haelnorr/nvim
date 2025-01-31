return {
	{
		"folke/trouble.nvim",
		opts = {},
		cmd = "Trouble",
		keys = {
			{
				"<leader>ot",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Toggle Diagnostics (Trouble)",
			},
			{
				"<leader>oq",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Toggle Quickfix List (Trouble)",
			},
		},
	},
}
