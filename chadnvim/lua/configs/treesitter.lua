local treesitter = {
  ensure_installed = {
    "c",
    "cpp",
    "javascript",
    "typescript",
    "sql",
    "gitignore",
    "tsx",
    "css",
    "html",
    "lua",
    "luadoc",
    "markdown",
    "printf",
    "python",
    "toml",
    "yaml",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(treesitter)
