" Install Vim-Plug if not installed
" !Place this *before* plug#begin()!!
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source glob('~/.vimrc')
endif
" Specify a directory for plugins
" Note that this line must be present for Vim-Plug commands to work:
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

""""""""""""""""""""
" Vim-Plug Plugins "
""""""""""""""""""""
Plug 'svermeulen/vim-easyclip'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-repeat'
Plug 'xavierd/clang_complete'
Plug 'tpope/vim-surround'
Plug 'dylanaraps/wal.vim'
Plug 'glts/vim-radical'
Plug 'tpope/vim-sensible'
Plug 'glts/vim-magnum'
Plug 'davidhalter/jedi-vim'

" Initialize plugin system
call plug#end()

" Others "
""""""""""
runtime! plugged/sensible.vim
runtime! plugins/gitstatus.vim

""""""""""""
" EasyClip " 
""""""""""""
" Necessary for easyclip
" Make gm mark instead of m
nnoremap gm m
let g:EasyClipUseSubstituteDefaults = 1

" Let concurrent vim instances share yank history "
let g:EasyClipShareYanks=1
let g:EasyClipShareYanksFile='.easyclip'
let g:EasyClipShareYanksDirectory='$HOME/.vim'

""""""""""""""""""
" Nerd Commenter "
""""""""""""""""""
runtime! plugin-config/nerdcommenter.vim

""""""""""""""""""
" Clang Complete "
""""""""""""""""""
runtime! plugin-config/clang-complete.vim

