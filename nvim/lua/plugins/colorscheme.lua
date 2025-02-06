return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("solarized-osaka").setup({
        transparent = true,
        styles = {
          floats = "transparent",
          sidebars = "transparent",
          comments = { italic = true },
          keywords = { italic = false },
          functions = { italic = false },
          variables = { italic = false },
        },
      })
      -- vim.cmd [[colorscheme solarized-osaka]]
    end,
    --
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        colors_overrides = {
          mocha = {
            base = "#09111d",
            text = "#7c94e9",
            subtext1 = "#7bc274",
            subtext0 = "#c8daf4",
            overlay2 = "#c8daf4",
            overlay1 = "#7bc274",
            overlay0 = "#020c23",
            surface2 = "#7bc274",
            surface1 = "#7bc274",
            surface0 = "#020c23",
            mantle = "#020c23",
            crust = "#020c23",
          },
        },
      })
      -- vim.cmd [[colorscheme catppuccin]]
    end,
    --
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000,
    config = function()
      local g = vim.g
      g.nightflyTransparent = true
      g.nightflyUnderlineMatchParen = true
      -- vim.cmd [[colorscheme nightfly]]
    end,
    --
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("tokyonight").setup({
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
          comments = { italic = true },
          keywords = { italic = true },
        },
      })
      -- vim.cmd [[colorscheme tokyonight-night]]
    end,
    --
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        transparent = true,
        italic_comments = true,
        hide_fillchars = "",
        borderless_telescrope = {
          border = true,
          style = "flat",
        },
        terminal_colors = true,
        theme = {
          variant = "auto",
        },
      })
      -- vim.cmd.colorscheme 'cyberdream'
    end,

    "0xstepit/flow.nvim",
    lazy = false,
    priority = 1000,
    tag = "vX.0.0",
    opts = {},

    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
  },
}
