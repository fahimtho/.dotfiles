" Hide Line numbers for writing
nmap <silent><F4> :set invnumber<CR>

" New Tab
nnoremap <silent><M-t> :tabedit<CR>

" Redo Stuff
nnoremap r :redo<cr>

" Undo Stuff in insert mode
inoremap <C-z> <Esc>ui

" Replace All matches
nnoremap S :%s///gI<Left><Left><Left><Left>

" Move Between Splits
tnoremap ~ <C-\><C-n><C-w><C-w>
nnoremap ~ <C-w><C-w>

" Create Splits
nnoremap <C-w>\ <C-w>v
nnoremap <C-w>- <C-w>s

" Call Custom Fuctions
nnoremap <silent>Q :call QuickfixToggle()<cr>
nnoremap <silent><leader>c :call CompileRun()<CR>
nnoremap <silent><leader>r :call Run()<CR>

" Copy Full File
nnoremap <silent><M-a> <esc>:%y+<cr>

" Telescope Pickers
nnoremap <leader>lg <cmd>Telescope live_grep<cr>
nnoremap <leader>lr <cmd>Telescope lsp_references<cr>
nnoremap <leader>gc <cmd>Telescope git_commits<cr>
nnoremap <leader>s <cmd>Telescope lsp_document_symbols<cr>
nnoremap "" <cmd>Telescope registers<cr>
nnoremap <leader>h <cmd>Telescope frecency<cr>
nnoremap <silent>; :Telescope file_browser<CR>
nnoremap <silent><leader>bf :Telescope current_buffer_fuzzy_find<CR>
nnoremap <silent>q: :Telescope command_history<CR>

" Move between Buffers
nnoremap <silent><M-.> :BufferLineCycleNext<CR>
nnoremap <silent><M-,> :BufferLineCyclePrev<CR>

" File-Tree
nnoremap <silent><leader>f :NvimTreeToggle<CR>
nnoremap <silent><leader>F :NvimTreeFindFile<CR>

" Find Highlight group Under Cursor
nnoremap <silent><F3> :TSHighlightCapturesUnderCursor<CR>

" Show Problem With code
nnoremap <silent> <leader>d :TroubleToggle<CR>
nnoremap <silent> <leader>L :TroubleToggle lsp_references<CR>

" Cool Snippets using TAB & Shift-TAB
imap <expr> <Tab> snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-next)' : '<Tab>'
imap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<Tab>'
smap <expr> <Tab> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'
smap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<Tab>'
xmap <Tab> <Plug>(snippy-cut-text)

" Delete Current Buffers
nnoremap <silent><space>x :Bdelete<CR>

" copy easily
vmap <cr> y

" move through broken lines
nnoremap <down>  gj
nnoremap <up>    gk

" mapping filetype wise
autocmd filetype markdown nnoremap <leader>m :!echo % \| entr -n pandoc % -o %:r.pdf & <cr>
autocmd filetype tex inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
autocmd filetype markdown inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Template for C,C++ for CP
autocmd filetype c nnoremap <silent><leader>t :0r ~/.config/nvim/templates/Template.c<cr>
autocmd filetype cpp nnoremap <silent><leader>t :0r ~/.config/nvim/templates/Template.cpp<cr>
autocmd filetype c nnoremap <silent><leader>T :0r ~/.config/nvim/templates/
autocmd filetype cpp nnoremap <silent><leader>T :0r ~/.config/nvim/templates/

" Paste Images Quickly in Markdown
autocmd filetype markdown nnoremap <silent><leader>p :PasteImg<CR>
autocmd filetype markdown nnoremap <silent><leader>s :Telescope spell_suggest<CR>

" Custom Commands
command! Q qa!
command! W wa!

" LSP Mappings
nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <C-k> :lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <space>wa :lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <silent> <space>wr :lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <silent> <space>wl :lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <silent> <space>D :lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <F2> :LspRename<CR>
nnoremap <silent> <space>ca :lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>
nnoremap <silent> <space>e :lua vim.diagnostic.open_float()<CR>
nnoremap <silent> d[ :lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> d] :lua vim.diagnostic.goto_next()<CR>
nnoremap <silent> <space>q :lua vim.diagnostic.setloclist()<CR>
nnoremap <silent> <C-LeftMouse> :lua vim.lsp.buf.definition()<CR>

" Format Stuff
nnoremap <silent> <space>f :Neoformat<CR>

" Builtin Terminal
tnoremap <C-x> <C-\><C-n>

" Select All
nnoremap <C-M-a> ggVG

" goto preview
nnoremap gp <cmd>lua require('goto-preview').goto_preview_definition()<CR>
nnoremap gI <cmd>lua require('goto-preview').goto_preview_implementation()<CR>
nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>
nnoremap gR <cmd>lua require('goto-preview').goto_preview_references()<CR>

" Resize Window
nnoremap <silent><space><right> :vertical resize +2<CR>
nnoremap <silent><space><left> :vertical resize -2<CR>
nnoremap <silent><space><up> :resize +2<CR>
nnoremap <silent><space><down> :resize -2<CR>

" Move lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Map keys
nmap <silent> n :lua require("highlight_current_n").n()<CR>
nmap <silent> N :lua require("highlight_current_n").N()<CR>
nmap * *N

" Move splits
nnoremap <silent> <C-M-up> <C-w><up>
nnoremap <silent> <C-M-down> <C-w><down>
nnoremap <silent> <C-M-left> <C-w><left>
nnoremap <silent> <C-M-right> <C-w><right>

" Kinda like monecle
nnoremap <silent> <space><space> :ZoomWinTabToggle<CR>

" Nice Search
nnoremap <leader>S <cmd>SearchBoxIncSearch clear_matches=true<CR>
nnoremap <leader>R <cmd>SearchBoxReplace clear_matches=true confirm=menu<CR>
vnoremap <leader>vs <cmd>SearchBoxIncSearch visual_mode=true<CR>

" Select Treesitter unit
xnoremap <silent>iu :lua require"treesitter-unit".select()<CR>
xnoremap <silent>au :lua require"treesitter-unit".select(true)<CR>
onoremap <silent>iu :<c-u>lua require"treesitter-unit".select()<CR>
onoremap <silent>au :<c-u>lua require"treesitter-unit".select(true)<CR>

" increment or decrement
imap <silent> <C-a> <Plug>(increment-activator-increment)
imap <silent> <C-x> <Plug>(increment-activator-decrement)
nmap <silent> <C-a> <Plug>(increment-activator-increment)
nmap <silent> <C-x> <Plug>(increment-activator-decrement)

" Change case
nnoremap <silent> <C-u> vu<esc>
nnoremap <silent> <C-S-u> vU<esc>

" Run Code [ parts ]
vnoremap <silent> <leader>e :'<,'>SnipRun<CR>

" Harpoon
nnoremap <silent> <space>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent> <space>m :lua require("harpoon.ui").toggle_quick_menu()<CR>

" Memento
nnoremap <leader>m <cmd>lua require('memento').toggle()<CR>

" Undotree
nnoremap <leader>u :UndotreeToggle<CR>

" Change Perssion
nnoremap <leader>x :silent !chmod +x %<CR>

" Dap Mappings
nnoremap <silent> <F4> <Cmd>lua require("dapui").toggle()<CR>
nnoremap <silent> <F5> <Cmd>lua require'dap'.continue()<CR>
nnoremap <silent> <F6> <Cmd>lua require'dap'.step_into()<CR>
nnoremap <silent> <F7> <Cmd>lua require'dap'.step_over()<CR>
nnoremap <silent> <F8> <Cmd>lua require'dap'.step_out()<CR>
nnoremap <silent> <F1> <Cmd>lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <F2> <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
vnoremap <M-e> <Cmd>lua require("dapui").eval()<CR>
