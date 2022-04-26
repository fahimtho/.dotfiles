" Color
let g:tokyonight_style = 'night' " Theme Variant
let g:tokyonight_transparent = v:true " make it transparent
let g:tokyonight_transparent_sidebar = v:true " make it transparent
let g:tokyonight_terminal_colors = v:false
let g:tokyonight_italic_functions = 1
colorscheme tokyonight " set theme

" Ui Configuration
hi Normal guibg=NONE guifg=NONE
hi pmenusbar guibg=#0d0d1a
hi Pmenu guibg=#000000 guifg=#004eff
hi PmenuSel guibg=#101824 guifg=#004eff
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
hi TelescopeSelection guibg=#10171a guifg=none
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
hi BufferLineFill guifg=none guibg=none
hi NvimTreeWindowPicker guifg=#000000 guibg=#004eff

" Change treesitter Elements
hi TSKeyword guifg=#004eff
hi TSInclude guifg=#004eff
hi TSVariableBuiltin guifg=#ff1767
hi TSParameter guifg=#004eff
hi TSNumber guifg=#ff1767
hi TSConstant guifg=#00c5ff
hi TSBoolean guifg=#ff1767
hi TSRepeat guifg=#63c6f1
hi TSKeywordFunction guifg=#00b8ff
hi TSType guifg=#368dff

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
highlight! link CmpItemAbbr Pmenu
highlight! link CmpItemKind Pmenu
highlight! link CmpItemMenu Pmenu
highlight! link CmpItemKindUnit Pmenu
highlight! link CmpItemKindProperty Pmenu
highlight! link CmpItemKindKeyword Pmenu
highlight! link CmpItemKindMethod Pmenu
highlight! link CmpItemKindFunction Pmenu
highlight! link CmpItemKindText Pmenu
highlight! link CmpItemKindInterface Pmenu
highlight! link CmpItemKindVariable Pmenu
highlight! link CmpItemAbbrMatchFuzzy Pmenu
highlight! link CmpItemAbbrMatch Pmenu
highlight! link CmpItemAbbrDeprecated Pmenu
