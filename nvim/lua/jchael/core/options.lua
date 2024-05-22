vim.cmd('let g:netrw_liststyle = 3')

local opt = vim.opt

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.relativenumber = true
opt.number = true

-- tabs & indents
opt.tabstop = 2 -- set 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- set 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one 

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching 
opt.smartcase  = true -- mixed case

-- cursorline
opt.cursorline = true

-- termguicolors
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"


-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

--clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom