" setting options(internal)
syntax on
set nowrap
set splitbelow
set ttimeout
set undofile
set hidden
set undodir=~/.config/nvim/undodir
set smartindent
set undolevels=1000
set ai
filetype plugin indent on
set number
set completeopt=menuone,noselect
set title
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
set signcolumn=number
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set matchpairs+=<:>
set wrap
set linebreak
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set noruler
set termguicolors
set shortmess+=FIaosc
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
set laststatus=2
set mouse=ar

" setting-options(Plugings)
let g:vimtex_view_general_viewer = 'sioyek'
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0
let loaded_matchparen = 1
let g:netrw_banner = 0
let g:bracey_refresh_on_save = 1
let g:asyncrun_open = 30
let g:asyncrun_trim = 1
let g:vista_default_executive = 'nvim_lsp'
let g:vista#renderer#enable_icon = 1
let g:templates_no_autocmd = 1
let g:peekup_paste_before = '<leader>P'
let g:peekup_paste_after = '<leader>p'
let g:nvim_tree_git_hl = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_group_empty = 1
let g:nvim_tree_disable_window_picker = 1
let g:nvim_tree_icon_padding = ' '
let g:nvim_tree_symlink_arrow = ' >> '
let g:nvim_tree_respect_buf_cwd = 1
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }
let g:code_action_menu_show_details = v:false
let g:code_action_menu_show_diff = v:false
let g:floaterm_title = ''
let g:floaterm_width = 0.8
let g:floaterm_height = 0.5
let g:floaterm_borderchars = '─│─│╭╮╯╰'
