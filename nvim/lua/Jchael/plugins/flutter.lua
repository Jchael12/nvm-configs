return {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = function ()
    require("flutter-tools").setup{}
-- flutter nvim

    local keymap = vim.keymap
-- hover
keymap.set("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", {noremap = true, silent = true})
-- jump to definition
keymap.set("n", "<leader>gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
-- open code action using default lsp ui
keymap.set("n", "<leader>ca", "<Cmd>lua vim.lsp.buf.code_action()<CR>", {noremap = true, silent = true})
-- open code action for the selected visual range
keymap.set("v", "<leader>ca", "<Cmd>lua vim.lsp.buf.range_code_action()<CR>", {noremap = true, silent = true})
    end,
}
