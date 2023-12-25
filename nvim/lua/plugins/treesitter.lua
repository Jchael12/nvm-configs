return {{
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "astro",
      "cmake",
      "cpp",
      "gitignore",
      "java",
      "http",
      "php",
      "scss",
      "sql"
    },
  },
  config = function (_, opts)
 require("nvim-treesitter.configs").setup(opts)

  -- MDX
    vim.filetype.add({
      extension = {
        mdx = "mdx",
      },
    })
    vim.treesitter.language.register("markdown", "mdx")
  end,
}}
