require "nvchad.options"

-- add yours here!

local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true
o.number = true
o.hlsearch = true
o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.backup = false
o.showcmd = true
o.laststatus = 3
o.shell = "pwsh"
o.splitkeep = "cursor"
o.conceallevel = 1

-- tabs and indentation
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true
o.smartindent = true
o.wrap = false

-- search settings
o.ignorecase = true
o.smartcase = true

o.cursorline = true

-- turn on termguicolors for tokyonight to works
o.termguicolors = true
o.background = "dark"
o.signcolumn = "yes"

-- backspace
o.backspace = "indent,eol,start"

-- clipboard
o.clipboard = "unnamedplus"

-- split windows
o.splitright = true
o.splitbelow = true

-- turn of swap files
o.swapfile = false

