return {
	"sindrets/diffview.nvim",
	config = function()
		require("diffview").setup({
			vim.keymap.set("n", "<leader>vo", "<cmd>DiffviewOpen<CR>", { desc = "Open Diffview" }),
			vim.keymap.set("n", "<leader>vc", "<cmd>DiffviewClose<CR>", { desc = "Close Diffview" }),
			vim.keymap.set("n", "<leader>vf", "<cmd>DiffviewToggleFiles<CR>", { desc = "Toggle File pane" }),
		})
	end,
}
