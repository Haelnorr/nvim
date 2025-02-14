vim.g.mapleader = " "

-- move highlighted lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Quickfix next" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Quickfix prev" })

vim.keymap.set("n", "<leader>q", "<cmd>bw<CR>", { desc = "Close file" })

vim.keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Find and replace word" }
)

vim.keymap.set("n", "<C-Q>", function()
	if vim.inspect(vim.opt.colorcolumn:get()) == "{}" then
		vim.opt.colorcolumn = "80"
	else
		vim.opt.colorcolumn = ""
	end
end)
