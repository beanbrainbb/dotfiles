" C syntax globals
set nowrap
" set tags+=/usr/bin/uctags
command CtagsBuild execute ":!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
