-- Fuzzy Find
local actions = require("telescope.actions")
local action_layout = require("telescope.actions.layout")

require('telescope').setup{
defaults = {
    layout_config = {
      horizontal = { width = 0.9 , height = 0.9},
    },
    pickers = {
      find_files = {
        find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }
      },
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<M-S-p>"] = action_layout.toggle_preview,
        ["<C-u>"] = false
      },
    },
  },
}

require('telescope').load_extension('media_files')
require('telescope').load_extension('gh')
require("telescope").load_extension('file_browser')
require'telescope'.load_extension('zoxide')
require("telescope").load_extension("notify")