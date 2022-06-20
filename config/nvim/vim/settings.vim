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

" In Built Settings
let g:tex_conceal='abdmg'
let loaded_matchparen = 0
let g:netrw_banner = 0

" Copilot
let b:copilot_enabled = v:true

" Run Files
let g:asyncrun_trim = 1
let g:asyncrun_save = 1
let g:asyncrun_qfid = 0
let g:asyncrun_open = 15

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

" Providers
let g:python3_host_prog=expand('/usr/bin/python')

" Neoformat
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1

" Bug
let g:cursorhold_updatetime = 100

" Template
let g:templates_no_autocmd = 1

" UI
let g:popui_border_style = "rounded"

" Matchup
let g:loaded_matchit = 1
let g:matchup_matchparen_offscreen = {'method': 'popup'}
let g:matchup_surround_enabled = 1
let g:matchup_transmute_enabled = 1
let g:matchup_delim_noskips = 2
let g:matchup_matchparen_singleton = 0
let g:matchup_matchparen_timeout = 200
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_deferred_show_delay = 50
let g:matchup_matchparen_deferred_hide_delay = 700
let g:matchup_matchparen_insert_timeout = 60
let g:matchup_motion_cursor_end = 0

" Illuminate
let g:Illuminate_highlightUnderCursor = 0

" Glow
let g:glow_border = "rounded"
let g:glow_width = 300
let g:glow_use_pager = v:true

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
