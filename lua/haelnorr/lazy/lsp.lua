return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		{
			"L3MON4D3/LuaSnip",
			dependencies = {
				"rafamadriz/friendly-snippets",
				"benfowler/telescope-luasnip.nvim",
			},
			config = function(_, opts)
				if opts then
					require("luasnip").config.setup(opts)
				end
				vim.tbl_map(function(type)
					require("luasnip.loaders.from_" .. type).lazy_load()
					vim.keymap.set("n", "<leader>ts", "<cmd>Telescope luasnip<CR>", { desc = "Search Snippets" })
				end, { "vscode", "snipmate", "lua" })
			end,
		},
		"saadparwaiz1/cmp_luasnip",
		"j-hui/fidget.nvim",
	},

	config = function()
		local cmp = require("cmp")
		local cmp_lsp = require("cmp_nvim_lsp")
		local capabilities = vim.tbl_deep_extend(
			"force",
			{},
			vim.lsp.protocol.make_client_capabilities(),
			cmp_lsp.default_capabilities()
		)
		require("fidget").setup({})
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"bashls",
				"css_variables",
				"cssls",
				"cssmodules_ls",
				"docker_compose_language_service",
				"dockerls",
				"html",
				"jsonls",
				"pyright",
				"ts_ls",
			},
			handlers = {
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,

				["lua_ls"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.lua_ls.setup({
						capabilities = capabilities,
						settings = {
							Lua = {
								runtime = { version = "Lua 5.1" },
								diagnostics = {
									globals = { "vim", "it", "describe", "before_each", "after_each" },
								},
							},
						},
					})
				end,
			},
		})

		local cmp_select = { behavior = cmp.SelectBehavior.Select }

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping({
					i = function(fallback)
						if cmp.visible() and cmp.get_active_entry() then
							cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
						else
							fallback()
						end
					end,
					s = cmp.mapping.confirm({ select = true }),
					c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
				}),
			}),
			sources = cmp.config.sources({
				{ name = "luasnip" }, -- For luasnip users.
				{ name = "nvim_lsp" },
			}, {
				{ name = "buffer" },
			}),
		})

		vim.diagnostic.config({
			-- update_in_insert = true,
			float = {
				focusable = false,
				style = "minimal",
				border = "rounded",
				source = "always",
				header = "",
				prefix = "",
			},
			virtual_text = {
				prefix = "●",
			},
		})
	end,
}
