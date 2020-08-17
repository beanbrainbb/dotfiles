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

" completion bindings
inoremap <silent> <Leader>f <C-x><C-f>
inoremap <silent> <Leader>i <C-x><C-i>
inoremap <silent> <Leader>l <C-x><C-l>
inoremap <silent> <Leader>n <C-x><C-n>
inoremap <silent> <Leader>o <C-x><C-o>
inoremap <silent> <Leader>t <C-x><C-]>
inoremap <silent> <Leader>u <C-x><C-u>

""""""""""""""""""""""""
" convenience bindings "
""""""""""""""""""""""""

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

