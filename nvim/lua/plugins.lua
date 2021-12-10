-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(

  function()

-- Packer can manage itself
use 'wbthomason/packer.nvim'

  -- for Latex files
  use {
    'lervag/vimtex',
    ft = {'tex'},
  }

  use {
    'mbbill/undotree',
     opt = true,
     cmd = {'UndotreeToggle'},
  }

  -- Live Preview HTML & CSS
  use {
    'turbio/bracey.vim',
    ft = {'html' , 'css'},
  }

  -- Live Preview Markdown
  use {
    'iamcco/markdown-preview.nvim',
    ft = {'markdown'},
  }

use 'wakatime/vim-wakatime' -- Keep Track of time

use 'liuchengxu/vista.vim' -- code outline

use 'lewis6991/gitsigns.nvim' -- show change in a git file

use 'aperezdc/vim-template' -- Templates reduce labour

use 'blackCauldron7/surround.nvim' -- Surround stuff

use 'nvim-treesitter/nvim-treesitter' -- Abstraction layer

use 'David-Kunz/treesitter-unit' -- Select a code unit

use 'norcalli/nvim-colorizer.lua' -- Highlight colors

use 'folke/tokyonight.nvim' -- Theme

use 'numToStr/Comment.nvim' -- Comment stuff out

use 'McAuleyPenney/tidy.nvim' -- Keep Code tidy

use 'gennaro-tedesco/nvim-peekup' -- Whats in Registeres

use 'akinsho/bufferline.nvim' -- Tabline

use 'lukas-reineke/indent-blankline.nvim' -- Show Indent

use 'rktjmp/highlight-current-n.nvim' -- highlight current search match

use 'kosayoda/nvim-lightbulb' -- Show code Actions

use 'kyazdani42/nvim-tree.lua' -- File nav

use 'neovim/nvim-lspconfig' -- LSP Server

use 'skywind3000/asyncrun.vim' -- Run Commands nicely

use 'kyazdani42/nvim-web-devicons' -- icons

use 'folke/trouble.nvim' -- Show probs in code

use 'tpope/vim-eunuch' -- Linux Commands in nvim

use 'nvim-lua/plenary.nvim' -- req

use 'nvim-telescope/telescope.nvim' -- Fuzzy Finder

use 'sbdchd/neoformat' -- Format code

use 'onsails/lspkind-nvim' -- cmp icons

use 'L3MON4D3/LuaSnip' -- req

use 'saadparwaiz1/cmp_luasnip' --req

use 'hrsh7th/nvim-cmp' -- Auto Complete

use 'hrsh7th/cmp-path' -- cmp source for paths

use 'hrsh7th/cmp-nvim-lsp' -- cmp source for lsp

use 'hrsh7th/cmp-calc' -- cmp source for calc

use 'kdheepak/cmp-latex-symbols' -- cmp source for latex symbols

use 'https://gitlab.com/yorickpeterse/nvim-pqf.git' -- fix quickfix

use 'nacro90/numb.nvim' -- peek lines

use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- Fzf for telescope

use 'weilbith/nvim-code-action-menu' -- Code action menu

use 'voldikss/vim-floaterm' -- Cool Terminal

use {
	"SmiteshP/nvim-gps", -- Show Code Context
	requires = "nvim-treesitter/nvim-treesitter"
}

use 'tamton-aquib/staline.nvim' -- Statusline

use 'nvim-treesitter/playground' -- taylor Treesitter

use 'rmagatti/goto-preview' -- Dont Have to change buffer

use 'ekickx/clipboard-image.nvim' -- Save images

use 'junegunn/goyo.vim' -- for writing

use 'notomo/cmdbuf.nvim' -- Comandline window

use 'windwp/nvim-autopairs' -- Puncuation

use 'windwp/nvim-ts-autotag' -- Autocomplete tags for html,css

use {
  'VonHeikemen/searchbox.nvim', -- Cool Search
  requires = {
    {'MunifTanjim/nui.nvim'}
  }
}

end)
