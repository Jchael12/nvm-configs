-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "

local util = require("lazyvim.util")
local keymap = vim.keymap -- for conciseness
local key = keymap.set
local opts = { noremap = true, silent = true }

key("i", "kj", "<ESC>", { desc = "Exit insert mode" })
key("n", "<ESC>", ":nohl<CR>", { desc = "Clear search highlights" })

-- Increment / Decrement
key("n", "<leader>+", "<C-a>", { desc = "increment number" })
key("n", "<leader>-", "<C-x>", { desc = "decrement number" })

-- Select all
key("n", "<C-a>", "gg<S-v>G")

-- windows management
key("n", "sv", ":vsplit<Return>", opts)
key("n", "ss", ":split<Return>", opts)
key("n", "sx", "<cmd>close<CR>", { desc = "close current split" })

-- move between splits
key("n", "sh", "<C-w>h", { desc = "move left" })
key("n", "sk", "<C-w>k", { desc = "move up" })
key("n", "sj", "<C-w>j", { desc = "move down" })
key("n", "sl", "<C-w>l", { desc = "move right" })

-- resize windows splits
key("n", "<C-w><left>", "<C-w><")
key("n", "<C-w><right>", "<C-w>>")
key("n", "<C-w><up>", "<C-w>+")
key("n", "<C-w><down>", "<C-w>-")

-- telescope
key("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
key("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
key("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
key("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
key("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

-- diagnostic
key("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- tab
key("n", "te", ":tabedit", { desc = "new tab" })
key("n", "<tab>", ":tabnext<Return>", { desc = "next tab" })
key("n", "<S-tab>", ":tabprev<Return>", { desc = "prev tab" })

-- -- terminal
key("n", "<C-_>", function()
  util.terminal(nil, { border = "rounded" })
end, { desc = "toggle terminal with border" })

-- Twilight Plugin
key("n", "<leader>t", "<cmd>Twilight<cr>", { desc = "Enable Twilight" })

key("n", "<leader>z", "<cmd>ZenMode<cr>", { desc = "Enable Zen Mode" })
