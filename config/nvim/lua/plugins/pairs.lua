-- Punctuation
require('nvim-autopairs').setup{
  disable_filetype = { "TelescopePrompt" },
  disable_in_visualblock = false,
  ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]],"%s+", ""),
  enable_afterquote = true,
  enable_moveright = true,
  enable_check_bracket_line = true,
  enable_bracket_in_quote = true,
  map_c_h = true,
  check_ts = true,
  map_bs = true,
  map_c_w = true
}
