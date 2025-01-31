return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
		vim.keymap.set("n", "<leader>om", "<cmd>MarkdownPreviewToggle<CR>", { desc = "Toggle MarkdownPreview" })
	end,
	ft = { "markdown" },
}
