-- Things in Registers
require('nvim-peekup.config').geometry["height"] = 0.3
require('nvim-peekup.config').geometry["title"] = 'Things in Registers'
require('nvim-peekup.config').geometry["wrap"] = false
require('nvim-peekup.config').on_keystroke["delay"] = ''
require('nvim-peekup.config').on_keystroke["autoclose"] = true
require('nvim-peekup.config').on_keystroke["paste_reg"] = "\""

-- Check Code for mess ups
require("trouble").setup {
  height = 10,
  fold_open = "",
  fold_closed = "",
  group = true,
  icons = true,
  padding = true,
  indent_lines = true,
  auto_close = true,
  auto_jump = {"lsp_definitions"}
}

-- Fix Formatting of Quickfix Window
require('pqf').setup({
  signs = {
    error = ' ',
    warning = '',
    info = '',
    hint = ''
  }
})

-- Telescope
require('telescope').setup{
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case", -- this is default
    },
     defaults = {
    preview = {
      timeout = 500,
      msg_bg_fillchar = "",
    },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--hidden",
      },

    },
  },
}

-- FZF
require('telescope').load_extension('fzf')

-- Git Change in file
require('gitsigns').setup()

-- Color Preview
require'colorizer'.setup()

-- Peek Lines
require('numb').setup()

-- Commenting
require('Comment').setup{
  padding = true,
  sticky = true,
  toggler = {
      line = '<C-c>',
      block = 'gbc',
    },
  opleader = {
      line = 'gc',
      block = 'gb',
    },
}

-- Surround Stuff
require"surround".setup {
  context_offset = 100,
  load_autogroups = false,
  mappings_style = "sandwich",
  map_insert_mode = true,
  quotes = {"'", '"'},
  brackets = {"(", '{', '['},
  pairs = {
    nestable = {{"(", ")"}, {"[", "]"}, {"{", "}"}},
    linear = {{"'", "'"}, {"`", "`"}, {'"', '"'}}
  },
  prefix = "s"
}

-- Treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  indent = {
    enable = true
    },
  },
}

-- Hilight Current Match
require("highlight_current_n").setup({
  highlight_group = "IncSearch"
})

-- File Nav
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = true,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 25,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}

-- Indent Guide
require("indent_blankline").setup {
    show_current_context = false,
    show_current_context_start = false,
    show_end_of_line = true,
    buftype_exclude = { "terminal" , "qf", "help" ,"peek" , "packer" , "Trouble", "vista_kind"},
    filetype_exclude = { "peek" , "qf", "help" , "packer", "Trouble", "vista_kind"},
}

-- Show Code Context
require("nvim-gps").setup({

	icons = {
		["class-name"] = ' ',
		["function-name"] = ' ',
		["method-name"] = ' ',
		["container-name"] = ' ',
		["tag-name"] = '炙'
	},

	languages = {
		["json"] = {
			icons = {
				["array-name"] = ' ',
				["object-name"] = ' ',
				["null-name"] = '[] ',
				["boolean-name"] = 'ﰰﰴ ',
				["number-name"] = '# ',
				["string-name"] = ' '
			}
		},
		["toml"] = {
			icons = {
				["table-name"] = ' ',
				["array-name"] = ' ',
				["boolean-name"] = 'ﰰﰴ ',
				["date-name"] = ' ',
				["date-time-name"] = ' ',
				["float-name"] = ' ',
				["inline-table-name"] = ' ',
				["integer-name"] = '# ',
				["string-name"] = ' ',
				["time-name"] = ' '
			}
		},
		["verilog"] = {
			icons = {
				["module-name"] = ' '
			}
		},
		["yaml"] = {
			icons = {
				["mapping-name"] = ' ',
				["sequence-name"] = ' ',
				["null-name"] = '[] ',
				["boolean-name"] = 'ﰰﰴ ',
				["integer-name"] = '# ',
				["float-name"] = ' ',
				["string-name"] = ' '
			}
		},
	},

	separator = '  ',

	depth = 0,

	depth_limit_indicator = ".."
})

-- Taylor Treesitter
require "nvim-treesitter.configs".setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25,
    persist_queries = false,
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  }
}

--  tabs and buffers
require('bufferline').setup {
  options = {
    numbers = "none" ,
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    indicator_icon = '',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    name_formatter = function(buf)
      if buf.name:match('%.md') then
        return vim.fn.fnamemodify(buf.name, ':t:r')
      end
    end,
    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 15,
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,
    custom_filter = function(buf_number)
      if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
        return true
      end
      if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
        return true
      end
      if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
        return true
      end
    end,
    offsets = {{filetype = "NvimTree", text = "File Explorer" }},
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = false,
    persist_buffer_sort = true,
    separator_style = "thin",
    enforce_regular_tabs = true,
    always_show_bufferline = false,
    sort_by = 'id',
  }
}

-- better goto preview
require('goto-preview').setup {
  width = 120;
  height = 30;
  border = {"↖", "─" ,"┐", "│", "┘", "─", "└", "│"};
  default_mappings = true;
  debug = false;
  opacity = nil;
  resizing_mappings = false;
  post_open_hook = nil;
  focus_on_open = true;
  dismiss_on_move = false;
  force_close = true,
  bufhidden = "wipe",
}

-- Quickly save images
require'clipboard-image'.setup {
  default = {
    img_dir = "img",
    img_dir_txt = "img",
    img_name = function () return os.date('%Y-%m-%d-%H-%M-%S') end,
    affix = "%s"
  },
  markdown = {
    img_dir = {"src", "assets", "img"},
    img_dir_txt = "/assets/img",
    affix = "![](%s)"
  }
}

-- making punctuation simple
require('nvim-autopairs').setup{
 disable_filetype = { "TelescopePrompt" },
 disable_in_macro = false,
 disable_in_visualblock = true,
 ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]],"%s+", ""),
 enable_moveright = true,
 enable_afterquote = true,
 enable_check_bracket_line = true,
 check_ts = true,
 map_bs = true,
 map_c_w = true
}

-- Auto Complete tags
require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
    filetypes = { "html" , "xml" , "css" },
  }
}

-- nice search
require('searchbox').setup({
  popup = {
    relative = 'win',
    position = {
      row = '5%',
      col = '95%',
    },
    size = 30,
    border = {
      style = 'rounded',
      highlight = 'FloatBorder',
      text = {
        top = ' Search ',
        top_align = 'left',
      },
    },
    win_options = {
      winhighlight = 'Normal:Normal',
    },
  },
  hooks = {
    before_mount = function(input)
      -- code
    end,
    after_mount = function(input)
      -- code
    end
  }
})
