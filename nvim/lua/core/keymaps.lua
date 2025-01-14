vim.g.mapleader = ' '

-- local util = require 'lazyvim.util'
local keymap = vim.keymap -- for conciseness
local key = keymap.set
local opts = { noremap = true, silent = true }

--toggle showkeys
key('n', '<leader>0', '<cmd>ShowkeysToggle<cr>', opts)

-- save file
key('n', '<C-s>', '<cmd> w <CR>', opts)

key('i', 'kj', '<ESC>', { desc = 'Exit insert mode' })
key('n', '<ESC>', ':nohl<CR>', { desc = 'Clear search highlights' })

-- Increment / Decrement
key('n', '<leader>+', '<C-a>', { desc = 'increment number' })
key('n', '<leader>-', '<C-x>', { desc = 'decrement number' })

-- Select all
key('n', '<C-a>', 'gg<S-v>G')

-- windows management
key('n', 'sv', ':vsplit<Return>', opts)
key('n', 'ss', ':split<Return>', opts)
key('n', 'sx', '<cmd>close<CR>', { desc = 'close current split' })

--toggle line wrap
key('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- move between splits
key('n', 'sh', '<C-w>h', { desc = 'move left' })
key('n', 'sk', '<C-w>k', { desc = 'move up' })
key('n', 'sj', '<C-w>j', { desc = 'move down' })
key('n', 'sl', '<C-w>l', { desc = 'move right' })

-- resize windows splits
key('n', '<C-w><left>', '<C-w><')
key('n', '<C-w><right>', '<C-w>>')
key('n', '<C-w><up>', '<C-w>+')
key('n', '<C-w><down>', '<C-w>-')

-- telescope
key('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Fuzzy find files in cwd' })
key('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>', { desc = 'Fuzzy find recent files' })
key('n', '<leader>fs', '<cmd>Telescope live_grep<cr>', { desc = 'Find string in cwd' })
key('n', '<leader>fc', '<cmd>Telescope grep_string<cr>', { desc = 'Find string under cursor in cwd' })
key('n', '<leader>ft', '<cmd>TodoTelescope<cr>', { desc = 'Find todos' })

--HACK:  diagnostic keymaps

-- show diagnostic
key('n', '<C-j>', function()
    vim.diagnostic.goto_next()
end, opts)
key('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
key('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- terminal
-- key('n', '<C-/>', function()
--     util.terminal(nil, { border = 'rounded' })
-- end, { desc = 'toggle terminal with border' })

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

-- Zen Mode
key('n', '<leader>z', '<cmd>ZenMode<cr>', { desc = 'Enable Zen Mode' })

-- Themery (theme switcher))
key('n', '<C-\\>', '<cmd> Themery <CR>', { desc = 'Theme Switcher' })
