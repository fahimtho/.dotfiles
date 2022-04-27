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
      open_cmd = '50vnew \\[packer\\]',
      working_sym = '',
      error_sym = '✗',
      done_sym = '✓',
      removed_sym = '-',
      moved_sym = '→',
      header_sym = '━',
      show_all_info = false,
      prompt_border = 'rounded',
      keybindings = {
        quit = 'q',
        toggle_info = '<CR>',
        diff = 'd',
        prompt_revert = 'r',
      },
    },
  }

-- Packer Popup Window
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

-- Fuzzy Picker
  use({
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require "plugins.telescope"
    end
  })

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
      height = 20,
      width = 50,
      icons = true,
      mode = "workspace_diagnostics",
      fold_open = "",
      fold_closed = "",
      group = true,
      padding = true,
      indent_lines = true,
      auto_close = false,
      auto_preview = false,
      auto_fold = false,
      auto_open = false,
      signs = {
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = ""
      },
    }
    end
  }

-- Code Complete
use {
  'hrsh7th/nvim-cmp',
  config = function()
      require "plugins.cmp"
  end
}

-- Smart Commenting
use {
  'numToStr/Comment.nvim',
  event = 'BufEnter',
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
  cmd = {'NvimTreeToggle'},
  config = function()
    require "plugins.nvim-tree"
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

-- Peek Lsp things
use {
  'rmagatti/goto-preview',
  config = function()
    require "plugins.goto-preview"
  end
}

-- Unix helper
use {
  'tpope/vim-eunuch',
  opt = true,
  cmd = {'Delete','Unlink','Move','Rename','Chmod','Mkdir','Cfind','Clocate','SudoWrite','SudoEdit'}
}

-- Treesitter Abstraction Layer
use {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
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
-- Separate cut and paste
use {
  "gbprod/cutlass.nvim",
  config = function()
    require("cutlass").setup({
        cut_key = "m"
    })
  end
}

-- Nice search
use {
  'rktjmp/highlight-current-n.nvim',
  event = 'InsertLeave',
  config = function()
  require("highlight_current_n").setup({
    highlight_group = "Visual"
  })
end
}

-- Buffers & tabs
use {
  'akinsho/bufferline.nvim',
  config = function ()
    require "plugins.bufferline"
  end
}

-- Format QuickFix
use {
  'https://gitlab.com/yorickpeterse/nvim-pqf.git',
  ft = {"qf"},
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

-- Delete Buffer
use {
  'famiu/bufdelete.nvim',
  opt = true,
  cmd = {'Bdelete','Bwipeout'}
}

-- CP Helper
use {
	'xeluxee/competitest.nvim',
	requires = 'MunifTanjim/nui.nvim',
  cmd = {'CompetiTestAdd','CompetiTestEdit','CompetiTestDelete','CompetiTestRun','CompetiTestReceive','CompetiTestConvert','CompetiTestRunNE'},
	config = function() require'competitest'.setup() end
}

-- Highlight Fucntion args
use {
  'm-demare/hlargs.nvim',
  requires = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('hlargs').setup {
  color = "#004eff",
  excluded_filetypes = {},
  paint_arg_declarations = true,
  paint_arg_usages = true,
  hl_priority = 10000,
  performance = {
    parse_delay = 1,
    slow_parse_delay = 50,
    max_iterations = 400,
    max_concurrent_partial_parses = 30,
    debounce = {
      partial_parse = 3,
      partial_insert_mode = 100,
      total_parse = 700,
      slow_parse = 5000
        }
      }
    }
    end
  }

-- Nice Ui Search
use {
  'VonHeikemen/searchbox.nvim',
  cmd = {'SearchBoxMatchAll','SearchBoxIncSearch','SearchBoxSimple','SearchBoxReplace'},
  requires = {
    {'MunifTanjim/nui.nvim'}
  },
  config = function()
    require "plugins.search"
  end
}

-- stabilize Events
use {
	"luukvbaal/stabilize.nvim",
	config = function() require("stabilize").setup() end
}

-- Git
use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require "plugins.gitsigns"
  end
}

-- Debug
use {
  'mfussenegger/nvim-dap',
  config = function()
    require "plugins.dap"
  end
}

-- Dap UI
use {
  "rcarriga/nvim-dap-ui",
  requires = {"mfussenegger/nvim-dap"},
  config = function()
    require "plugins.dapui"
  end
}

-- Peek Lines
use {
  'nacro90/numb.nvim',
  config = function()
    require('numb').setup()
  end,
}

-- Code Action Menu
use {
  'weilbith/nvim-code-action-menu',
  opt = true,
  cmd = 'CodeActionMenu'
}

-- DAP Text
use {
  'theHamsta/nvim-dap-virtual-text',
  config = function ()
    require "plugins.dap-text"
  end
}

-- Statusbar
use {
  'windwp/windline.nvim',
  config = function()
    require "plugins.statusline"
  end
}

-- Neovim language Server
use {
  'neovim/nvim-lspconfig',
  config = function()
    require "plugins.lsp"
  end
}

-- Toggle chars
use {
  "saifulapm/chartoggle.nvim",
  config = function()
    require('chartoggle').setup ({
      leader = '<localleader>',
      keys = {',',';','[',']','(',')','{','}','.','"'}
    })
  end
}

-- Markdown
use {
  'iamcco/markdown-preview.nvim',
  run = 'cd app && yarn install',
  ft = {"markdown"}

}

-- Nice UI
use {
  'stevearc/dressing.nvim',
  config = function()
    require "plugins.ui"
  end
}

-- Buffer switcher
use {
  'matbme/JABS.nvim',
  cmd = {'JABSOpen'},
  config = function()
    require "plugins.jabs"
  end
}

-- Cool notifications
use {
  'rcarriga/nvim-notify',
  config = function()
    require "plugins.notify"
  end
}

-- git diff view
use {
  'sindrets/diffview.nvim',
  cmd = {'DiffviewOpen','DiffviewClose','DiffviewToggleFiles','DiffviewFocusFiles','DiffviewRefresh','DiffviewFileHistory'},
  config = function()
    require "plugins.diff"
  end
}

-- Telescope
use 'nvim-telescope/telescope-media-files.nvim' -- Media Files
use 'nvim-telescope/telescope-github.nvim' -- Github
use 'jvgrootveld/telescope-zoxide' -- File DB
use "nvim-telescope/telescope-file-browser.nvim" -- File Browser

-- Cmp
use 'hrsh7th/cmp-nvim-lsp' -- cmp lsp source
use 'dcampos/nvim-snippy' -- snippet manager
use 'dcampos/cmp-snippy' -- snippet for cmp
use 'onsails/lspkind-nvim' -- icons for menu
use 'honza/vim-snippets' -- Snippets
use 'hrsh7th/cmp-buffer' -- cmp buffer source
use "lukas-reineke/cmp-under-comparator" -- Sort good
use 'hrsh7th/cmp-path' -- Cmp path source
use 'dmitmel/cmp-cmdline-history' -- Cmp cmd source
use 'hrsh7th/cmp-nvim-lua' -- cmp lua nvim source
use 'hrsh7th/cmp-cmdline' -- cmp cmdline source
use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'} -- cmp tabnine source

-- UI
use 'folke/tokyonight.nvim' -- Colorscheme
use 'kyazdani42/nvim-web-devicons' -- icons
use 'hood/popui.nvim' -- Nice UI
use 'RishabhRD/popfix' -- Nice UI

-- Fix
use 'lewis6991/impatient.nvim' -- Start Quickly
use "nathom/filetype.nvim" -- Filetype Faster
use 'antoinemadec/FixCursorHold.nvim' -- Fix

-- undo Tree
use {
  'mbbill/undotree',
  cmd = {'UndotreeToggle'}
}

-- Move Windows
use {
  'sindrets/winshift.nvim',
  cmd = {'WinShift'}
}

-- kinda like bspwm moncle
use {
  'troydm/zoomwintab.vim',
  cmd = {'ZoomWinTabToggle'}
}

-- Utils
use 'pbrisbin/vim-mkdir' -- Make directory if non-existent
use 'wakatime/vim-wakatime' -- meaning full insight
use 'andymass/vim-matchup' -- Enhance Matchit
use 'terryma/vim-expand-region' -- Cool
use 'tpope/vim-surround' -- Surround Stuff
use 'nishigori/increment-activator' -- good enhance
use 'voldikss/vim-floaterm' -- Floating Terminal

-- Lsp, Treesitter
use 'kosayoda/nvim-lightbulb' -- Code Actions Indicator
use 'David-Kunz/treesitter-unit' -- Select quickly

-- Format Code
use {
  'sbdchd/neoformat',
  cmd = {'Neoformat'}
}

-- Swap Args and stuff
use {
  'mizlan/iswap.nvim',
  cmd = {'ISwap','ISwapWith'}
}

end)
