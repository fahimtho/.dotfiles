-- Fuzzy Find
local actions = require("telescope.actions")
local action_layout = require("telescope.actions.layout")

require('telescope').setup {
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
      "--color=always",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--no-ignore",
      "--smart-case",
      "--hidden",
    },
    prompt_prefix = "   ",
    prompt_position = "top",
    preview_height = 0.6,
    selection_caret = "  ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    layout_strategy = "horizontal",
    file_sorter = require("telescope.sorters").get_fuzzy_file,
    file_ignore_patterns = { "node_modules", ".git/", "dist/" },
    generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    color_devicons = true,
    use_less = true,
    layout_config = {
      horizontal = { width = vim.o.columns , height = vim.o.lines },
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
      file_browser = {
        hijack_netrw = true,
      },
    },
  },
}

-- Dont Preview Binary Files
local previewers = require("telescope.previewers")
local Job = require("plenary.job")
local new_maker = function(filepath, bufnr, opts)
  filepath = vim.fn.expand(filepath)
  Job:new({
    command = "file",
    args = { "--mime-type", "-b", filepath },
    on_exit = function(j)
      local mime_type = vim.split(j:result()[1], "/")[1]
      if mime_type == "text" then
        previewers.buffer_previewer_maker(filepath, bufnr, opts)
      else
        -- maybe we want to write something to the buffer here
        vim.schedule(function()
          vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "BINARY" })
        end)
      end
    end
  }):sync()
end

require("telescope").setup {
  defaults = {
    buffer_previewer_maker = new_maker,
  }
}

-- Extentions
require('telescope').load_extension('gh')
require("telescope").load_extension('file_browser')
require("telescope").load_extension("notify")
require('telescope').load_extension('fzf')
require('telescope').load_extension('zoxide')
require('telescope').load_extension('projects')
require('telescope').load_extension('media_files')
