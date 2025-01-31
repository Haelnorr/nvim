return {
	"nvim-telescope/telescope.nvim",

	tag = "0.1.5",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		require("telescope").setup({
			defaults = { layout_strategy = "vertical" },
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>tf", builtin.find_files, { desc = "Find files" })
		vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Find git files" })
		vim.keymap.set("n", "<leader>tw", function()
			local word = vim.fn.expand("<cword>")
			builtin.grep_string({ search = word })
		end, { desc = "Search files with <cword>" })
		vim.keymap.set("n", "<leader>tW", function()
			local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ search = word })
		end, { desc = "Search files with <cWORD>" })
		vim.keymap.set("n", "<leader>tg", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end, { desc = "Search files with grep" })
		vim.keymap.set("n", "<leader>th", builtin.help_tags, { desc = "Search help tags" })
	end,
}
