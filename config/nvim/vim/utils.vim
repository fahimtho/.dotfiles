" Actions
let &t_ut='' " Neovim F.A.Q
highlight clear SignColumn " clear SignColumn
highlight clear TabLineFill " Transparent Tabline Background
highlight clear Error " Dont need Error highlight
autocmd VimEnter * set autochdir " set vim pwd as the file
autocmd FileType nvim-docs-view set nonumber " Hide line numbers in Doc View
autocmd FileType qf set nonumber " Hide line numbers in qf
autocmd FileType qf set nobuflisted " Hide Qucikfix window from bufferlist
au TermOpen * setlocal listchars= nonumber norelativenumber " hide numbers in Terminal
au TermOpen * startinsert " open Terminal in insert mode
au BufEnter,BufWinEnter,WinEnter term://* startinsert " Enter Terminal in insert mode
au BufLeave term://* stopinsert " Leave Terminal after stoping insert mode
au FocusGained,BufEnter * checktime " Auto Read
au BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif " Close If Tree is last

" Toggle Quickfix Window
let g:quickfix_is_open = 0
function! QuickfixToggle()
  if g:quickfix_is_open
    botright cclose
    let g:quickfix_is_open = 0
  else
    botright copen 15
    let g:quickfix_is_open = 1
  endif
endfunction

" Remove Highlight after
augroup ClearSearchHL
  autocmd!
  autocmd CmdlineEnter /,\? set hlsearch
  autocmd CmdlineLeave /,\? set nohlsearch
  autocmd CmdlineLeave /,\? lua require('highlight_current_n')['/,?']()
augroup END

" Quit if Quickfix is last window
au BufEnter * call MyLastWindow()
function! MyLastWindow()
  if &buftype=="quickfix"
    if winbufnr(2) == -1
      quit!
    endif
  endif
endfunction

" highlight yanked area
augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=100}
augroup END

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

" Close Asyncrun Window after 3 seconds
let g:asyncrun_exit = 'call timer_start(1000, {-> execute("cclose")})'

" Compile & Run Code in Quickfix non-interective
func! CompileRun()
  exec "w"
  if &filetype == 'c'
    exec "AsyncRun -strip gcc -Wall % -o %< && ./%<"
  elseif &filetype == 'cpp'
    exec "AsyncRun -strip g++ -Wall % -o %< && ./%<"
  elseif &filetype == 'sh'
    exec "AsyncRun -strip bash %"
  elseif &filetype == 'python'
    exec "AsyncRun -strip python3 %"
  elseif &filetype == 'go'
    exec "AsyncRun -strip go build % && ./%<"
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
  elseif &filetype == 'lua'
    exec "AsyncRun -strip lua %"
  elseif &filetype == 'arduino'
    exec "AsyncRun -strip arduino-cli compile -b arduino:avr:uno %<"
  endif
endfunc

" Run Code Interactive
func! Run()
  exec "w"
  exec "let g:floaterm_title = ' Run '"
  if &filetype == 'c'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.5 -height=0.4 gcc -Wall % -o %< && ./%<"
  elseif &filetype == 'cpp'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.5 -height=0.4 g++ -Wall % -o %< && ./%<"
  elseif &filetype == 'sh'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.5 -height=0.4 bash %"
  elseif &filetype == 'python'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.5 -height=0.4 python3 %"
  elseif &filetype == 'go'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.5 -height=0.4 go build % && ./%<"
  elseif &filetype == 'javascript'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.5 -height=0.4 node %"
  elseif &filetype == 'typescript'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.5 -height=0.4 tsc % && node %<.js"
  elseif &filetype == 'julia'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.5 -height=0.4 julia %"
  elseif &filetype == 'rust'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.5 -height=0.4 rustc % && ./%<"
  elseif &filetype == 'haskell'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.5 -height=0.4 ghc % && ./%<"
  elseif &filetype == 'lua'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.5 -height=0.4 lua %"
  elseif &filetype == 'arduino'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.5 -height=0.4 arduino-cli compile -b arduino:avr:uno %<"
  endif
  exec "let g:floaterm_title = ''"
endfunc

" Showing code context using treesitter
func! Location() abort
	return luaeval("require'nvim-navic'.is_available()") ?
		\ luaeval("require'nvim-navic'.get_location()") : ''
endf

" Vim Terminal
command! -nargs=? Terminal call s:Term(<q-args>)
function! s:Term(args)
  if has('nvim')
    execute 'terminal ' . a:args
    setlocal signcolumn=no
    setlocal norelativenumber
    setlocal nonumber
    setlocal laststatus=0
    setlocal hidden
    autocmd! TermClose <buffer=abuf> if !v:event.status | exec 'bd! '..expand('<abuf>') | set laststatus=3 | endif | checktime
    startinsert
  elseif has('terminal')
    execute 'tab terminal ++close ' . a:args
  else
    execute 'silent !( ' . (a:args != '' ? a:args : $SHELL) . ') || ( echo "Hit Enter"; read; )' | redraw!
  endif
endfunction

" setting filetype
autocmd BufRead,BufNewFile *.tex set filetype=tex
au BufReadPost *.conf setl ft=conf
au BufReadPost *.rasi setl ft=rasi
au BufReadPost sxhkdrc setl ft=sh

" Settings Settings For Tex filetype
autocmd filetype tex setlocal spell
autocmd filetype tex set spelllang=en_us
autocmd filetype markdown setlocal spell
autocmd filetype markdown set spelllang=en_us
