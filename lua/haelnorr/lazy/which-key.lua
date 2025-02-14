return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
	config = function()
		local harpoon = require("harpoon")
		require("which-key").add({
			{ "<leader>t", group = "Telescope" },
			{ "<leader>o", group = "Open plugin", icon = { icon = "", color = "yellow" } },
			{ "<leader>r", group = "Refactoring", mode = { "n", "x" } },
			{ "<leader>v", group = "LSP Actions", icon = { icon = "󰅡" } },

			{ "<leader><leader>", group = "Reload Plugins", icon = { icon = "" } },
			{ "<leader><leader>w", "<cmd>Lazy reload which-key.nvim<CR>", desc = "Reload Which-key" },
			{
				"<leader><leader>s",
				"<cmd>source ~/.config/nvim/lua/haelnorr/snippets/lua.lua<CR>\
				<cmd>source ~/.config/nvim/lua/haelnorr/snippets/go.lua<CR>\
				<cmd>source ~/.config/nvim/lua/haelnorr/snippets/templ.lua<CR>\
                <cmd>Lazy reload LuaSnip<CR>",
				desc = "Reload LuaSnip",
			},
			{ "<leader><leader>l", "<cmd>LspRestart<CR>", desc = "Restart LSP" },
			{ "<leader><leader>c", "<cmd>Lazy reload conform.nvim<CR>", desc = "Reload Conform" },
			{ "<leader><leader>o", "<cmd>Lazy reload oil.nvim<CR>", desc = "Reload Oil" },
			{ "<leader><leader>b", "<cmd>Lazy reload bufferline.nvim<CR>", desc = "Reload Bufferline" },

			-- Harpoon
			-- Quick jumps and show list
			{
				"<A-e>",
				function()
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
			},
			{
				"<A-h>",
				function()
					harpoon:list():select(1)
				end,
			},
			{
				"<A-j>",
				function()
					harpoon:list():select(2)
				end,
			},
			{
				"<A-k>",
				function()
					harpoon:list():select(3)
				end,
			},
			{
				"<A-l>",
				function()
					harpoon:list():select(4)
				end,
			},

			-- Add files
			{
				"<leader>a",
				function()
					harpoon:list():add()
				end,
				desc = "Harpoon current file",
				mode = "n",
				icon = { icon = "󱡅", color = "blue" },
			},
			{
				"<leader><A-h>",
				function()
					harpoon:list():replace_at(1)
				end,
				desc = "Harpoon at file 1",
				mode = "n",
				icon = { icon = "󱡅", color = "blue" },
			},
			{
				"<leader><A-j>",
				function()
					harpoon:list():replace_at(2)
				end,
				desc = "Harpoon at file 2",
				mode = "n",
				icon = { icon = "󱡅", color = "blue" },
			},
			{
				"<leader><A-k>",
				function()
					harpoon:list():replace_at(3)
				end,
				desc = "Harpoon at file 3",
				mode = "n",
				icon = { icon = "󱡅", color = "blue" },
			},
			{
				"<leader><A-l>",
				function()
					harpoon:list():replace_at(4)
				end,
				desc = "Harpoon at file 4",
				mode = "n",
				icon = { icon = "󱡅", color = "blue" },
			},

			-- Custom binds

			{
				"<leader>y",
				[["+y]],
				desc = "Yank to system clipboard",
				mode = { "n", "v" },
				icon = { icon = "", color = "yellow" },
			},
			{
				"<leader>Y",
				[["+Y]],
				desc = "Yank line to system clipboard",
				mode = "n",
				icon = { icon = "", color = "yellow" },
			},

			{
				"<leader>p",
				[["_dP]],
				desc = "Paste over selection, preserving buffer",
				mode = "x",
				icon = { icon = "", color = "yellow" },
			},
			{
				"<leader>d",
				[["_d]],
				desc = "Delete, preserving buffer",
				mode = { "n", "v" },
				icon = { icon = "", color = "red" },
			},
			{
				"<leader>x",
				"<cmd>!chmod +x %<CR>",
				silent = true,
				desc = "Make file executable",
				icon = { icon = "", color = "red" },
			},

			-- Conform
			{
				"<leader>f",
				function()
					require("conform").format({ async = true })
				end,
				mode = "n",
				desc = "Format file",
				icon = { icon = "󰉼", color = "yellow" },
			},
		})
	end,
}
