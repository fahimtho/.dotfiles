" setting options(internal)
set splitbelow                                            " Create Splits Under
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
set shortmess+=ItxrnmaqoscF                               " No message
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
set laststatus=3                                          " Show global statusline always
set mouse=ar                                              " mouse as it should be
set conceallevel=1                                        " magic
set completeopt=menu,menuone,noselect                     " autocomplete format
set noshowcmd                                             " Do not show keys pressed
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
let g:asyncrun_open = 15
let g:asyncrun_qfid = 0

" Nvim Tree Settings
let g:nvim_tree_git_hl = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_group_empty = 1
let g:nvim_tree_icon_padding = ' '
let g:nvim_tree_symlink_arrow = ' >> '
let g:nvim_tree_respect_buf_cwd = 0
let g:nvim_tree_refresh_wait = 500
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }
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
          \   'default': "",
          \   'open': "ﱮ",
          \   'empty': "",
          \   'empty_open': "",
          \   'symlink': "",
          \   'symlink_open': "",
          \   }
          \ }


" latex
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=1
let g:vimtex_view_method = 'zathura'

" Floating terminal
let g:floaterm_title = ''
let g:floaterm_autoclose = 1
let g:floaterm_width = 0.9
let g:floaterm_height = 0.3
let g:floaterm_borderchars = '─│─│╭╮╯╰'
let g:floaterm_keymap_toggle = '<M-d>'
let g:floaterm_position = 'botright'
let g:floaterm_wintype = 'split'

" Undotree
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0

" Neoformat
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_only_msg_on_error = 1

" Providers
let g:python3_host_prog=expand('/usr/bin/python')

" Code Action Menu
let g:code_action_menu_window_border = 'rounded'
let g:code_action_menu_show_details = v:true
let g:code_action_menu_show_diff = v:true

" Matchit
let g:loaded_matchit = 1
let g:matchup_matchparen_enabled = 0
let g:matchup_transmute_enabled = 1

" Bug
let g:cursorhold_updatetime = 100

" ui
let g:popui_border_style = "rounded"

" Glow
let g:glow_border = "rounded"
let g:glow_width = 120
let g:glow_use_pager = v:true
let g:glow_style = "dark"

" Git balme
let g:gitblame_enabled = 0
let g:gitblame_message_template = '<summary> • <date> • <author>'

" Enhance <C-a> and <C-x>
let g:increment_activator_filetype_candidates = {
  \   '_' : [
  \     ['Pythonista', 'PHPer', 'Gopher'],
  \     ['info', 'warning', 'notice', 'error'],
  \   ],
  \   'cucumber': [
  \     ['Given', 'And', 'When', 'Then'],
  \   ],
  \   'erlang': [
  \     ['module', 'export'],
  \     [
  \       'is_alive', 'is_atom', 'is_binary', 'is_bitstring',
  \       'is_boolean', 'is_float', 'is_function',
  \       'is_integer', 'is_list', 'is_number',
  \       'is_pid', 'is_port', 'is_process_alive',
  \       'is_record', 'is_reference', 'is_tuple',
  \     ],
  \   ],
  \   'git-rebase-todo': [
  \     ['pick', 'reword', 'edit', 'squash', 'fixup', 'exec'],
  \   ],
  \   'go': [
  \     ['true', 'false', 'iota', 'nil'],
  \     ['byte', 'complex64', 'complex128'],
  \     ['int', 'int8', 'int16', 'int32', 'int64'],
  \     ['uint', 'uint8', 'uint16', 'uint32', 'uint64'],
  \     ['float32', 'float64'],
  \     ['interface', 'struct'],
  \   ],
  \ }
