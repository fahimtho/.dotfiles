-- File Nav
require'nvim-tree'.setup {
  disable_netrw       = true,
  auto_reload_on_write = true,
  hijack_netrw        = true,
  open_on_setup       = true,
  ignore_ft_on_setup  = {},
  hijack_cursor       = true,
  hijack_unnamed_buffer_when_opening = false,
  open_on_tab = false,
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
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = true,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 26,
    height = 30,
    hide_root_folder = true,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    preserve_window_proportions = true,
    relativenumber = false
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
    renderer = {
    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}

-- Refresh File list
vim.cmd([[autocmd BufReadPost * NvimTreeRefresh ]])
