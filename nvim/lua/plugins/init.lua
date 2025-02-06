return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    event = { "BufNewFile", "BufReadPre" },
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  -- file managing , picker etc
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      return require "configs.nvimtree"
    end,
  },

  -- git stuff
  {
    "lewis6991/gitsigns.nvim",
    event = "User FilePost",
    opts = function()
      return require "nvchad.configs.gitsigns"
    end,
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufWritePre", "BufNewFile" },
    config = function()
      require "configs.treesitter"
    end,
  },

  -- mason
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    dependencies = { "williamboman/mason-lspconfig", "WhoIsSethDaniel/mason-tool-installer.nvim" },
    config = function()
      require "configs.mason"
    end,
  },

  -- lint
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.lint"
    end,
  },

  -- mason-conform
  {
    "zapling/mason-conform.nvim",
    event = "VeryLazy",
    dependencies = { "conform.nvim" },
    config = function()
      require "configs.mason-conform"
    end,
  },
}
