" plugins.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

" setting options(internal)
noh
syntax on
set t_Co=256
set nocompatible
set showmode
set showcmd
set ruler
set number
set expandtab
set noshiftround
set lazyredraw
set scrolloff=5
set magic
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set modelines=0
set formatoptions=tqn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cmdheight=1
set laststatus=2
set backspace=indent,eol,start
set list
set listchars=tab:\│\ 
set matchpairs+=<:>
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set hlsearch
set ruler
set t_Co=16
set cursorline
set updatetime=0
set lazyredraw
colorscheme elflord
set noshowmode
let loaded_matchparen = 1
set shortmess=a 
set fillchars=vert:\│,eob:\ 
set wildignore=*.o,*~,*.pyc
set cmdheight=2
set hlsearch
set incsearch 
set nobackup
set nowb
set noswapfile
set smarttab
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50
set clipboard=unnamed
set wildchar=<TAB>
:set nospell
let mapleader = "\\"
set undolevels=1000
set mouse-=a
filetype plugin on
set guicursor=
set nocompatible
set noshowmode
set noruler
set laststatus=0
set noshowcmd
set cmdheight=1
set nofoldenable
set t_Co=256
set showtabline=0
set shm+=I
set laststatus=0

" setting-options(Plugings)
let g:tex_flavor='latex'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" misc
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
autocmd BufLeave,BufWinLeave * silent! mkview

autocmd BufReadPost * silent! loadview

highlight Visual cterm=NONE ctermbg=0 ctermfg=NONE guibg=Grey40
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
"get rid of [  ] around icons in NerdTree
autocmd VimEnter * source ~/.vimrc
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

highlight VertSplit guibg=Blue guifg=Black ctermbg=6 ctermfg=0

autocmd BufEnter * silent! lcd %:p:h

augroup nerdtreehidecwd
	autocmd!
	autocmd FileType nerdtree syntax match NERDTreeHideCWD #^[</].*$# conceal
augroup end


" Ui Configuration
hi linenr ctermfg=8
hi pmenu ctermbg=0 ctermfg=NONE
hi pmenusel ctermbg=4 ctermfg=0
hi pmenusbar ctermbg=0
hi pmenuthumb ctermbg=7
hi matchparen ctermbg=black ctermfg=NONE
hi search ctermbg=blue	
hi user1 ctermbg=1 ctermfg=0
hi user2 ctermbg=4 ctermfg=0
hi user3 ctermbg=0 ctermfg=NONE
hi user4 ctermbg=NONE ctermfg=NONE
hi group1 ctermbg=NONE ctermfg=0
hi Directory guifg=#FF0000 ctermfg=197
hi CursorLine cterm=none
hi CursorLineNr    term=bold cterm=bold ctermfg=197 gui=bold
hi QuickFixLine ctermfg=197 cterm=bold guifg=NONE gui=bold
hi TermCursor ctermbg=197  cterm=NONE ctermfg=0
hi MoreMsg ctermbg=none  cterm=NONE ctermfg=197
hi Question ctermbg=none  cterm=NONE ctermfg=197
hi Type ctermbg=none  cterm=NONE ctermfg=111
hi Structure ctermbg=none  cterm=NONE ctermfg=161
hi Typedef  ctermbg=none  cterm=NONE ctermfg=197
hi CursorColumn ctermbg=none  cterm=NONE ctermfg=0
hi Comment ctermbg=none  cterm=NONE ctermfg=37
hi ErrorMsg ctermbg=none  cterm=NONE ctermfg=196
hi PmenuSel ctermbg=197  
hi StatusLine   cterm=none ctermfg=0  ctermbg=none guibg=blue
hi StatusLineNC cterm=none ctermfg=0 ctermbg=none guibg=green
hi Visual cterm=NONE ctermbg=234 ctermfg=NONE 
hi VertSplit ctermbg=none cterm=none ctermfg=0
hi NERDTreeCWD  ctermfg=197




" mapings
vnoremap <C-c> "+y
map <C-v> "+P
set virtualedit=all
nmap <C-S> :w<CR>
nmap <C-_> :noh<CR>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
nmap <C-Up> 8k
nmap <C-Down> 8j
nmap <C-O> o<Esc>
nmap <C-Z> u
nmap <C-Y> <C-R>
nmap <C-F> /
nmap <C-H> i<C-W><Esc>
nmap <F3> :set invnumber<CR>
nmap <F4> :q<CR>
imap <C-_> <Esc>:noh<CR>a
imap <S-Left> <Esc>lv<Left>
imap <S-Right> <Esc>lv<Right>
imap <C-Up> <Esc>8ka
imap <C-Down> <Esc>8ja
imap <C-O> <Esc>o
imap <C-Z> <Esc>ua
imap <C-Y> <Esc><C-R>a
imap <Nul> <C-N>
imap <C-F> <Esc>/
imap <C-H> <C-W>
imap <C-V> <Esc>pa
imap <F3> <Esc>:set invnumber<CR>a
imap <F4> <Esc>:q<CR>
vmap <C-Up> 8k
vmap <C-Down> 8j
nnoremap <Esc>t :tabedit<CR>
nnoremap <F5> :UndotreeToggle<CR>
nnoremap <Esc>e :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <S-w> :q!<CR>
noremap <C-d> :sh<cr>
noremap <M-r> :VimuxOpenRunner<cr>
noremap <C-s> :Goyo<cr>
noremap <Leader>f :Files <cr>
noremap <Leader><space> :Buffers <cr>
noremap <Leader>h :History <cr>
noremap <Leader>r :History: <cr>
noremap <Leader>s :History/ <cr>
noremap <C-q> :q <cr>
nnoremap r :redo<cr>
nnoremap <leader>q :wq<CR>
nnoremap <leader>q :qa<CR>
nnoremap S :%s///gI<Left><Left><Left><Left>



