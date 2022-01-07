-- Req Variable
local windline = require('windline')
local helper = require('windline.helpers')
local sep = helper.separators
local vim_components = require('windline.components.vim')
local b_components = require('windline.components.basic')
local state = _G.WindLine.state
local lsp_comps = require('windline.components.lsp')

-- Main Colors
local hl_list = {
    Black = { 'white', 'black' },
    White = { 'black', 'white' },
    Inactive = { 'InactiveFg', 'InactiveBg' },
    Active = { 'ActiveFg', 'ActiveBg' },
}

-- Basic Array that gets filled with stuff
local basic = {}

-- Components
basic.divider = { b_components.divider, '' }
basic.space = { ' ', '' }
basic.bg = { ' ', 'StatusLine' }
basic.file_name_inactive = { b_components.full_file_name, hl_list.Inactive }
basic.line_col_inactive = { b_components.line_col, hl_list.Inactive }
basic.progress_inactive = { b_components.progress, hl_list.Inactive }

-- Show Error Only
basic.lsp_diagnos = {
    width = 90,
    hl_colors = {
        red = { 'red', 'black' },
    },
    text = function(bufnr)
        if lsp_comps.check_lsp(bufnr) then
            return {
                { lsp_comps.lsp_error({ format = '  %s' }), 'red' },
            }
        end
        return ''
    end,
}

-- Info of Current File
basic.file = {
    hl_colors = {
        default = { 'black', 'black_light' },
    },
    text = function(bufnr)
        return {
            { ' ', 'default' },
            {b_components.cache_file_icon({ default = '' }), 'default'},
            { ' ', 'default' },
            { b_components.cache_file_name('[No Name]', ''), '' },
            { b_components.file_modified(' '), '' },
        }
    end,
}

-- Right side of statusline [ lsp & line number ]
basic.right = {
    hl_colors = {
        sep_before = { 'black_light', 'black_light' },
        sep_after = { 'black_light', 'black' },
        text = { 'black', 'black_light' },
    },
    text = function()
        return {
            { ' %l of %L 並 ', 'text' },
            { sep.right_rounded, 'sep_after' },
        }
    end,
}

-- Show Code Context
basic.gps = {
    hl_colors = {
        text = { 'black_light', 'black' },
    },
    text = function()
        return {
            { ' %{NvimGps()} ', 'text' },
        }
      end,
    }

-- Default Statusbar for every file
local default = {
    filetypes = { 'default' },
    -- Active bar
    active = {
        { sep.left_rounded, {'black_light' , 'black'} },
        basic.file,
        { sep.right_rounded, { 'black_light', 'black' } },
        basic.gps,
        basic.divider,
        { ' ', hl_list.Black },
        basic.lsp_diagnos,
        { ' ', hl_list.Black },
        { sep.left_rounded, {'black_light' , 'black'} },
        basic.right,
        { ' ', hl_list.Black },
    },
    -- Inactive bar
    inactive = {
        { sep.left_rounded, {'black_light' , 'black'} },
        basic.file,
        { sep.right_rounded, { 'black_light', 'black' } },

    },
}

-- Statusbar for quick fix window
local quickfix = {
    filetypes = { 'qf', 'Trouble' },
    active = {
        { '🚦 Quickfix ', { 'black_light', 'black' } },
      },
    always_active = true,
    show_last_status = true
}

-- Statusbar for Nvim Tree
local explorer = {
    filetypes = { 'fern', 'NvimTree', 'lir' },
    active = {
        { '       NvimTree       ', { 'black_light', 'black' } },
        { b_components.divider, '' },
    },
    always_active = true,
    show_last_status = true
}

-- Status bar for Code Outline
local code_symbols = {
    filetypes = {'vista_kind'},
    active = {
        { '       Code Symbols       ', { 'black_light', 'black' } },
    },
    always_active = true,
    show_last_status = true
}

-- Custom Colors
windline.setup({
    colors_name = function(colors)
        colors.black = "#010005"
        colors.black_light = "#368dff"
        colors.red = "#ff1767"
        return colors
    end,

-- Final setup of all bars
    statuslines = {
        default,
        quickfix,
        explorer,
        code_symbols,
    },
})
