local ui = vim.api.nvim_list_uis()[1]

require 'jabs'.setup {
    position = 'center',
   	width = 50,
   	height = 10,
   	border = 'rounded',

    -- Options for preview window
    preview_position = 'left',
    preview = {
        width = 40,
        height = 30,
        border = 'rounded',
    },

    col = ui.width,
    row = ui.height/2,
}
