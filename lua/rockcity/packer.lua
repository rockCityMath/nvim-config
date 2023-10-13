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
  -- use({ 'rose-pine/neovim', as = 'rose-pine' })
  -- vim.cmd('colorscheme rose-pine')

  -- use {'nyoom-engineering/oxocarbon.nvim'}
  -- use {'B4mbus/oxocarbon-lua.nvim'}
  use { "ellisonleao/gruvbox.nvim" }
  -- use {'alexanderbluhm/black.nvim', as = 'black'}


  use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
    }
  end
}


  -- Small Plugins
  -- use('jlcrochet/vim-razor')
  -- use('stevearc/aerial.nvim') BROKEN RN
  use('simrat39/symbols-outline.nvim')
  use('jose-elias-alvarez/null-ls.nvim')
  use('windwp/nvim-autopairs')
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use("nvim-treesitter/nvim-treesitter-context");
  use("tmsvg/pear-tree")
  use('ray-x/lsp_signature.nvim')
  use {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require("nvim-tree").setup {}
  end
    }
  use('nvim-tree/nvim-web-devicons')
  use ('tpope/vim-commentary')

  use {'neoclide/coc.nvim', branch = 'release'}
  -- use {'adamclerk/vim-razor'}
  use {'sheerun/vim-polyglot'}

  -- LSP Zero
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
	  -- LSP Support
	  {'williamboman/mason.nvim'},           -- Optional
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},         -- Required
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

  use {'neovim/nvim-lspconfig',
  config = function()
    require('lspconfig').tsserver.setup{
      root_dir = require('lspconfig.util').root_pattern('.git')
    }
  end
    }

end)
