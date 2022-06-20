-- Zen Mode
require("zen-mode").setup {
  window = {
    backdrop = 0.80,
    width = 180,
    height = 1,
    options = {
      signcolumn = "yes",
      number = false,
    },
  },
  plugins = {
    options = {
      enabled = true,
      ruler = false,
      showcmd = false,
    },
    gitsigns = { enabled = true },
    tmux = { enabled = true },
  },
}
