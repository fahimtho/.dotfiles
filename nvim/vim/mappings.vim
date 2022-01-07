"  mapings
" --------

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
nnoremap <silent>q :call QuickfixToggle()<cr>
nnoremap <silent><leader>c :call CompileRun()<CR>
nnoremap <silent><leader>r :call Run()<CR>

" Copy Full File
nnoremap <silent><M-a> <esc>:%y+<cr>

" Telescope Pickers
nnoremap <leader>lg <cmd>Telescope live_grep<cr>
nnoremap <leader>lr <cmd>Telescope lsp_references<cr>
nnoremap <leader>gc <cmd>Telescope git_commits<cr>
nnoremap <silent><Tab> :lua require('telescope.builtin').buffers({layout_config={width=0.4,height=0.2}})<CR>
nnoremap <leader>s <cmd>Telescope lsp_document_symbols<cr>
nnoremap "" <cmd>Telescope registers<cr>
nnoremap <leader>h <cmd>Telescope oldfiles<cr>
nnoremap <silent><leader>a :lua require('telescope.builtin').lsp_code_actions({layout_config={width=0.4,height=0.2}})<CR>
nnoremap <silent><leader>\ :Telescope find_files<CR>
nnoremap <silent><leader>bf :Telescope current_buffer_fuzzy_find<CR>

" Show Lsp Document Symbols
nnoremap <leader>S <cmd>Vista!!<cr>

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

" Separate Delete and cut [ m -> cut , d -> delete ]
nnoremap m d
xnoremap m d
nnoremap mm dd
nnoremap M D

" select a Treesitter Uit
nnoremap <silent> tu :lua require"treesitter-unit".select(outer)<CR>

" Cool Snippets using TAB & Shift-TAB
imap <expr> <Tab> snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-next)' : '<Tab>'
imap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<Tab>'
smap <expr> <Tab> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'
smap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<Tab>'
xmap <Tab> <Plug>(snippy-cut-text)

" Run Code Snippets
nmap <silent><leader>e :SnipRun<CR>
vmap <silent>e <esc> :'<,'>SnipRun<CR>

" Delete Current Buffers
nnoremap <silent><space>x :bd<CR>

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
nnoremap <silent> <space>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <space>ca :lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>
nnoremap <silent> <space>e :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent> d[ :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> d] :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <space>q :lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <silent> <C-LeftMouse> :lua vim.lsp.buf.definition()<CR>

" Format Stuff
nnoremap <silent> <space>f :lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> <space>F :Neoformat<CR>

" Builtin Terminal
nnoremap <silent><M-d> :below 15sp term://$SHELL<cr>
tnoremap <silent><M-d> <C-d>
tnoremap <A-x> <C-\><C-n>

" Select All
nnoremap <C-M-a> ggVG

" goto preview
nnoremap gp <cmd>lua require('goto-preview').goto_preview_definition()<CR>
nnoremap gI <cmd>lua require('goto-preview').goto_preview_implementation()<CR>
nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>
nnoremap gR <cmd>lua require('goto-preview').goto_preview_references()<CR>

" smart encrement
nmap <C-a> <Plug>(dial-increment)
nmap <C-x> <Plug>(dial-decrement)
vmap <C-a> <Plug>(dial-increment)
vmap <C-x> <Plug>(dial-decrement)
vmap g<C-a> <Plug>(dial-increment-additional)
vmap g<C-x> <Plug>(dial-decrement-additional)

" Resize Window
nnoremap <silent><Leader><right> :vertical resize +5<CR>
nnoremap <silent><Leader><left> :vertical resize -5<CR>

" Move lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Map keys
nmap n <Plug>(highlight-current-n-n)
nmap N <Plug>(highlight-current-n-N)
nmap * *N