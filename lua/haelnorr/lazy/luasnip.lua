return {
	"L3MON4D3/LuaSnip",
	dependencies = {
		"rafamadriz/friendly-snippets",
		"benfowler/telescope-luasnip.nvim",
	},
	opts = {
		history = true,
		updateevents = "TextChanged,TextChangedI",
	},
	config = function(_, opts)
		local ls = require("luasnip")
		if opts then
			ls.config.setup(opts)
		end
		vim.tbl_map(function(type)
			require("luasnip.loaders.from_" .. type).lazy_load()
			vim.keymap.set("n", "<leader>ts", "<cmd>Telescope luasnip<CR>", { desc = "Search Snippets" })
		end, { "vscode", "snipmate", "lua" })
		for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/haelnorr/snippets/*.lua", true)) do
			loadfile(ft_path)()
		end
		-- local lua_snippets = require("haelnorr.snippets.lua")
		-- ls.add_snippets("lua", lua_snippets)
		-- local go_snippets = require("haelnorr.snippets.go")
		-- ls.add_snippets("go", go_snippets)
		vim.keymap.set({ "i", "s" }, "<C-k>", function()
			if ls.expand_or_jumpable() then
				ls.expand_or_jump()
			end
		end)
		vim.keymap.set({ "i", "s" }, "<C-j>", function()
			if ls.jumpable(-1) then
				ls.jump(-1)
			end
		end)
		vim.keymap.set("i", "<C-l>", function()
			if ls.choice_active() then
				ls.change_choice(1)
			end
		end)
	end,
}
