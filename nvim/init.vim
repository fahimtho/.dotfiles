" plugins.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'sheerun/vim-polyglot'
Plug 'mbbill/undotree'
Plug 'wakatime/vim-wakatime'
Plug 'turbio/bracey.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'neovim/nvim-lspconfig'
Plug 'skywind3000/asyncrun.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
Plug 'weilbith/nvim-code-action-menu'
Plug 'kosayoda/nvim-lightbulb'
Plug 'tpope/vim-eunuch'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'sbdchd/neoformat'
call plug#end()

" setting options(internal)
syntax on
set nowrap
set splitbelow
set ttimeout
set undofile
set undodir=~/.config/nvim/undodir
set undolevels=1000
set ai
filetype plugin indent on
set showmatch
set completeopt=longest,menuone
set number
set noshiftround
set cmdheight=1
set updatetime=300
set notimeout
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*
set wildignore+=*.pyc
set wildignore=*.o,*.obj,*.bak,*.exe,*.hi,*.dyn_hi,*.dyn_o,*.zip,*.pdf
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set matchpairs+=<:>
set wrap
set linebreak
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set noruler
colorscheme ron
set shortmess+=FIaosc
set signcolumn=number
set hlsearch
set nobackup
set nowritebackup
set autoread
set noswapfile
set smarttab
let &fcs='eob: '
let mapleader = "\\"
set noshowmode
set nolist
set laststatus=1
set mouse=ar

" setting-options(Plugings)
let g:vimtex_view_general_viewer = 'sioyek'
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0
let loaded_matchparen = 1
let g:netrw_banner = 0
let g:bracey_refresh_on_save = 1
let g:asyncrun_open = 15
let g:asyncrun_trim = 1

" mapings
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
nnoremap <silent><C-d> :below 13sp term://$SHELL<cr>
tnoremap ~ <C-\><C-n><C-w><C-w>
nnoremap ~ <C-w><C-w>
nnoremap <C-w>\ <C-w>v
nnoremap <C-w>- <C-w>s
nnoremap <silent><leader>q :call QuickfixToggle()<cr>
nnoremap <silent> <leader>yy "+yy
nnoremap <leader>d <cmd>TroubleToggle<cr>
nnoremap <silent><leader>a :CodeActionMenu<CR>
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
nnoremap <silent> [d :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> ]d :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <space>q :lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <silent> <space>f :lua vim.lsp.buf.formatting()<CR>
nnoremap @ :AsyncRun
nnoremap <silent><M-a> <esc>:%y+<cr>
nnoremap <leader>r :call CompileRun()<CR>
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>e <cmd>Telescope file_browser<cr>
nnoremap <leader>g <cmd>Telescope git_files<cr>
nnoremap <leader>gc <cmd>Telescope git_commits<cr>
nnoremap <leader>h <cmd>Telescope oldfiles<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>s <cmd>Telescope lsp_document_symbols<cr>
nnoremap <leader><space> <cmd>Telescope buffers<cr>
nnoremap <silent> <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <silent> <Leader>x :cclose<CR>
inoremap <silent><S-TAB> <C-x><C-o>
map <silent><C-c> <plug>NERDCommenterToggle

" Ui Configuration
hi linenr ctermfg=8
hi pmenusbar ctermbg=0
hi pmenuthumb ctermbg=16
hi matchparen ctermbg=black ctermfg=NONE
hi search cterm=NONE ctermbg=234 ctermfg=NONE
hi Directory ctermfg=4
hi CursorLine cterm=none
hi CursorLineNr    term=bold cterm=bold ctermfg=4 gui=bold
hi QuickFixLine ctermfg=4 cterm=bold guifg=NONE gui=bold
hi TermCursor ctermbg=4  cterm=NONE ctermfg=0
hi MoreMsg ctermbg=none  cterm=NONE ctermfg=197
hi Question ctermbg=none  cterm=NONE ctermfg=197
hi Type ctermbg=none  cterm=NONE ctermfg=111
hi Statement ctermbg=none  cterm=NONE ctermfg=33
hi Structure ctermbg=none  cterm=NONE ctermfg=161
hi Typedef  ctermbg=none  cterm=NONE ctermfg=197
hi CursorColumn ctermbg=none  cterm=NONE ctermfg=0
hi Comment ctermbg=none  cterm=NONE ctermfg=37
hi ErrorMsg ctermbg=none  cterm=NONE ctermfg=blue
hi PmenuSel ctermfg=16 ctermbg=4
hi Pmenu ctermfg=6 ctermbg=16
hi StatusLine   cterm=none ctermfg=4  ctermbg=none
hi StatusLineNC cterm=none ctermfg=0 ctermbg=none
hi Visual cterm=NONE ctermbg=234 ctermfg=NONE
hi VertSplit ctermbg=none cterm=none ctermfg=0
hi IncSearch cterm=NONE ctermbg=234 ctermfg=NONE
hi SignColumn ctermbg=16
hi TabLine ctermfg=0 ctermbg=232
hi TabLineSel ctermfg=blue ctermbg=16
hi TelescopeBorder ctermfg=8 ctermbg=none
hi CodeActionMenuDetailsDeletedLinesCount ctermfg=blue ctermbg=16
hi CodeActionMenuDetailsDeletedLine ctermfg=blue ctermbg=16
hi CodeActionMenuDetailsPreferred ctermfg=blue ctermbg=0
hi CodeActionMenuDetailsPrefer ctermfg=blue ctermbg=0
hi CodeActionMenuDetailsAddedLine ctermbg=16 ctermfg=blue
hi CodeActionMenuDetailsAddedLinesCount ctermbg=16 ctermfg=blue
hi CodeActionMenuDetailsChangedFile ctermbg=16 ctermfg=blue

" Actions
let &t_ut=''
highlight clear SignColumn
highlight clear TabLineFill
autocmd FileType qf 10wincmd_
autocmd colorscheme * hi clear cursorline
autocmd VimEnter * set autochdir
au FocusGained,BufEnter * checktime
au TermOpen * setlocal listchars= nonumber norelativenumber
au TermOpen * startinsert
au BufEnter,BufWinEnter,WinEnter term://* startinsert
au BufLeave term://* stopinsert
au TermClose * call feedkeys(" ")
au TermOpen * set laststatus=0
au TermClose * set laststatus=1

" Toggle Quickfix Window
let g:quickfix_is_open = 0
function! QuickfixToggle()
  if g:quickfix_is_open
    cclose
    let g:quickfix_is_open = 0
    execute g:quickfix_return_to_window . "wincmd w"
  else
    let g:quickfix_return_to_window = winnr()
    copen
    let g:quickfix_is_open = 1
  endif
endfunction

" Hide Command after some time
augroup cmdline
  autocmd!
  autocmd CmdlineLeave : lua vim.defer_fn(function() vim.cmd('echo ""') end, 1000)
augroup END

" highlight yanked area
augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=150}
augroup END

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

" CodeActionMenu Bulb
autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()

" Run Code
func! CompileRun()
  exec "w"
  if &filetype == 'c'
    exec "AsyncRun -strip gcc % -o %< && ./%<"
  elseif &filetype == 'cpp'
    exec "AsyncRun -strip g++ % -o %< && ./%<"
  elseif &filetype == 'sh'
    exec "AsyncRun -strip bash % && cp % %< && chmod +x %<"
  elseif &filetype == 'python'
    exec "AsyncRun -strip python3 %"
  elseif &filetype == 'go'
    exec "AsyncRun -strip go build %< && go run %"
  elseif &filetype == 'javascript'
    exec "AsyncRun -strip node %"
  elseif &filetype == 'typescript'
    exec "AsyncRun -strip tsc % && node %<.js"
  elseif &filetype == 'julia'
    exec "AsyncRun -strip julia %"
  elseif &filetype == 'rust'
    exec "AsyncRun -strip rustc % && ./%<"
  elseif &filetype == 'haskell'
    exec "AsyncRun -strip ghc % && ./%<"
  endif
endfunc

" Lua Code
lua << EOF

-- LSP Snippets
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- LSPs
require'lspconfig'.pyright.setup{
capabilities = capabilities,
}
require'lspconfig'.clangd.setup{
capabilities = capabilities,
}
require'lspconfig'.rust_analyzer.setup{
capabilities = capabilities,
}
require'lspconfig'.gopls.setup{
capabilities = capabilities,
}
require'lspconfig'.julials.setup{
capabilities = capabilities,
}
require'lspconfig'.texlab.setup{
capabilities = capabilities,
}
require'lspconfig'.hls.setup{
capabilities = capabilities,
}
require'lspconfig'.graphql.setup{
capabilities = capabilities,
}
require'lspconfig'.tsserver.setup{
capabilities = capabilities,
}

-- Check Code for mess ups
require("trouble").setup {
  height = 20,
  fold_open = "", -- icon used for open folds
  fold_closed = "", -- icon used for closed folds
  group = true
}

-- Telescope
require('telescope').setup{}

-- Telescope Extentions
require('telescope').load_extension('fzy_native')

EOF

