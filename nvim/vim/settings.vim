" setting options(internal)
" ------------------------
syntax on                                                 " Enable Syntax Highlighting
set splitbelow                                            " Create Splits Under current buffers
set ttimeout                                              " wait for mapping
set hidden                                                " Hide when abonded
set undofile                                              " Store undo info in a file
set undodir=~/.config/nvim/undodir                        " undo file location
set undolevels=1000                                       " Undo Level
set smartindent                                           " indent
set noshiftround                                          " roun shift indnent
set ai                                                    " indent
set number                                                " line numbers
set clipboard+=unnamedplus                                " use system clipboard
set cmdheight=1                                           " command mode space
set updatetime=100                                        " time
set timeoutlen=400                                        " time
set redrawtime=1500                                       " time
set ttimeoutlen=10                                        " time
set notimeout                                             " time
set incsearch                                             " search
set ignorecase                                            " search
set hlsearch                                              " search
set smartcase                                             " search
set encoding=utf-8                                        " set encoding
set tabstop=2                                             " set indent amount
set shiftwidth=2                                          " set indent amount
set softtabstop=2                                         " set indent ampount
set backspace=eol,start,indent                            " backspace action
set wrap                                                  " break lines
set linebreak                                             " break line
set expandtab                                             " tab in insert mode
set cursorline                                            " highlight current line number
set noruler                                               " show no ruler
set termguicolors                                         " use true colors
set shortmess+=FIaosc                                     " No message
set lazyredraw                                            " time
set nobackup                                              " live fearless
set nowritebackup                                         " live fearless
set autoread                                              " update current file
set whichwrap+=<,>,h,l                                    " Backspce
set noswapfile                                            " live fearless
set smarttab                                              " handle tab in insert
set pastetoggle=<F2>                                      " Paste big things
let &fcs='eob: '                                          " hide tildes
let mapleader = "\\"                                      " leader key
set noshowmode                                            " cursor doing it
set laststatus=2                                          " Show statusline always
set mouse=ar                                              " mouse as it should be
set conceallevel=1                                        " magic
set completeopt=menu,menuone,noselect                     " autocomplete format
filetype plugin indent on                                 " filetype Plugin to set filetype

" ignore Files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

" setting-options(Plugings)
" ------------------------
"
" In Built Settings
let g:tex_conceal='abdmg'
let loaded_matchparen = 0
let g:netrw_banner = 0

" Run Files
let g:asyncrun_trim = 1
let g:asyncrun_save = 1
let g:asyncrun_open = 20
let g:bracey_refresh_on_save = 1
let g:bracey_browser_command = 'chromium'
let g:bracey_auto_start_browser = 1
let g:bracey_eval_on_save = 1
let g:bracey_auto_start_server = 1
let g:bracey_server_allow_remote_connections = 1

" Nvim Tree Settings
let g:nvim_tree_git_hl = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_group_empty = 1
let g:nvim_tree_disable_window_picker = 1
let g:nvim_tree_icon_padding = ' '
let g:nvim_tree_symlink_arrow = ' >> '
let g:nvim_tree_respect_buf_cwd = 0
let g:nvim_tree_refresh_wait = 500
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


" latex
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=1

" Floating terminal
let g:floaterm_title = ''
let g:floaterm_autoclose = 1
let g:floaterm_width = 0.8
let g:floaterm_height = 0.4
let g:floaterm_borderchars = '─│─│╭╮╯╰'
let g:floaterm_keymap_toggle = '<C-d>'

" Vista
let g:vista_default_executive = 'nvim_lsp'
let g:vista#renderer#enable_icon = 1
let g:vista_disable_statusline = 1

" Undotree
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0

" Neoformat
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_only_msg_on_error = 1

" Glow
let g:glow_border = "rounded"

" Matchit
let g:loaded_matchit = 1
let g:matchup_transmute_enabled = 1
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_enabled = 0
let g:matchup_matchparen_hi_surround_always = 1
