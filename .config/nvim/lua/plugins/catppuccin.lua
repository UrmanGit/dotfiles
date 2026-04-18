return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			integrations = {
				cmp = true,
				mason = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
			},
			custom_highlights = function(colors)
				return {
					CmpPmenu = { bg = colors.mantle },

					PmenuSel = { bg = colors.surface0, fg = colors.blue, bold = true },

					CmpBorder = { fg = colors.blue, bg = colors.base },

					CmpItemAbbrDeprecated = { fg = colors.overlay0, style = { "strikethrough" } },
					CmpItemAbbrMatch = { fg = colors.blue, style = { "bold" } },

					NormalFloat = { bg = colors.mantle },
					FloatBorder = { fg = colors.blue, bg = colors.base },
				}
			end,
		})

		-- Załadowanie motywu
		vim.cmd.colorscheme("catppuccin")
	end,
}
