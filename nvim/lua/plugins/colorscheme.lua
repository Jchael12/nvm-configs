return {
  {
    -- "craftzdog/solarized-osaka.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   require("solarized-osaka").setup({
    --     transparent = true,
    --     styles = {
    --       floats = "transparent",
    --       sidebars = "transparent",
    --       comments = { italic = true },
    --       keywords = { italic = false },
    --       functions = { italic = false },
    --       variables = { italic = false },
    --     },
    --   })
    -- end,
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
    --"yorumicolors/yorumi.nvim",
    --lazy = false,
    --priority = 1000,
    --
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
        comments = { italic = true },
        keywords = { italic = true },
      },
    },
    --
    -- {
    --   "cdmill/neomodern.nvim",
    --   lazy = false,
    --   priority = 1000,
    --   config = function()
    --     require("neomodern").setup({
    --       style = "roseprime",
    --       transparent = true,
    --     })
    --     require("neomodern").load()
    --   end,
    -- },
  },
}
