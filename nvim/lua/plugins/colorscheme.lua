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
    end,
    --
    -- catppuccin original
    -- "catppuccin/nvim",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   require("catppuccin").setup({
    --     transparent_background = true,
    --   })
    -- end,
    --
    -- "scottmckendry/cyberdream.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   require("cyberdream").setup({
    --     transparent = true,
    --     hide_fillchars = true,
    --     borderless_telescope = { border = true, style = "flat" },
    --     terminal_colors = true,
    --     theme = {
    --       variant = "auto",
    --     },
    --     extensions = {
    --       telescope = true,
    --     },
    --   })
    -- end,
    --
    -- "bluz71/vim-nightfly-colors",
    -- name = "nightfly",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   local g = vim.g
    --   g.nightflyTransparent = true
    -- end,
    --
    -- "olimorris/onedarkpro.nvim",
    -- lazy = false,
    -- priority = 1000, -- Ensure it loads first
    -- config = function()
    --   require("onedarkpro").setup({
    --     options = {
    --       cursorline = true, -- Use cursorline highlighting?
    --       transparency = true, -- Use a transparent background?
    --       terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
    --       lualine_transparency = true, -- Center bar transparency?
    --       highlight_inactive_windows = true, -- When the window is out of focus, change the normal background?
    --     },
    --   })
    --   vim.cmd("colorscheme ondark vivid")
    -- end,
    --
    -- "shawilly/ponokai",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   vim.g.sonokai_enable_italic = false
    --   vim.g.ponokai_transparent_background = 2
    --   vim.g.ponokai_style = "kitty"
    --   vim.cmd.colorscheme("ponokai")
    -- end,
    --
    --
    -- "Everblush/nvim",
    -- name = "everblush",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   require("everblush").setup({
    --     transparent_background = true,
    --     nvim_tree = {
    --       contrast = true,
    --     },
    --   })
    -- end,
  },
}
