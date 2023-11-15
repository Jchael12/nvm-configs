vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

--- general keymaps ---

keymap.set("i", "kj", "<ESC>")

-- clear search highlights
keymap.set("n", "<ESC>", ":nohl<CR>", { desc = "Clear search highlights" })

-- save
keymap.set("n", "<C-s>", "<cmd> w <CR>", { desc = "save file" })

-- copy all
keymap.set("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "copy whole file" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split window vertically" })                    -- split window vertically
keymap.set("n", "<leader>h", "<C-w>s", { desc = "Split window horizontally" })                  -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })                    -- make split windows equal width & height
keymap.set("n", "<leader>x", "<cmd>close<CR>", { desc = "Close current split" })                -- close current split window

keymap.set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "Open new tab" })                     -- open new tab
keymap.set("n", "<leader>ct", "<cmd>tabclose<CR>", { desc = "Close current tab" })              -- close current tab
keymap.set("n", "<tab>", "<cmd>tabn<CR>", { desc = "Go to next tab" })                          --  go to next tab
keymap.set("n", "<S-tab>", "<cmd>tabp<CR>", { desc = "Go to previous tab" })                    --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- navigate through file up and down remaining the cursors at the middle of the file
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "navigate downwards remains cursor at the middle" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "navigate upwards remains cursor at the middle" })

-- floaterm nvim
keymap.set("n", "<leader>nft", ":FloatermNew<CR>")
keymap.set("t", "<leader>cft", "<C-\\><C-n>:FloatermNew<CR>")
keymap.set("n", "<leader>pft", ":FloatermPrev<CR>")
keymap.set("t", "<leader>pft", "<C-\\><C-n>:FloatermPrev<CR>")
keymap.set("n", "<leader>nt", ":FloatermNext<CR>")
keymap.set("t", "<leader>nt", "<C-\\><C-n>:FloatermNext<CR>")
keymap.set("t", "<A-i>", "<C-\\><C-n>:FloatermToggle<CR>")
keymap.set("n", "<A-i>", ":FloatermToggle<CR>")

