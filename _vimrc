" global
set nocompatible 
set nobackup
set autochdir

" my maps
nnoremap ; :
nnoremap \ :w !python3<cr>
nnoremap <c-\> :!python3 %<cr>
"noremap <c-i> <esc>gg2O<esc>ggI


" my settings
set nu
set ts=4 sw=4 si et
set fencs=utf8,cp949
set enc=utf8
syn on 
colors desert "or murphy

" copy and paste
nnoremap <c-v> "+pa
xnoremap <c-v> "+pa
inoremap <c-v> <esc>"+pa
xnoremap <c-c> "+y

" gui
set go=
set guifont=cascadia_mono:h12
set langmenu=en_US.UTF-8
"set columns=112 lines=32

