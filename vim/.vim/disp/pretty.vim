" We like our wals
colorscheme wal

" disabling the ear-screeching beep
set vb t_vb=

set tabstop=4
set shiftwidth=4
set noexpandtab

" Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on

function! SetStatusLinePath()
	return system('print -P %~')[:-2] . "/"
endfunction

function! SLDir()
	return expand("%:h") . "/"
endfunction

function! SLFile()
	return expand("%:t")
endfunction

":so $VIMRUNTIME/syntax/hitest.vim

set laststatus=2
set statusline=
"	File Info	"
set statusline+=%#Difftext#
set statusline+=[%-n]\ 					"buffer number
set statusline+=%#Directory#
set statusline+=%{SLDir()}				"path
set statusline+=%#ModeMsg#
set statusline+=%{SLFile()}				"file
set statusline+=%#MoreMsg#
set statusline+=%m%r%h%w%y				"flags
set statusline+=%#line# |
"	caret info "
set statusline+=%=						"right justified
set statusline+=%#SpellLocal#
set statusline+=0x%B\ %b				"character values
set statusline+=%#Difftext#
set statusline+=\ [%c%V]				"columns
set statusline+=_%l/%L					"lines
set statusline+=\ (%P%%)				"percentage

" Default status line / Lots of example strings
" set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
" "              | | | | |  |   |      |  |     |    |
" "              | | | | |  |   |      |  |     |    +-- current column
" "              | | | | |  |   |      |  |     +-- current line
" "              | | | | |  |   |      |  +-- current % into file
" "              | | | | |  |   |      +-- current syntax
" "              | | | | |  |   +-- current fileformat
" "              | | | | |  +-- number of lines
" "              | | | | +-- preview flag in square brackets
" "              | | | +-- help flag in square brackets
" "              | | +-- readonly flag in square brackets
" "              | +-- modified flag in square brackets
" "              +-- full path to file in the buffer

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,WinEnter,TabEnter,CmdlineLeave * set relativenumber
  autocmd CursorMoved	* set relativenumber
  autocmd BufLeave,FocusLost,WinLeave,TabLeave,CmdlineEnter   * set norelativenumber
  autocmd CursorHold,CursorHoldI	* set norelativenumber
augroup END
