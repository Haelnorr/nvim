return {
	"folke/todo-comments.nvim",
	event = "VimEnter",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {},
	config = function()
		require("todo-comments").setup()
		vim.keymap.set("n", "<leader>tt", "<cmd>TodoTelescope<CR>", { desc = "Search Todos" })
	end,
}
