return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"catppuccin/nvim",
	},
	config = function()
		local mocha = require("catppuccin.palettes").get_palette("mocha")
		local function get_path()
			local filepath = vim.api.nvim_buf_get_name(0)
			local parent = vim.fn.fnamemodify(filepath, ":h:t")
			local filename = vim.fn.fnamemodify(filepath, ":t")
			if parent == "" then
				return ""
			end

			local grandparent = vim.fn.fnamemodify(filepath, ":h:h")
			local prefix = grandparent ~= "" and ".." or ""

			return prefix .. "/" .. parent .. "/" .. filename
		end
		require("lualine").setup({
			options = {
				theme = "catppuccin",
				component_separators = { left = "|", right = "|" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff" },
				lualine_c = {
					{
						get_path,
						color = { bg = mocha.surface2 },
						separator = { right = "" },
					},
				},
				lualine_x = { "diagnostics" },
				lualine_y = {
					{
						"filetype",
						color = { bg = mocha.flamingo, fg = mocha.crust },
					},
				},
				lualine_z = {
					{
						"location",
						color = { bg = mocha.maroon },
					},
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { get_path },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
