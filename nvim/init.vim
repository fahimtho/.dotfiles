" plugins.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'sheerun/vim-polyglot'
Plug 'mbbill/undotree'
Plug 'wakatime/vim-wakatime'
Plug 'turbio/bracey.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'preservim/nerdcommenter'
Plug 'skywind3000/asyncrun.vim'
Plug 'tpope/vim-eunuch'
Plug 'sbdchd/neoformat'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
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
set number
set completeopt=menuone,noselect
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
let g:asyncrun_stdin = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

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
nnoremap <silent> <space>f :Neoformat<CR>
nnoremap @ :AsyncRun
nnoremap <silent><M-a> <esc>:%y+<cr>
nnoremap <leader>r :call CompileRun()<CR>
nnoremap <silent> <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <silent> <Leader>x :cclose<CR>
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
hi NormalFloat ctermfg=blue
hi conceal ctermbg=none
hi FloatBorder ctermfg=blue
hi TabLine ctermfg=0 ctermbg=232
hi TabLineSel ctermfg=blue ctermbg=16

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
  else
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

" Close Asyncrun Window after
let g:asyncrun_exit = 'call timer_start(4000, {-> execute("cclose")})'

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


