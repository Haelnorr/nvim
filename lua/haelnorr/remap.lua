vim.g.mapleader = " "
-- directory viewer
-- has been replaced with Oil.nvim, keybind "-"
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlighted lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- pastes without replacing buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yanks to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- deletes without replacing buffer
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- formats file using LSP
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("", "<leader>f", function()
	require("conform").format({ async = true }, function(err)
		if not err then
			local mode = vim.api.nvim_get_mode().mode
			if vim.startswith(string.lower(mode), "v") then
				vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
			end
		end
	end)
end, { desc = "Format code" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>o", "o<Esc>k")

vim.keymap.set("n", "<C-Q>", function()
	if vim.inspect(vim.opt.colorcolumn:get()) == "{}" then
		vim.opt.colorcolumn = "80"
	else
		vim.opt.colorcolumn = ""
	end
end)
