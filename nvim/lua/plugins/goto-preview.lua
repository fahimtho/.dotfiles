-- Floating preview
require('goto-preview').setup {
  width = 90;
  height = 30;
  border = {"↖", "─" ,"╮", "│", "╯", "─", "╰", "│"};
  default_mappings = false;
  debug = false;
  opacity = nil;
  resizing_mappings = false;
  post_open_hook = nil;
  focus_on_open = true;
  dismiss_on_move = false;
  force_close = true,
  bufhidden = "wipe",
}
