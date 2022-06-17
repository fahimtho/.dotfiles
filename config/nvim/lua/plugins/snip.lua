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

  display_options = {
    terminal_width = 45,
    notification_timeout = 5
  },

  show_no_output = {
    "Classic",
    "TempFloatingWindow",
  },

  inline_messages = 0,
  borders = 'single',
  live_mode_toggle='off'
})
