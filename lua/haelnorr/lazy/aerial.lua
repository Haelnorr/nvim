return {
	"stevearc/aerial.nvim",
	opts = {},
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("aerial").setup({
			on_attach = function(bufnr)
				vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
				vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
			end,
			layout = {
				default_direction = "prefer_left",
				min_width = 30,
				width = nil,
				max_width = { 40, 0.2 },
				preserve_equality = true,
			},
			filter_kind = {
				"Class",
				"Constructor",
				"Enum",
				"Function",
				"Interface",
				"Module",
				"Method",
			},
		})
		vim.keymap.set("n", "<leader>pa", "<cmd>AerialToggle!<CR>")
	end,
}
