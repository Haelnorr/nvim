require("haelnorr.set")
require("haelnorr.remap")
require("haelnorr.lazy_init")

local augroup = vim.api.nvim_create_augroup
local HaelnorrGroup = augroup("Haelnorr", {})

local autocmd = vim.api.nvim_create_autocmd

function R(name)
	require("plenary.reload").reload_module(name)
end

autocmd("LspAttach", {
	group = HaelnorrGroup,
	callback = function(e)
		vim.keymap.set("n", "gd", function()
			vim.lsp.buf.definition()
		end, { buffer = e.buf, desc = "Goto definition" })
		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover()
		end, { buffer = e.buf, desc = "Display hover" })
		vim.keymap.set("n", "<leader>ls", function()
			vim.lsp.buf.workspace_symbol()
		end, { buffer = e.buf, desc = "Find symbol in workspace" })
		vim.keymap.set("n", "<leader>lf", function()
			vim.diagnostic.open_float()
		end, { buffer = e.buf, desc = "Show diagnostics" })
		vim.keymap.set("n", "<leader>la", function()
			vim.lsp.buf.code_action()
		end, { buffer = e.buf, desc = "Code action" })
		vim.keymap.set("n", "<leader>ls", function()
			vim.lsp.buf.references()
		end, { buffer = e.buf, desc = "List references to symbol" })
		vim.keymap.set("n", "<leader>lr", function()
			vim.lsp.buf.rename()
		end, { buffer = e.buf, desc = "Rename symbol" })
		vim.keymap.set("i", "<C-h>", function()
			vim.lsp.buf.signature_help()
		end, { buffer = e.buf, desc = "Display signature" })
		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_next()
		end, { buffer = e.buf, desc = "Next diagnostic" })
		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_prev()
		end, { buffer = e.buf, desc = "Prev diagnostic" })
	end,
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
