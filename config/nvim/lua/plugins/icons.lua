-- Icons
require'nvim-web-devicons'.setup {
 override = {
  javascript = {
    icon = " ",
    color = "#ffcb00",
    cterm_color = "11",
    name = "Javascript"
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}

require("nvim-web-devicons").set_icon {
  js = {
    icon = "",
    color = "#ffcb00",
    cterm_color = "11",
    name = "Javascript"
  }
}
