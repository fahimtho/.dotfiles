"  mapings
nmap <silent><C-l> :noh<CR>
nmap <silent><F3> :set invnumber<CR>
nnoremap <silent><M-t> :tabedit<CR>
nnoremap r :redo<cr>
nnoremap S :%s///gI<Left><Left><Left><Left>
nnoremap <leader>m :!echo % \| entr -n pandoc % -o %:r.pdf & <cr><cr>
vnoremap <CR> "+y
nnoremap <F1> i
nnoremap <M-e> gt
nnoremap <M-q> gT
nnoremap <leader>u :UndotreeToggle<cr>
map R <plug>UndotreeRedo
map U <plug>UndotreeUndo
tnoremap ~ <C-\><C-n><C-w><C-w>
nnoremap ~ <C-w><C-w>
nnoremap <C-w>\ <C-w>v
nnoremap <C-w>- <C-w>s
nnoremap <silent><leader>q :call QuickfixToggle()<cr>
nnoremap <silent> <leader>yy "+yy
nnoremap <leader>d <cmd>TroubleToggle<cr>
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
nnoremap <silent> <space>f :Neoformat<CR>
nnoremap <silent><M-a> <esc>:%y+<cr>
nnoremap <leader>r :call CompileRun()<CR>
nnoremap <leader>g <cmd>Telescope git_files<cr>
nnoremap <leader>gc <cmd>Telescope git_commits<cr>
nnoremap <leader>gp <cmd>Telescope live_grep<cr>
nnoremap <leader>s <cmd>Telescope lsp_document_symbols<cr>
nnoremap <leader><space> <cmd>Telescope buffers<cr>
nnoremap <silent> <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <silent> <Leader>x :cclose<CR>
nnoremap <silent> gp :AsyncRun -strip git push -u origin main<CR>
nnoremap <silent> <space>gc :AsyncRun git commit -m ""<left>
nnoremap <silent> ga :AsyncRun -strip git add . && echo "Files has been added to commit !!!"<CR>
nnoremap <silent> gf :AsyncRun -strip git add % && echo "Current file has been added for commit !!!"<CR>
map <silent> <space>n :bNext<CR>
map <silent> <space>p :bprevious<CR>
nnoremap <silent> <space>o :Vista!!<CR>
nnoremap <silent> <leader>bl :lua require"gitsigns".blame_line{full=true}<CR>
nnoremap <silent> <leader>hp <cmd>lua require"gitsigns".preview_hunk()<CR>
nnoremap <silent> <leader>t <cmd>call Template()<CR>
nnoremap <silent> tu :lua require"treesitter-unit".select(true)<CR>
nnoremap <silent><leader>f :NvimTreeToggle<CR>
nnoremap <leader>F :NvimTreeFindFile<CR>
nmap n <Plug>(highlight-current-n-n)
nmap N <Plug>(highlight-current-n-N)
nnoremap   <silent>   <C-d>   :FloatermToggle<CR>
tnoremap   <silent>   <C-d>   <C-\><C-n>:FloatermToggle<CR>
nnoremap <silent> <leader>a :CodeActionMenu<CR>
nnoremap q: <Cmd>lua require('cmdbuf').split_open(vim.o.cmdwinheight)<CR>
cnoremap <C-f> <Cmd>lua require('cmdbuf').split_open(
  \ vim.o.cmdwinheight,
  \ {line = vim.fn.getcmdline(), column = vim.fn.getcmdpos()}
  \ )<CR><C-c>

" Custom buffer mappings
augroup cmdbuf_setting
  autocmd!
  autocmd User CmdbufNew call s:cmdbuf()
augroup END
function! s:cmdbuf() abort
  nnoremap <nowait> <buffer> q <Cmd>quit<CR>
  nnoremap <buffer> dd <Cmd>lua require('cmdbuf').delete()<CR>
endfunction

" open lua command-line window
nnoremap ql <Cmd>lua require('cmdbuf').split_open(
  \ vim.o.cmdwinheight,
  \ {type = "lua/cmd"}
  \ )<CR>

" q/, q? alternative
nnoremap q/ <Cmd>lua require('cmdbuf').split_open(
  \ vim.o.cmdwinheight,
  \ {type = "vim/search/forward"}
  \ )<CR>
nnoremap q? <Cmd>lua require('cmdbuf').split_open(
  \ vim.o.cmdwinheight,
  \ {type = "vim/search/backward"}
  \ )<CR>

nnoremap <silent><M-.> :BufferLineCycleNext<CR>
nnoremap <silent><M-,> :BufferLineCyclePrev<CR>
nnoremap <silent><F3> :TSHighlightCapturesUnderCursor<CR>
nnoremap <silent><leader>R :SearchBoxReplace<CR>
nnoremap <silent><leader>/ :SearchBoxIncSearch<CR>
nnoremap <silent><leader># :SearchBoxReplace <C-r>=expand('<cword>')<CR><CR>
xnoremap <silent><leader>/ :SearchBoxIncSearch visual_mode=true<CR>
