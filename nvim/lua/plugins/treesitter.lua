-- Treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
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

-- Help With Tags with Treesitter
require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  },
}

-- Matchit
require'nvim-treesitter.configs'.setup {
  matchup = {
    enable = true,
  },
}
