" Actions
let &t_ut='' " Neovim F.A.Q
highlight clear SignColumn " clear SignColumn
highlight clear TabLineFill " Transparent Tabline Background
highlight clear Error " Dont need Error highlight
autocmd VimEnter * set autochdir " set vim pwd as the file
autocmd FileType qf set nonumber " Hide line numbers in qf
autocmd FileType harpoon set nonumber " Hide line numbers in harpoon
autocmd FileType qf set nobuflisted " Hide Qucikfix window from bufferlist
autocmd FileType dap-repl set nobuflisted " Hide dap-repl window from bufferlist
autocmd FileType dap-repl startinsert " start dap-repl insertmode
au TermOpen * setlocal listchars= nonumber norelativenumber " hide numbers in Terminal
au TermOpen * startinsert " open Terminal in insert mode
au BufEnter,BufWinEnter,WinEnter term://* startinsert " Enter Terminal in insert mode
au BufLeave term://* stopinsert " Leave Terminal after stoping insert mode
au FocusGained,BufEnter * checktime " Auto Read

" Code Action
autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()

" Toggle Quickfix Window
let g:quickfix_is_open = 0
function! QuickfixToggle()
  if g:quickfix_is_open
    botright cclose
    let g:quickfix_is_open = 0
  else
    botright copen
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
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.6 -height=0.3 gcc -Wall % -o %< && ./%<"
  elseif &filetype == 'cpp'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.6 -height=0.3 g++ -Wall % -o %< && ./%<"
  elseif &filetype == 'sh'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.6 -height=0.3 bash %"
  elseif &filetype == 'python'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.6 -height=0.3 python3 %"
  elseif &filetype == 'go'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.6 -height=0.3 go build % && ./%<"
  elseif &filetype == 'javascript'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.6 -height=0.3 node %"
  elseif &filetype == 'typescript'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.6 -height=0.3 tsc % && node %<.js"
  elseif &filetype == 'julia'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.6 -height=0.3 julia %"
  elseif &filetype == 'rust'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.6 -height=0.3 rustc % && ./%<"
  elseif &filetype == 'haskell'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.6 -height=0.3 ghc % && ./%<"
  elseif &filetype == 'lua'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.6 -height=0.3 lua %"
  elseif &filetype == 'arduino'
    exec "AsyncRun -strip -mode=term -pos=floaterm -position=bottomright -width=0.6 -height=0.3 arduino-cli compile -b arduino:avr:uno %<"
  endif
  exec "let g:floaterm_title = ''"
endfunc

" Showing code context using treesitter
func! NvimGps() abort
	return luaeval("require'nvim-gps'.is_available()") ?
		\ luaeval("require'nvim-gps'.get_location()") : ''
endf

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
