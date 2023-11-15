local opt = vim.opt -- for conciseness

-- line numbers 
opt.relativenumber = true -- show relative number
opt.number = true -- shows absolute line number on cursor line (when relative is on)

-- tab & indentation
opt.tabstop = 4 -- spaces for tabs (prettier default)
opt.shiftwidth = 2 -- space for indent
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from line when starting new one 

-- line wrapping 
opt.wrap = true -- disable line wrapping

-- search settings 
opt.ignorecase = true -- ignore case when searching 
opt.smartcase = true -- if you include mixed case in search, assumes you want case-sensitive 

-- cursor line 
opt.cursorline = true -- highlights the current line 

-- apperance 

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace 
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split window 
opt.splitright = true
opt.splitbelow = true

-- turn off swapfile 
opt.swapfile = false
