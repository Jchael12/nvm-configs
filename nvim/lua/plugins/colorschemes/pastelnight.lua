return {{
-- "pauchiner/pastelnight.nvim",
-- lazy = false,
-- priority = 1000,
-- config = function()
--   vim.api.nvim_command([[colorscheme pastelnight]])
-- end,

   -- "nobbmaestro/nvim-andromeda",
   -- lazy = false,
   -- priority = 1000,
   -- dependencies = {"tjdevries/colorbuddy.nvim", branch = "dev"},
   -- config = function()
   --    require('andromeda').setup({
   --      preset= "andromeda",
   --      colors = {
   --          background = "#23262e",
   --          primary = "#00e8c6",
   --          secondary = "#ff00aa",
   --          mono_1     = "#2f323c", -- secondary background and/or highlighting
   --          mono_2     = "#3a3e4b", -- used for highlighting
   --          mono_3     = "#464959", -- used for highlighting
   --          mono_4     = "#606064",
   --          mono_5     = "#a0a1a7", -- comments
   --          mono_6     = "#d5ced9", -- normal text
   --        },
   --      transparent_bg = true,
   --      styles = {
   --          italic = true,
   --          bold = true,
   --          underline = true,
   --          undercurl = true,
   --      }
   --    })
   --    vim.cmd("colorscheme andromeda")
   -- end

-- "scottmckendry/cyberdream.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--       require("cyberdream").setup({
--           -- Recommended - see "Configuring" below for more config options
--           transparent = true,
--           italic_comments = true,
--           hide_fillchars = true,
--           borderless_telescope = true,
--           terminal_colors = true,
--       })
--       vim.cmd("colorscheme cyberdream") -- set the colorscheme
--   end,
--
-- "craftzdog/solarized-osaka.nvim",
-- priority = 1000,
-- lazy = false,
-- config = function ()
--   require("solarized-osaka").setup({
--     transparent = true,
--     terminal_colors = true
--   })
--   vim.cmd("colorscheme solarized-osaka")
-- end
--
-- "rose-pine/neovim",
-- name = "rose-pine",
-- priority = 1000,
-- lazy = false,
-- config = function()
-- require("rose-pine").setup({
-- variant = "main",
-- dark_variant = "main",
-- dim_inactive_windows = false,
-- extend_background_behind_borders = false,
-- enable = {
-- terminal = true,
-- legacy_highlights = true,
-- migrations = true,
-- },
-- styles = {
-- transparency = true
-- }
-- })
-- vim.cmd("colorscheme rose-pine")
-- end

-- "catppuccin/nvim",
-- name = "catppuccin",
-- priority = 1000,
-- lazy = false,
-- config = function ()
-- require('catppuccin').setup({
-- flavour =  "mocha",
-- transparent_background = true,
-- show_end_buffer = false,
-- term_colors = true,
-- dim_inactive = {
-- enabled = true,
-- shade = "dark",
-- percentage = 0.15,
-- }
-- })
-- vim.cmd("colorscheme catppuccin")
-- end
--
  "bluz71/vim-nightfly-colors",
  name = "nightfly",
  lazy = false,
  priority = 1000,
  config = function ()
    local g = vim.g
    g.nightflyTransparent = true
    g.nightflyTerminalColors = true
    g.nightflyCursorColor = true
    vim.cmd("colorscheme nightfly")
  end
}}
