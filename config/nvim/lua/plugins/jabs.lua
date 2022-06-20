-- Buffer Switcher
require 'jabs'.setup {
    position = 'corner',
    width = 60,
    height = 15,
    border = 'shadow',
    preview_position = 'bottom',
    preview = {
        width = 40,
        height = 60,
        border = 'rounded',
    },

    highlight = {
        current = "Title",
        hidden = "StatusLineNC",
        split = "WarningMsg",
        alternate = "StatusLine"
    },

    use_devicons = true
}
