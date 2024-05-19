return {{
  "craftzdog/solarized-osaka.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = true,
      terminal_colors = true,
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = {},
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "transparent", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
      },
    }
  end

  -- "scottmckendry/cyberdream.nvim",
  -- lazy = true,
  -- priority = 1000,
  -- config = function()
  --   require("cyberdream").setup({
  --     -- Recommended - see "Configuring" below for more config options
  --     transparent = true,
  --     italic_comments = true,
  --     hide_fillchars = true,
  --     borderless_telescope = true,
  --     terminal_colors = true,
  --   })
  --   vim.cmd("colorscheme cyberdream") -- set the colorscheme
  -- end,
  --
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
  --         enabled = true, -- dims the background color of inactive window
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
  --         functions = {},
  --         keywords = {},
  --         strings = {},
  --         variables = {},
  --         numbers = {},
  --         booleans = {},
  --         properties = {},
  --         types = {},
  --         operators = {},
  --         -- miscs = {}, -- Uncomment to turn off hard-coded styles
  --       },
  --       color_overrides = {},
  --       custom_highlights = {},
  --       default_integrations = true,
  --       integrations = {
  --         cmp = true,
  --         gitsigns = true,
  --         nvimtree = true,
  --         treesitter = true,
  --         notify = false,
  --         alpha = true,
  --         bufferline = true,
  --         indent_blankline = {
  --           enabled = true,
  --           scope_color = "lavender",
  --           colored_indent_levels = false
  --         },
  --         mason = true,
  --         neotree = true,
  --         dashboard = true,
  --         noice = true,
  --         semantic_tokens = true,
  --         ts_rainbow = true,
  --         rainbow_delimiters = true,
  --         telescope = {
  --           enabled = true,
  --           style = "classic" -- nvchad | classic
  --         },
  --         native_lsp = {
  --           enabled = true,
  --           virtual_text = {
  --             errors = {"italic"},
  --             hints = {"italic"},
  --             warnings = {"italic"},
  --             information = {"italic"}
  --           },
  --           underlines = {
  --             errors = {"underline"},
  --             hints = {"underline"},
  --             warnings = {"underline"},
  --             information = {"underline"},
  --           },
  --           inlay_hints = {
  --             background = true
  --           }
  --         },
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
  --   end
}}
