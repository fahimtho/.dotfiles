" Actions
let &t_ut=''
highlight clear SignColumn
highlight clear TabLineFill
highlight clear Error
autocmd colorscheme * hi clear cursorline
autocmd VimEnter * set autochdir
autocmd FileType qf 10wincmd_
autocmd FileType qf set nobuflisted
autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()
au FocusGained,BufEnter * checktime
au TermOpen * setlocal listchars= nonumber norelativenumber
au TermOpen * startinsert
au BufEnter,BufWinEnter,WinEnter term://* startinsert
au BufLeave term://* stopinsert
au TermClose * call feedkeys(" ")

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

" Quit if Quickfix is last window
au BufEnter * call MyLastWindow()
function! MyLastWindow()
  " if the window is quickfix go on
  if &buftype=="quickfix"
    " if this window is last on screen quit without warning
    if winbufnr(2) == -1
      quit!
    endif
  endif
endfunction

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

" Compile & Run Code
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
  elseif &filetype == 'arduino'
    exec "AsyncRun -strip arduino-cli compile -b arduino:avr:uno %<"
  elseif &filetype == 'r'
    exec "AsyncRun -strip Rscript % && echo 'No Errors' && sioyek Rplots.pdf  >/dev/null 2>&1"
  endif
endfunc

" Template
func! Template()
  exec "w"
  if &filetype == 'c'
    exec "Template *.c"
  elseif &filetype == 'cpp'
    exec "Template *.cpp"
  elseif &filetype == 'sh'
    exec "Template *.sh"
  elseif &filetype == 'python'
    exec "Template *.sh"
  elseif &filetype == 'go'
    exec "Template *.go"
  elseif &filetype == 'javascript'
    exec "Template *.js"
  elseif &filetype == 'typescript'
    exec "Template *.ts"
  elseif &filetype == 'julia'
    exec "Template *.jl"
  elseif &filetype == 'rust'
    exec "Template *.rs"
  elseif &filetype == 'haskell'
    exec "Template *.hs"
  elseif &filetype == 'arduino'
    exec "Template *.ino"
  elseif &filetype == 'r'
    exec "Template *.r"
  endif
endfunc

" Showing code context
func! NvimGps() abort
	return luaeval("require'nvim-gps'.is_available()") ?
		\ luaeval("require'nvim-gps'.get_location()") : ''
endf
