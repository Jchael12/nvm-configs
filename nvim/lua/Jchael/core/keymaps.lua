vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

-- general keymaps 
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n",  "nzzzv")
keymap.set("n", "N",  "Nzzzv")

keymap.set("i", "kj", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")
keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("n", "<leader>v", "<C-w>v") -- split window vertically 
keymap.set("n", "<leader>h", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split window equal width
keymap.set("n", "<leader>x", ":close<CR>") -- close current split window 


keymap.set("n", "<leader>tt", ":tabnew<CR>") -- open new tab  
keymap.set("n", "<leader>ct", ":tabclose<CR>") -- close current tab  
keymap.set("n", "<TAB>", ":tabn<CR>") -- go to next tab   
keymap.set("n", "<leader>p", ":tabp<CR>") -- go to previous tab

--move different windows 

keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "s<left>", "<C-w>h")
keymap.set("", "s<right>", "<C-w>l")
keymap.set("", "s<up>", "<C-w>k")
keymap.set("", "s<down>", "<C-w>j")
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

--- plugins keymaps 

keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- vim maximizer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- nvim tree 

-- Floaterm keymaps 
keymap.set("n", "<leader>ftn", ":FloatermNew<CR>")
keymap.set("t", "<leader>ftn", "<C-\\><C-n>:FloatermNew<CR>")
keymap.set("n", "<leader>pft", ":FloatermPrev<CR>")
keymap.set("t", "<leader>pft", "<C-\\><C-n>:FloatermPrev<CR>")
keymap.set("n", "<leader>nft", ":FloatermNext<CR>")
keymap.set("t", "<leader>nft", "<C-\\><C-n>:FloatermNext<CR>")
keymap.set("t", "<leader>ft", "<C-\\><C-n>:FloatermToggle<CR>")
keymap.set("n", "<leader>ft", ":FloatermToggle<CR>")

-- telescope 

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
