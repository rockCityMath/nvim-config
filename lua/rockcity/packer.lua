-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Install by running :PackerSync
-- Usually have to add a config in the after/plugins folder
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('sharkdp/fd')

  -- Rose Pine Theme
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  vim.cmd('colorscheme rose-pine')

  -- Tokyonight Theme
  -- use({'folke/tokyonight.nvim', as = 'tokyonight'})
  -- vim.cmd('colorscheme tokyonight-moon')

  -- Which key
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
      }
    end
  }

  -- Function List
  use('stevearc/aerial.nvim')

  -- Interfacing with LSP
  use('jose-elias-alvarez/null-ls.nvim')

  -- Autocomplete pairs
  use('windwp/nvim-autopairs')

  -- Treesitter
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Quick file navigation
  use('theprimeagen/harpoon')

  -- Undo history as a navigable tree
  use('mbbill/undotree')

  -- In-nvim git actions
  use('tpope/vim-fugitive')

  -- Show current function as you scroll down
  use("nvim-treesitter/nvim-treesitter-context");

  -- Another autocomplete pairs plugin..
  use("tmsvg/pear-tree")

  -- Have LSP show function signature
  use('ray-x/lsp_signature.nvim')

  -- Navigate filesystem as tree
  use {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require("nvim-tree").setup {}
  end
    }

  -- Icons for nvim-tree
  use('nvim-tree/nvim-web-devicons')

  -- Comment out selected lines
  use ('tpope/vim-commentary')

  -- Handles boilerplate of adding nvim-cmp (autocompletion) and nvim-lspconfig (LSP configs for various languages)
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {

	  -- LSP Support
	  {'neovim/nvim-lspconfig'},             -- Required (LSP configs for various languages)
	  {'williamboman/mason.nvim'},           -- Optional (Install language servers in GUI)
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional (Something to support mason)

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},         -- Required (Autocompletion)
	  {'hrsh7th/cmp-nvim-lsp'},     -- Required
	  {'hrsh7th/cmp-buffer'},       -- Optional
	  {'hrsh7th/cmp-path'},         -- Optional
	  {'saadparwaiz1/cmp_luasnip'}, -- Optional
	  {'hrsh7th/cmp-nvim-lua'},     -- Optional

	  -- Snippets
	  {'L3MON4D3/LuaSnip'},             -- Required
	  {'rafamadriz/friendly-snippets'}, -- Optional
  }
  }

end)
