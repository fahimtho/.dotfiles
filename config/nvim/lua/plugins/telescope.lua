-- Fuzzy Find
local actions = require("telescope.actions")
local action_layout = require("telescope.actions.layout")

require('telescope').setup{
  picker = {
        hidden = false,
    },
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<M-S-p>"] = action_layout.toggle_preview,
        ["<C-u>"] = false
      },
    },
    vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--no-ignore",
            "--smart-case",
            "--hidden",
        },
    prompt_prefix = "   ",
    selection_caret = "  ",
    entry_prefix = "  ",
    initial_mode = "insert",
    borderchars = { "─", "│", "─", "│", "┌", "╮", "╯", "╰" },
    selection_strategy = "reset",
    layout_strategy = "horizontal",
    file_sorter = require("telescope.sorters").get_fuzzy_file,
    file_ignore_patterns = { "node_modules", ".git/", "dist/" },
    generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
    path_display = { "absolute" },
    winblend = 0,
    border = {},
    borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
    color_devicons = true,
    use_less = true,
    layout_config = {
      horizontal = { width = 0.9 , height = 0.9},
    },
    pickers = {
      find_files = {
        find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }
      },
    },
    extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",

        },
      },
    },
  }

-- Extentions
require('telescope').load_extension('gh')
require("telescope").load_extension('file_browser')
require("telescope").load_extension("notify")
require('telescope').load_extension('fzf')
