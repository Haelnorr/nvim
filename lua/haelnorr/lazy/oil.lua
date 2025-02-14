return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			watch_for_changes = true,
			view_options = {
				show_hidden = true,
				is_always_hidden = function(name, bufnr)
					if name:match("^%.%.") then
						return true
					end
					if name:match("_templ%.go$") or name:match("_templ%.txt$") then
						return true
					end
					return false
				end,
			},
		})
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}
