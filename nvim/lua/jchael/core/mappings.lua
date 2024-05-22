vim.g.mapleader = " "

local discipline = require('jchael.core.discipline')
discipline.cowboy()

local keymap = vim.keymap -- for conciseness
local key = keymap.set

key("i", "kj", "<ESC>", {desc = "Exit insert mode"})
key("n", "<leader>nh", ":nohl<CR>", {desc = "Clear search highlights"})

-- Increment / Decrement
key("n", "<leader>+", "<C-a>" , {desc = "increment number"})
key("n", "<leader>-", "<C-x>" , {desc = "decrement number"})

-- windows management
key("n", "sv", "<C-w>v", {desc = "split window vertically"})
key("n", "sh", "<C-w>s", {desc = "split window horizontally"})
key("n", "se", "<C-w>=", {desc = "split window horizontally"})
key("n", "sx", "<cmd>close<CR>", {desc = "close current split"})

-- move between splits
key("n", "<leader>sh", "<C-w>h", {desc = "move left"})
key("n", "<leader>sk", "<C-w>k", {desc = "move up"})
key("n", "<leader>sj", "<C-w>j", {desc = "move down"})
key("n", "<leader>sl", "<C-w>l", {desc = "move right"})

-- nvim-tree
key("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer"})
key("n", "<leader>f", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle File Explorer on Current File"})
key("n", "<leader>c", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse File Explorer"})
key("n", "<leader>r", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh File Explorer"})

-- telescope
key("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
key("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
key("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
key("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
key("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

-- auto session
key("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
key("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory

-- tab
key("n", "te", ":tabedit", {desc = "new tab"})
key("n", "<tab>", ":tabnext<Return>", {desc = "next tab"})
key("n", "<S-tab>", ":tabprev<Return>", {desc = "prev tab"})
