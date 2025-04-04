local opt = vim.opt

vim.g.mapleader = ' '

opt.relativenumber = true
opt.number = true
opt.hlsearch = true
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.backup = false
opt.showcmd = true
opt.laststatus = 3
opt.shell = 'pwsh'
opt.splitkeep = 'cursor'
opt.conceallevel = 1

-- add asterisk in comments
opt.formatoptions:append { 'r' }

-- tabs and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

-- turn on termguicolors for tokyonight to works
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'

-- backspace
opt.backspace = 'indent,eol,start'

-- clipboard
opt.clipboard:append 'unnamedplus'

-- split windows
opt.splitright = true
opt.splitbelow = true

-- turn of swap files
opt.swapfile = false

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

vim.cmd [[au BufNewFile,BufRead *.astro setf astro]]
vim.cmd [[au BufNewFile,BufRead Podfile setf ruby]]

if vim.fn.has 'nvim-0.8' == 1 then
    vim.opt.cmdheight = 0
end
