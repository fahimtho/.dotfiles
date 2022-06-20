-- Startup
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(
  function()

    -- Packer itself
    use {
      'wbthomason/packer.nvim',
      auto_clean = true,
      compile_on_sync = true,
      auto_reload_compiled = true,
      auto_reload_compiled = true,
      display = {
        non_interactive = false,
        open_fn         = nil,
        open_cmd        = '50vnew \\[packer\\]',
        working_sym     = '',
        error_sym       = '✗',
        done_sym        = '✓',
        removed_sym     = '-',
        moved_sym       = '→',
        header_sym      = '━',
        show_all_info   = false,
        prompt_border   = 'rounded',
        keybindings     = {
          quit = 'q',
          toggle_info = '<CR>',
          diff = 'd',
          prompt_revert = 'r',
        },
      },
    }

    -- Use a protected call so we don't error out on first use
    local status_ok, packer = pcall(require, "packer")
    if not status_ok then
      return
    end

    -- Packer Popup Window
    local status_ok, packer = pcall(require, "packer")
    packer.init {
      display = {
        open_fn = function()
          return require("packer.util").float({ border = "rounded" })
        end,
      },
    }

    -- Misc
    require "plugins.misc"

    -- for Latex files
    use {
      'lervag/vimtex',
      opt = true,
      ft  = { 'tex' },
    }

    -- taylor Treesitter
    use {
      'nvim-treesitter/playground',
      opt = true,
      cmd = { 'TSHighlightCapturesUnderCursor' },
    }

    -- Help With tags
    use {
      'windwp/nvim-ts-autotag',
      opt = true,
      ft = { 'html', 'css', 'javascript' },
    }

    -- Run Commands in qf
    use {
      'skywind3000/asyncrun.vim',
      opt = true,
      ft = { 'c', 'cpp', 'sh', 'python', 'go', 'javascript', 'typescript', 'julia', 'rust', 'haskell', 'arduino' },
      cmd = { 'AsyncRun' }
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
      ft = { 'tex', 'markdown' },
      config = function()
        require 'clipboard-image'.setup {
          default = {
            img_dir = "img",
            img_dir_txt = "img",
            img_name = function()
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
      cmd = { 'TroubleToggle' },
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
            information = "",
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
        require 'colorizer'.setup()
      end
    }

    -- File Nav
    use {
      'kyazdani42/nvim-tree.lua',
      cmd = { 'NvimTreeToggle' },
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
      cmd = { 'Delete', 'Unlink', 'Move', 'Rename', 'Chmod', 'Mkdir', 'Cfind', 'Clocate', 'SudoWrite', 'SudoEdit' }
    }

    -- Treesitter Abstraction Layer
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        require "plugins.treesitter"
      end
    }

    -- Nice search
    use {
      'rktjmp/highlight-current-n.nvim',
      event = 'InsertEnter',
      config = function()
        require("highlight_current_n").setup({
          highlight_group = "Visual"
        })
      end
    }

    -- Buffers & tabs
    use {
      'akinsho/bufferline.nvim',
      config = function()
        require "plugins.bufferline"
      end
    }

    -- Format QuickFix
    use {
      'https://gitlab.com/yorickpeterse/nvim-pqf.git',
      config = function()
        require "plugins.pqf"
      end
    }

    -- Tex Symbols
    use {
      'kdheepak/cmp-latex-symbols',
      ft = { 'tex' }
    }

    -- Clean
    use({
    "mcauley-penney/tidy.nvim",
    config = function()
        require("tidy").setup()
    end
    })

    -- Delete Buffer
    use {
      'famiu/bufdelete.nvim',
      cmd = { 'Bdelete', 'Bwipeout' }
    }

    -- CP Helper
    use {
      'xeluxee/competitest.nvim',
      requires = 'MunifTanjim/nui.nvim',
      cmd = { 'CompetiTestAdd', 'CompetiTestEdit', 'CompetiTestDelete', 'CompetiTestRun', 'CompetiTestReceive',
        'CompetiTestConvert', 'CompetiTestRunNE' },
      config = function()
        require 'competitest'.setup()
      end
    }

    -- Nice Ui Search
    use {
      'VonHeikemen/searchbox.nvim',
      cmd = { 'SearchBoxMatchAll', 'SearchBoxIncSearch', 'SearchBoxSimple', 'SearchBoxReplace' },
      requires = {
        { 'MunifTanjim/nui.nvim' }
      },
      config = function()
        require "plugins.search"
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

    -- Nice UI
    use {
      'stevearc/dressing.nvim',
      config = function()
        require "plugins.ui"
      end
    }

    -- Cool notifications
    use {
      'rcarriga/nvim-notify',
      config = function()
        require "plugins.notify"
      end
    }

    -- UndoTree
    use {
      'mbbill/undotree',
      cmd = { 'UndotreeToggle' }
    }

    -- kinda like bspwm moncle
    use {
      'troydm/zoomwintab.vim',
      cmd = { 'ZoomWinTabToggle' }
    }

    -- quick help
    use {
      'RishabhRD/nvim-cheat.sh',
      cmd = { 'Cheat' }
    }

    -- icons
    use {
      'kyazdani42/nvim-web-devicons',
      config = function()
        require "plugins.icons"
      end
    }

    -- Nice Json
    use {
      'gennaro-tedesco/nvim-jqx',
      opt = true,
      cmd = { "JqxList", "JqxQuery" },
      ft = { 'json' }
    }

    -- Git
    use {
     'lewis6991/gitsigns.nvim',
      config = function()
        require "plugins.git"
      end
    }

    -- Task System
     use {
       'skywind3000/asynctasks.vim',
       ft = { 'c', 'cpp', 'sh', 'python', 'go', 'javascript', 'typescript', 'julia', 'rust', 'haskell', 'arduino' },
       cmd = {'AsyncTask'}
     }

     -- End Is coming soon
     use {
       'github/copilot.vim',
       event = 'InsertLeave'
     }

     -- Markdown Preview
     use {
       "ellisonleao/glow.nvim",
       opt = true,
       branch = 'main',
       cmd = { 'Glow' }
     }

    -- Sort urls
    use {
      "axieax/urlview.nvim",
      opt = true,
      cmd = { "UrlView" }
    }

    -- Buffer Switcher
    use {
      'matbme/JABS.nvim',
      config = function()
        require "plugins.jabs"
      end
    }

    -- Code Outline
    use {
      'simrat39/symbols-outline.nvim',
      config = function()
        require "plugins.symbols-outline"
      end
    }

    -- Stablize Content
    use {
	    "luukvbaal/stabilize.nvim",
	    config = function()
        require("stabilize").setup()
      end
    }

    -- Magit Clone
    use {
      'TimUntersberger/neogit',
      opt = true,
      cmd = { 'Neogit' },
      requires = 'nvim-lua/plenary.nvim',
      config = function()
        require "plugins.magit"
      end
    }

    -- Generate annotaions
    use {
      "danymat/neogen",
      cmd = { "Neogen" },
      opt = true,
      requires = "nvim-treesitter/nvim-treesitter",
      config = function()
        require('neogen').setup {snippet_engine = "snippy"}
      end,
    }

    -- I am Speed
    use {
      'phaazon/hop.nvim',
      branch = 'v1',
      config = function()
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
    }

    -- Separate Delete and cut
    use {
      "gbprod/cutlass.nvim",
      config = function()
        require("cutlass").setup({
          cut_key = "m"
        })
      end
    }

    -- Substitute Text
    use({
      "gbprod/substitute.nvim",
      config = function()
        require("substitute").setup()
      end
    })

    -- Peek Lines
    use {
      'nacro90/numb.nvim',
      config = function()
        require('numb').setup()
      end
    }

    -- Zen Mode
    use {
      "folke/zen-mode.nvim",
      cmd = { "ZenMode" },
      opt = true,
      config = function()
        require "plugins.zen"
      end
    }

    -- Tabout
    use {
      'abecodes/tabout.nvim',
      config = function()
        require "plugins.tabout"
      end,
      wants = {'nvim-treesitter'},
      after = {'nvim-cmp'}
    }

    -- Cool QuickFix
    use {
      'kevinhwang91/nvim-bqf',
      ft = 'qf',
      config = function()
        require "plugins.quickfix"
      end
    }

    -- See Doc in Split
    use {
      "amrbashir/nvim-docs-view",
      opt = true,
      cmd = { "DocsViewToggle" },
      config = function()
        require("docs-view").setup {
          position = "right",
          width = 100,
        }
      end
    }

    -- Indent Guides
    use {
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("indent_blankline").setup({
          show_current_context = true,
          show_current_context_start = true,
        })
      end
    }

    -- Projects
    use {
      "ahmedkhalf/project.nvim",
      config = function()
        require("project_nvim").setup()
      end
    }

    -- Telescope
    use 'nvim-telescope/telescope-github.nvim' -- Github
    use "nvim-telescope/telescope-file-browser.nvim" -- File Browser
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- Telescope FZF marriage
    use 'jvgrootveld/telescope-zoxide' -- Quick Folders

    -- Cmp
    use 'hrsh7th/cmp-nvim-lsp' -- cmp lsp source
    use 'dcampos/nvim-snippy' -- snippet manager
    use 'dcampos/cmp-snippy' -- snippet for cmp
    use 'onsails/lspkind-nvim' -- icons for menu
    use 'honza/vim-snippets' -- Snippets
    use 'hrsh7th/cmp-path' -- Cmp path source

    -- UI
    use 'folke/tokyonight.nvim' -- Colorscheme
    use 'hood/popui.nvim' -- Nice UI
    use 'RishabhRD/popfix' -- Nice UI

    -- Fix
    use 'lewis6991/impatient.nvim' -- Start Quickly
    use "nathom/filetype.nvim" -- Filetype Faster

    -- Utils
    use 'tpope/vim-surround' -- Surround Stuff
    use 'nishigori/increment-activator' -- good enhance
    use 'voldikss/vim-floaterm' -- Floating Terminal
    use 'wakatime/vim-wakatime' -- stats
    use 'ThePrimeagen/harpoon' -- Project File util
    use 'wellle/targets.vim' -- Extra text objects
    use 'gaborvecsei/memento.nvim' -- Where I Have been
    use 'tpope/vim-fugitive' -- Git
    use 'jghauser/mkdir.nvim' -- Make Directory if Non-Existent
    use 'sindrets/diffview.nvim' -- Git Diff View
    use 'JoseConseco/vim-case-change' -- Change Case
    use 'sbdchd/neoformat' -- Format Code
    use 'aperezdc/vim-template' -- Code Template
    use 'jremmen/vim-ripgrep'
    use 'andymass/vim-matchup'
    use 'RRethy/vim-illuminate'

    -- Lsp, Treesitter
    use 'David-Kunz/treesitter-unit' -- Select quickly
    use 'p00f/nvim-ts-rainbow' -- Rainbow
    use 'haringsrob/nvim_context_vt' -- Code Contex in VT
    use "SmiteshP/nvim-navic" -- Code Location
    use 'nvim-treesitter/nvim-treesitter-textobjects' -- Text Objects

  end)
