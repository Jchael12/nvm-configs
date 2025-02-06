local mason = require "mason"
local mason_lspconfig = require "mason-lspconfig"
local mason_tool_installer = require "mason-tool-installer"

mason.setup {
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
}

mason_lspconfig.setup {
  ensured_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "svelte",
    "lua_ls",
    "graphql",
    "emmet_ls",
    "prismals",
    "pyright",
  },
}

mason_tool_installer.setup {
  ensured_installed = {
    "prettier",
    "stylua",
    "isor",
    "black",
    "eslint_d",
  },
}
