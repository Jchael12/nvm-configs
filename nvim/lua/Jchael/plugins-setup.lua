-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)


-- lua functions that may plugins use

  -- plugins
  use('nvim-lua/plenary.nvim') -- plenary
  use("wbthomason/packer.nvim") -- plugin manager
  use('nvim-tree/nvim-web-devicons') -- file icons
  use('szw/vim-maximizer') -- window maximizer
  use("nvim-lualine/lualine.nvim") -- status line
  use("nvim-tree/nvim-tree.lua") -- files explorer
  use("numToStr/Comment.nvim")   -- commenting with gc
  use("voldikss/vim-floaterm") -- terminal plugin
  use("dart-lang/dart-vim-plugin") -- dart lsp 
  use("ThePrimeagen/vim-be-good") -- vim be good (vim exerciser)
  use("MunifTanjim/prettier.nvim") -- prettier for built-lsp client
  use("manzeloth/live-server") --live server 
  use {
    'svrana/neosolarized.nvim',
    requires = {'tjdevries/colorbuddy.nvim'}
  }
  use("akinsho/nvim-bufferline.lua") --tabs bufferline
  use {
    'goolord/alpha-nvim',
    config = function ()
      require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }
  use('norcalli/nvim-colorizer.lua') -- colorizer

  -- autocompletion  
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")

-- snippets 
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")
  
  -- configuring lsp servers
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }) -- enhanced lsp ui
  use("jose-elias-alvarez/typescript.nvim")
  use("onsails/lspkind.nvim")

-- managing & installing lsp servers, linters & formatters
  use{
    "williamboman/mason.nvim",
    run = ":MasonUpdate"
  }
  use("williamboman/mason.lspconfig.nvim")


-- formatting & linting 
  use("jose-elias-alvarez/null-ls.nvim")
  use("jayp0521/mason-null-ls.nvim")

-- fuzzy finder
  use({"nvim-telescope/telescope-fzf-native.nvim", run = "make" }) --dependency
  use({"nvim-telescope/telescope.nvim", branch = "0.1.x"}) --telescope nvim 

  -- essential plugins
  use("tpope/vim-surround")
  use("vim-scripts/ReplaceWithRegister")

-- treesitter 

  use({
    "nvim-treesitter/nvim-treesitter",
    run = function ()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
  })

-- auto tags 
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")

--gitsigns 
  use("lewis6991/gitsigns.nvim")
--git blame and browser
  use("dinhhuy258/git.nvim")

  -- coc nvim
  use({"neoclide/coc.nvim", branch = "release"})
  -- flutter-tools 
  use {
    'akinsho/flutter-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
  }
  if packer_bootstrap then
    require("packer").sync()
  end
end)
