" ___    ______________  ___   ______  _________________________
" __ |  / /___  _/__   |/  /   ___   |/  /__    |__  __ \_  ___/
" __ | / / __  / __  /|_/ /    __  /|_/ /__  /| |_  /_/ /____ \ 
" __ |/ / __/ /  _  /  / /     _  /  / / _  ___ |  ____/____/ / 
" _____/  /___/  /_/  /_/      /_/  /_/  /_/  |_/_/     /____/  
" 

"""""""""""""""""""""""""""""
" basic bindings/rebindings "
"""""""""""""""""""""""""""""

let mapleader = ";"

" ins-completion
"
" whole lines
inoremap <silent> <Leader>l <C-x><C-l>
"
" keyw in current file
inoremap <silent> <Leader>n <C-x><C-n>
"
" keyw in 'dictionary' (h: dictionary)
inoremap <silent> <Leader>t <C-x><C-k>
"
" keyw in 'thesaurus' (h: thesaurus)
inoremap <silent> <Leader>t <C-x><C-t>
"
" keyw in current and included files
inoremap <silent> <Leader>i <C-x><C-i>
"
" tags
inoremap <silent> <Leader>t <C-x><C-]>
"
" file names
inoremap <silent> <Leader>f <C-x><C-f>
"
" definitions or macros
inoremap <silent> <Leader>t <C-x><C-d>
"
" vim cli
inoremap <silent> <Leader>t <C-x><C-v>
"
" user defined
inoremap <silent> <Leader>u <C-x><C-u>
"
" omni
inoremap <silent> <Leader>o <C-x><C-o>
"
" spelling suggestions
inoremap <silent> <Leader>o <C-x>s
"
" keyw in 'complete'
inoremap <silent> <Leader>o <C-x><C-p>

""""""""""""""""""""""""
" convenience bindings "
""""""""""""""""""""""""

noremap j gj
noremap k gk
noremap <Space>k k
noremap <Space>j j

nnoremap <Leader>w <C-w>

nnoremap Y y$

" From https://vimways.org/2019/vim-and-the-working-directory/ "
" 'cd' towards the directory in which the current file is edited
" " but only change the path for the current window
nnoremap <leader>cd :lcd %:h<CR>

" Split line after cursor (Kut)
nnoremap <S-k> a<CR><ESC>k$

" Auto-insert matching braces
" inoremap { {}<ESC>i
" inoremap [ []<ESC>i
" inoremap ( ()<ESC>i
" inoremap < <><ESC>i
" inoremap " ""<ESC>i
" inoremap ' ''<ESC>i

" use matching close brace key to exit the braces when hovering over them

