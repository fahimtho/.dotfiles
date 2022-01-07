-- Startup
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(
  function()

-- Packer itself
  use {
    'wbthomason/packer.nvim',
     auto_clean = true,
     auto_reload_compiled = true,
     display = {
      non_interactive = false,
      open_fn  = nil,
      open_cmd = '65vnew \\[packer\\]',
      working_sym = '',
      error_sym = '✗',
      done_sym = '✓',
      removed_sym = '-',
      moved_sym = '→',
      header_sym = '━',
      show_all_info = false,
      prompt_border = 'single',
      keybindings = {
        quit = 'q',
        toggle_info = '<CR>',
        diff = 'd',
        prompt_revert = 'r',
      },
    },
  }

-- Have packer use a popup window
local status_ok, packer = pcall(require, "packer")
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Misc
require "plugins.misc"

-- Live Preview HTML & CSS
  use {
    'turbio/bracey.vim',
    opt = true,
    ft = {'html' , 'css'},
  }

-- Live Preview Markdown
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && yarn install',
    opt = true,
    ft = {'markdown'},
  }

-- for Latex files
  use {
    'lervag/vimtex',
    opt  = true ,
    ft = {'tex'},
  }

-- taylor Treesitter
  use {
  'nvim-treesitter/playground',
  opt = true,
  cmd = {'TSHighlightCapturesUnderCursor'},
  }

-- Help With tags
  use {
  'windwp/nvim-ts-autotag',
  opt = true,
  ft = {'html', 'css', 'javascript'},
  }

-- Run Commands in qf
  use {
  'skywind3000/asyncrun.vim',
  opt = true,
  ft = {'c' , 'cpp' , 'sh' , 'python' , 'go' , 'javascript' , 'typescript' , 'julia' , 'rust' , 'haskell' , 'arduino'},
  cmd = {'AsyncRun'}
  }

-- Fuzzy Find
  use({
    'nvim-telescope/telescope.nvim',
    cmd = {'Telescope'},
    requires = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require "plugins.telescope"
    end
  })

-- Snippet For only Latex Note taking
  use {
  'sirver/ultisnips',
   opt = true ,
   ft = {'tex'},
  }

-- Show Code Outline Symbols
  use {
  'liuchengxu/vista.vim',
  opt = true,
  cmd = {'Vista'},
  }

-- Format Code
  use {
  'sbdchd/neoformat',
  opt = true,
  cmd = {'Neoformat'},
  }

-- Run parts of code
  use {
  'michaelb/sniprun',
  opt = true,
  cmd = {'SnipRun'},
  run = 'bash ./install.sh',
  config = function()
    require'sniprun'.setup({
  selected_interpreters = {},
  repl_enable = {},
  repl_disable = {},
  interpreter_options = {
    GFM_original = {
      use_on_filetypes = {"markdown.pandoc"}
    }
  },
  display = {
    "NvimNotify",
  },
  show_no_output = {
    "Classic",
    "TempFloatingWindow",
  },
  inline_messages = 0,
  borders = 'single'
    })
  end
  }

-- Paste Images Quick
use {
  'ekickx/clipboard-image.nvim',
  opt = true,
  ft = {'tex','markdown'},
  config = function()
    require'clipboard-image'.setup {
      default = {
        img_dir = "img",
        img_dir_txt = "img",
        img_name = function ()
          vim.fn.inputsave()
          local name = vim.fn.input('Name: ')
          vim.fn.inputrestore()

          if name == nil or name == '' then
            return os.date('%y-%m-%d-%H-%M-%S')
          end
          return name
        end,
        affix = "%s"
      },
      markdown = {
        affix = "![](%s)"
    }
  }
end
}

-- Show Problems in Code
use {
  'folke/trouble.nvim',
  opt = true,
  cmd = {'TroubleToggle'},
  config = function()
    require("trouble").setup {
      position = "bottom",
      height = 10,
      icons = true,
      mode = "document_diagnostics",
      fold_open = "",
      fold_closed = "",
      padding = true,
      indent_lines = false,
      auto_close = false,
      auto_preview = true,
      auto_fold = false,
    }
    end
  }

-- Code Complete
use {
  'hrsh7th/nvim-cmp',
  event = "InsertEnter",
  config = function()
      require "plugins.cmp"
  end
}

-- icons for cmp
use {
  'onsails/lspkind-nvim',
  event = 'InsertEnter'
}

-- snippet for cmp
use {
  'dcampos/cmp-snippy',
  event = 'BufReadPost'
}

-- Surround Stuff
use {
  'blackCauldron7/surround.nvim',
  event = 'InsertEnter',
  config = function()
    require "plugins.surround"
  end
}

-- Smart Commenting
use {
  'numToStr/Comment.nvim',
  event = 'InsertEnter',
  config = function()
    require "plugins.comment"
  end
}

-- Color Preview
use {
  'norcalli/nvim-colorizer.lua',
  event = 'BufReadPre',
  config = function()
    require'colorizer'.setup()
  end
}

-- File Nav
use {
  'kyazdani42/nvim-tree.lua',
  opt = true,
  cmd = {'NvimTreeToggle'},
  config = function()
    require "plugins.nvim-tree"
  end
}

-- fancy notifications
use {
  'rcarriga/nvim-notify',
  opt = true,
  cmd = {'SnipRun'},
  config = function()
    require "plugins.notify"
  end
}

-- Autocomplete Pairs
use {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = function()
    require "plugins.pairs"
  end
}

-- Floating Terminal
use {
  'voldikss/vim-floaterm',
  opt = true,
  cmd = {'FloatermToggle','FloatermNew','FloatermKill'}
}

-- Peek Lsp things
use {
  'rmagatti/goto-preview',
  event = 'InsertLeave',
  config = function()
    require "plugins.goto-preview"
  end
}

-- Peek Lines
use {
  'nacro90/numb.nvim',
  event = 'InsertEnter',
  config = function()
    require('numb').setup()
  end
}

-- Git
use {
  'lewis6991/gitsigns.nvim',
  cmd = {'Gitsigns'},
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require "plugins.git"
  end
}

-- Smart Encrement or decrement
use {
  'monaqa/dial.nvim',
  config = function()
    require "plugins.dial"
  end
}

-- Unix helper
use {
  'tpope/vim-eunuch',
  opt = true,
  cmd = {'Delete','Unlink','Move','Rename','Chmod','Mkdir','Cfind','Clocate','SudoWrite','SudoEdit'}
}

-- Select treesitter Unit
use {
  'David-Kunz/treesitter-unit',
  event = 'InsertLeave'
}

-- Treesitter Abstraction Layer
use {
  'nvim-treesitter/nvim-treesitter',
  config = function()
    require "plugins.treesitter"
  end
}

-- Show Code Context using treesitter
use {
  "SmiteshP/nvim-gps",
  config = function()
    require "plugins.gps"
  end
}

-- Snippets backend and snippets
use {
  'honza/vim-snippets',
  event = 'InsertEnter'
}

use {
  'dcampos/nvim-snippy',
  event = 'InsertEnter'
}

-- Separate cut and paste
use {
  "gbprod/cutlass.nvim",
  event = 'InsertLeave',
  config = function()
    require("cutlass").setup({
        cut_key = "m"
    })
  end
}

-- CP Helper
use {
  'p00f/cphelper.nvim',
  opt = true,
  cmd = {'CphReceive','CphTest','CphRetest','CphEdit','CphDelete'}
}

-- Nice search
use {
  'rktjmp/highlight-current-n.nvim',
  config = function()
  require("highlight_current_n").setup({
    highlight_group = "Visual"
  })
end
}

-- markdown Preview
use {
  "ellisonleao/glow.nvim",
  opt = true,
  ft = {'markdown'},
  cmd = {'Glow'}
}

-- Buffters & tabs
use {
  'akinsho/bufferline.nvim',
  config = function ()
    require "plugins.bufferline"
  end
}

-- Inject lsp from non lsp
use {
  'jose-elias-alvarez/null-ls.nvim',
  config = function ()
    require "plugins.null"
  end
}

-- Format QuickFix
use {
  'https://gitlab.com/yorickpeterse/nvim-pqf.git',
  config = function ()
    require "plugins.pqf"
  end
}

-- Tex Symbols
use {
  'kdheepak/cmp-latex-symbols',
  ft = {'tex'}
}

-- Clean
use {
  "McAuleyPenney/tidy.nvim",
  event = "BufWritePre"
}

-- Plugins Without Lazy loading
use 'folke/tokyonight.nvim' -- Colorscheme
use 'kyazdani42/nvim-web-devicons' -- icons
use 'windwp/windline.nvim' -- Statusline
use 'neovim/nvim-lspconfig' -- Neovim Language Server protocol
use 'lewis6991/impatient.nvim' -- Start Quickly
use "nathom/filetype.nvim" -- Filetype Faster
use 'hrsh7th/cmp-nvim-lsp' -- cmp lsp source
use 'andymass/vim-matchup' -- enhance %
end)
