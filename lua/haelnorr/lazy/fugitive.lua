return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>g", vim.cmd.Git, { desc = "Open Git fugitive" })

		local Haelnorr_Fugitive = vim.api.nvim_create_augroup("Haelnorr_Fugitive", {})

		local autocmd = vim.api.nvim_create_autocmd
		autocmd("BufWinEnter", {
			group = Haelnorr_Fugitive,
			pattern = "*",
			callback = function()
				if vim.bo.ft ~= "fugitive" then
					return
				end

				local bufnr = vim.api.nvim_get_current_buf()
				vim.keymap.set("n", "<leader>s", function()
					vim.cmd.Git("add -A")
				end, { buffer = bufnr, remap = false, desc = "Stage all files" })
				vim.keymap.set("n", "<leader>c", function()
					vim.cmd.Git("commit")
				end, { buffer = bufnr, remap = false, desc = "Commit" })
				vim.keymap.set("n", "<leader>p", function()
					vim.cmd.Git("push")
				end, { buffer = bufnr, remap = false, desc = "Push" })

				-- rebase always
				vim.keymap.set("n", "<leader>P", function()
					vim.cmd.Git({ "pull", "--rebase" })
				end, { buffer = bufnr, remap = false, desc = "Pull with rebase" })

				-- NOTE: It allows me to easily set the branch i am pushing and any tracking
				-- needed if i did not set the branch up correctly
				vim.keymap.set(
					"n",
					"<leader>t",
					":Git push -u origin ",
					{ buffer = bufnr, remap = false, desc = "Push and set origin" }
				)
			end,
		})

		vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
		vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
	end,
}
