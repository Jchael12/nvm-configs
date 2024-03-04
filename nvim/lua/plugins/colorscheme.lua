return {{
  -- "craftzdog/solarized-osaka.nvim",
  -- lazy = true,
  -- priority = 1000,
  -- opts = function()
  --   return {
  --     transparent = true,
  --     terminal_colors = true,
  --     styles = {
  --       comments = { italic = true},
  --       keywords = { italic = true},
  --       functions = {},
  --       varibles = {},
  --       -- this can be set as transparent, dark , normal
  --       sidebars = "transparent",
  --       floats = "dark"
  --     },
  --     sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  --     day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  --     hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  --     dim_inactive = false, -- dims inactive windows
  --     lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
  --
  --     --- You can override specific color groups to use other groups or a hex color
  --     --- function will be called with a ColorScheme table
  --     ---@param colors ColorScheme
  --     on_colors = function(colors) end,
  --
  --     --- You can override specific highlights to use other groups or a hex color
  --     --- function will be called with a Highlights and ColorScheme table
  --     ---@param highlights Highlights
  --     ---@param colors ColorScheme
  --     on_highlights = function(highlights, colors) end,
  --   }
  -- end


  -- "folke/tokyonight.nvim",
  -- lazy = true,
  -- priority = 1000,
  -- opts = function ()
  --   return {
  --     style = 'moon',
  --     transparent = true,
  --     terminal_colors = true,
  --     styles = {
  --       -- Style to be applied to different syntax groups
  --       -- Value is any valid attr-list value for `:help nvim_set_hl`
  --       comments = { italic = true },
  --       keywords = { italic = true },
  --       functions = {},
  --       variables = {},
  --       -- Background styles. Can be "dark", "transparent" or "normal"
  --       sidebars = "transparent", -- style for sidebars, see below
  --       floats = "transparent", -- style for floating windows
  --     }
  --   }
  -- end

  -- embark theme
  -- "genzyy/embark-lua.nvim",
  -- name = "embark",
  -- lazy = true,
  -- priority = 1000,
  -- config = function()
  -- end
  --
  -- catppuccin theme
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       flavour = "mocha", -- latte, frappe, macchiato, mocha
--       background = { -- :h background
--         light = "latte",
--         dark = "mocha",
--       },
--       transparent_background = true, -- disables setting the background color.
--       show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--       term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
--       dim_inactive = {
--         enabled = false, -- dims the background color of inactive window
--         shade = "dark",
--         percentage = 0.15, -- percentage of the shade to apply to the inactive window
--       },
--       no_italic = false, -- Force no italic
--       no_bold = false, -- Force no bold
--       no_underline = false, -- Force no underline
--       styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--         comments = { "italic" }, -- Change the style of comments
--         conditionals = { "italic" },
--         loops = {},
--         functions = { "bold" },
--         keywords = { "bold" },
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {"bold"},
--         operators = {},
--       },
--       color_overrides = {},
--       custom_highlights = {},
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         treesitter = true,
--         notify = true,
--         dashboard = true,
--         mason = true,
--         mini = {
--           enabled = true,
--           indentscope_color = "",
--         },
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--       },
--     })
--
-- -- setup must be called before loading
-- vim.cmd.colorscheme "catppuccin"
--    end

  -- "nobbmaestro/nvim-andromeda",
  -- lazy = true,
  -- priority = 1000,
  -- branch = "development",
  -- dependencies = {'tjdevries/colorbuddy.nvim', branch = 'dev'},
  -- opts = function()
  --   require('andromeda').setup({
  --     transparent_bg = true,
  --     preset = "andromeda",
  --     colors = {
  --       background = "#23262e",
  --       mono_1     = "#2f323c", -- secondary background and/or highlighting
  --       mono_2     = "#3a3e4b", -- used for highlighting
  --       mono_3     = "#464959", -- used for highlighting
  --       mono_4     = "#606064",
  --       mono_5     = "#a0a1a7", -- comments
  --       mono_6     = "#d5ced9", -- normal txt
  --     },
  --     styles = {
  --       italic = true,
  --       bold = true,
  --       underline = true,
  --       undercurl = true,
  --     }
  --   })
  -- end
  --
  --
  -- "samharju/synthweave.nvim",
  -- lazy = true, -- make sure we load this during startup if it is your main colorscheme
  -- priority = 1000,
  -- config = function()
  -- end
  --
  --
  --
  --
  "olimorris/onedarkpro.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    require('onedarkpro').setup({
      styles = {
        comments = 'italic',
        variables = 'italic',
      },
      plugins = {
        all = true
      },
      options = {
        transparency = true,
        terminal_colors = true
      }
    })
  end
}}

