return {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
        require('themery').setup {
            themes = {
                {
                    colorscheme = 'solarized-osaka',
                    name = 'Osaka',
                    before = [[
                    local osaka = require('solarized-osaka')
                    osaka.setup({
                        transparent = true,
                        styles = {
                            floats = 'transparent',
                            sidebars = 'transparent',
                            comments = { italic = true },
                            keywords = { italic = false },
                            functions = { italic = false },
                            variables = { italic = false },
                        },
                    })
                ]],
                },
                {
                    colorscheme = 'catppuccin',
                    name = 'Catppuccin',
                    before = [[
                        local cat = require('catppuccin')
                        cat.setup({
                        transparent_background = true,
                        })
                ]],
                },
                {
                    colorscheme = 'tokyonight-night',
                    name = 'Tokyonight',
                    before = [[
                    local tokyo = require('tokyonight')
                    tokyo.setup({
                        transparent = true,
                        styles = {
                            sidebars = 'transparent',
                            floats = 'transparent',
                            comments = { italic = true },
                            keywords = { italic = true },
                        },
                    })
                ]],
                },
                { colorscheme = 'nightfly', name = 'Nightfly' },
                {
                    colorscheme = 'cyberdream',
                    name = 'Cyberdream',
                    before = [[
                        local dream = require('cyberdream')
                        dream.setup({
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
                        })
                    ]],
                },
            },
            livePreview = true,
        }
    end,
}
