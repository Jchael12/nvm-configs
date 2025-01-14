require 'core.options' -- Load general options
require 'core.keymaps' -- Load general keymaps
require 'core.snippets' -- Custom code snippets

-- Set up the Lazy plugin manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Set up plugins
require('lazy').setup {
    spec = {
        require 'plugins.colorscheme',
        require 'plugins.neotree',
        require 'plugins.alpha',
        require 'plugins.lualine',
        require 'plugins.telescope',
        require 'plugins.treesitter',
        require 'plugins.lsp',
        require 'plugins.gitsigns',
        require 'plugins.autocompletion',
        require 'plugins.indent',
        require 'plugins.bufferline',
        require 'plugins.misc',
        require 'plugins.nonels',
        require 'plugins.showkeys',
        require 'plugins.rest',
        require 'plugins.copilot',
        require 'plugins.avante',
        require 'plugins.smear',
        require 'plugins.webdev',
        require 'plugins.themery',
    },
    checker = { enabled = true },
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
