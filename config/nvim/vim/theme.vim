" Color
let g:tokyonight_style = 'night' " Theme Variant
let g:tokyonight_transparent = v:true " make it transparent
let g:tokyonight_transparent_sidebar = v:true " make it transparent
let g:tokyonight_terminal_colors = v:false
let g:tokyonight_italic_functions = 1
colorscheme tokyonight " set theme

" Ui Configuration
hi Normal guibg=#000000 guifg=None
hi pmenusbar guibg=#0d0d1a
hi Pmenu guibg=none guifg=#004eff
hi PmenuSel guibg=#10171a guifg=#004eff
hi Directory guifg=#004eff
hi CursorLine gui=none guibg=none
hi CursorLineNr guifg=#004eff gui=none
hi Visual guibg=#10171a guifg=NONE
hi IncSearch guibg=#10171a guifg=none
hi NormalFloat guibg=none guifg=#004eff
hi String guifg=#ff1767
hi Search guibg=#142633 guifg=none
hi FloatBorder guibg=none guifg=#192d4d
hi StatusLine gui=none guibg=none
hi StatusLineNC gui=none guibg=none
hi QuickFixLine guibg=none
hi Conceal guibg=none
hi FloatermBorder guibg=none guifg=#192d4d
hi NvimTreeOpenedFile guifg=#ff1767
hi TelescopeSelection guibg=#07141f guifg=none
hi TelescopeNormal guibg=none
hi TelescopeBorder guibg=none
hi qfPosition guifg=#ff1767
hi DiagnosticError guifg=#ff1767
hi ErrorMsg guifg=#ff1767
hi DiagnosticVirtualTextError guifg=#ff1767 guibg=none
hi DiagnosticWarn guifg=#ffb800
hi DiagnosticHint guifg=#004eff
hi DiagnosticInfo guifg=#004eff
hi TermCursor guifg=#004eff
hi NvimTreeFolderIcon guifg=#004eff
hi Folded guifg=#000000 guibg=#004eff
hi dosiniLabel guifg=#368dff
hi dosiniHeader guifg=#368dff
hi VertSplit guifg=#002766
hi BufferLineSeparator guifg=#002766
hi BufferLineSeparatorVisible guifg=#002766
hi BufferLineSeparatorSelected guifg=#063c93
hi BufferLineFill guifg=none guibg=none
hi NvimTreeWindowPicker guifg=#000000 guibg=#004eff
hi FocusedSymbol guibg=NONE guifg=#004eff
hi SymbolsOutlineConnector guibg=NONE guifg=#002866
hi TelescopeBorder guifg=#002766 guibg=NONE


" Change treesitter Elements
hi TSKeyword guifg=#004eff
hi TSInclude guifg=#004eff
hi TSVariableBuiltin guifg=#ff1767
hi TSParameter guifg=#004eff
hi TSNumber guifg=#ff1767
hi TSConstant guifg=#3b77fc
hi TSBoolean guifg=#ff1767
hi TSRepeat guifg=#3b77fc
hi TSKeywordFunction guifg=#3b77fc
hi TSType guifg=#368dff
hi TSFunction guifg=#004eff
hi TSFuncBuiltin guifg=#004eff
hi TSField guifg=#3b77fc
hi TSConstBuiltin guifg=#3b77fc
hi TSKeywordOperator guifg=#368dff
hi TSProperty guifg=#368dff

" Notifications color
highlight NotifyERRORBorder guifg=#F70067
highlight NotifyWARNBorder guifg=#ff8700
highlight NotifyINFOBorder guifg=#004eff
highlight NotifyDEBUGBorder guifg=#8B8B8B
highlight NotifyTRACEBorder guifg=#4F3552
highlight NotifyERRORIcon guifg=#F70067
highlight NotifyWARNIcon guifg=#ffb800
highlight NotifyINFOIcon guifg=#004eff
highlight NotifyDEBUGIcon guifg=#8B8B8B
highlight NotifyTRACEIcon guifg=#D484FF
highlight NotifyERRORTitle  guifg=#F70067
highlight NotifyWARNTitle guifg=#ffb800
highlight NotifyINFOTitle guifg=#004eff
highlight NotifyDEBUGTitle  guifg=#8B8B8B
highlight NotifyTRACETitle  guifg=#D484FF
highlight link NotifyERRORBody Normal
highlight link NotifyWARNBody Normal
highlight link NotifyINFOBody Normal
highlight link NotifyDEBUGBody Normal
highlight link NotifyTRACEBody Normal

" Cmp
highlight CmpItemAbbr guibg=none guifg=#004eff
highlight CmpItemKind guibg=none guifg=#004eff
" highlight CmpItemMenu guibg=none guifg=#004eff
highlight CmpItemKindUnit guibg=none guifg=#004eff
highlight CmpItemKindProperty guibg=none guifg=#004eff
highlight CmpItemKindKeyword guibg=none guifg=#004eff
highlight CmpItemKindMethod guibg=none guifg=#004eff
highlight CmpItemKindFunction guibg=none guifg=#004eff
highlight CmpItemKindText guibg=none guifg=#004eff
highlight CmpItemKindInterface guibg=none guifg=#004eff
highlight CmpItemKindVariable guibg=none guifg=#004eff
highlight CmpItemAbbrMatchFuzzy guibg=none guifg=#004eff
highlight CmpItemAbbrMatch guibg=none guifg=#004eff
highlight CmpItemAbbrDeprecated guibg=none guifg=#004eff
