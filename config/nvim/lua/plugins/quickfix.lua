-- Nice Quickfix
vim.cmd([[
    hi BqfPreviewBorder guifg=#004eff
    hi link BqfPreviewRange Search
]])

require('bqf').setup({
    auto_enable = true,
    auto_resize_height = true,
    preview = {
        win_height = 25,
        delay_syntax = 80,
        should_preview_cb = function(bufnr, qwinid)
            local ret = true
            local bufname = vim.api.nvim_buf_get_name(bufnr)
            local fsize = vim.fn.getfsize(bufname)
            if fsize > 100 * 1024 then
                ret = false
            elseif bufname:match('^fugitive://') then
                ret = false
            end
            return ret
        end
    },
})
