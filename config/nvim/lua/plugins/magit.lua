-- Magit Client
local neogit = require("neogit")

neogit.setup {
  disable_signs = false,
  disable_hint = false,
  disable_context_highlighting = false,
  disable_commit_confirmation = false,
  auto_refresh = true,
  disable_builtin_notifications = false,
  use_magit_keybindings = false,
  commit_popup = {
      kind = "split",
  },
  kind = "tab",
  signs = {
    section = { ">", "v" },
    item = { ">", "v" },
    hunk = { "", "" },
  },
  integrations = {
    diffview = true
  },
  sections = {
    untracked = {
      folded = false
    },
    unstaged = {
      folded = false
    },
    staged = {
      folded = false
    },
    stashes = {
      folded = false
    },
    unpulled = {
      folded = false
    },
    unmerged = {
      folded = false
    },
    recent = {
      folded = false
    },
  },
  mappings = {
    status = {
      ["B"] = "BranchPopup",
      ["s"] = "",
    }
  }
}
