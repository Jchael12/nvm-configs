-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local discipline = require('jchael.discipline')
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true}

keymap.set("i", "kj", "<ESC>")

-- Increment and Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backward
keymap.set("n", "db", "vb_d")
-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
-- Jump List
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New Tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split windows
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sl", "<C-w>l")

-- Resize windows
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- navigate through file up and down while the cursor remains at the middle of the screen
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "navigate downwards remains cursor at  the middle"})
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "navigate upwards remains cursor at  the middle"})

-- Float term
keymap.set("n", "<leader>nft", ":FloatermNew<CR>")
keymap.set("t", "<leader>cft", "<C-\\><C-n>:FloatermNew<CR>")
keymap.set("n", "<leader>pft", ":FloatermPrev<CR>")
keymap.set("t", "<leader>pft", "<C-\\><C-n>:FloatermPrev<CR>")
keymap.set("n", "<leader>nt", ":FloatermNext<CR>")
keymap.set("t", "<leader>nt", "<C-\\><C-n>:FloatermNext<CR>")
keymap.set("t", "<A-i>", "<C-\\><C-n>:FloatermToggle<CR>")
keymap.set("n", "<A-i>", ":FloatermToggle<CR>")

-- Diagnostic
keymap.set("n", "<C-j>", function ()
  vim.diagnostic.goto_next()
end, opts)
