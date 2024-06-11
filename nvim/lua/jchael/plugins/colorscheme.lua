return {
	{
		-- "bluz71/vim-nightfly-colors",
		-- name = "nightfly",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	local g = vim.g
		-- 	g.nightflyTransparent = true
		-- 	g.nightflyTerminalColors = true
		-- 	g.nightflyCursorColor = true
		-- 	vim.cmd("colorscheme nightfly")
		-- end,
		--
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
			})
			vim.cmd("colorscheme catppuccin")
		end,
		--
		-- "craftzdog/solarized-osaka.nvim",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	require("solarized-osaka").setup({
		-- 		transparent = true,
		-- 		terminal_colors = true,
		-- 		styles = {
		-- 			sidebars = "dark",
		-- 			floats = "dark",
		-- 			keywords = { italic = false },
		-- 		},
		-- 	})
		-- 	vim.cmd([[colorscheme solarized-osaka]])
		-- end,
		--
		-- "scottmckendry/cyberdream.nvim",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	require("cyberdream").setup({
		-- 		transparent = true,
		-- 		italic_comments = true,
		-- 		hide_fillchars = true,
		-- 	})
		-- 	vim.cmd("colorscheme cyberdream")
		-- end,

		-- "pauchiner/pastelnight.nvim",
		-- lazy = false,
		-- priority = 1000,
		-- opts = {},
		--
		-- "shawilly/ponokai",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	local g = vim.g
		-- 	g.ponokai_enable_italic = "1"
		-- 	g.ponokai_transparent_background = true
		-- 	g.ponokai_style = "kitty"
		-- 	vim.cmd("colorscheme ponokai")
		-- end,
	},
}
