return {
    {
        'craftzdog/solarized-osaka.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('solarized-osaka').setup {
                transparent = true,
                styles = {
                    floats = 'transparent',
                    sidebars = 'transparent',
                    comments = { italic = true },
                    keywords = { italic = false },
                    functions = { italic = false },
                    variables = { italic = false },
                },
            }
            -- vim.cmd [[colorscheme solarized-osaka]]
        end,
        --
        'catppuccin/nvim',
        name = 'catppuccin',
        lazy = false,
        priority = 1000,
        config = function()
            require('catppuccin').setup {
                transparent_background = true,
            }
            -- vim.cmd [[colorscheme catppuccin]]
        end,
        --
        'bluz71/vim-nightfly-colors',
        name = 'nightfly',
        lazy = false,
        priority = 1000,
        config = function()
            local g = vim.g
            g.nightflyTransparent = true
            g.nightflyUnderlineMatchParen = true
            -- vim.cmd [[colorscheme nightfly]]
        end,
        --
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require('tokyonight').setup {
                transparent = true,
                styles = {
                    sidebars = 'transparent',
                    floats = 'transparent',
                    comments = { italic = true },
                    keywords = { italic = true },
                },
            }
            -- vim.cmd [[colorscheme tokyonight-night]]
        end,
        --
        'scottmckendry/cyberdream.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('cyberdream').setup {
                transparent = true,
                italic_comments = true,
                hide_fillchars = '',
                borderless_telescrope = {
                    border = true,
                    style = 'flat',
                },
                terminal_colors = true,
                theme = {
                    variant = 'auto',
                },
            }
            -- vim.cmd.colorscheme 'cyberdream'
        end,
    },
}
