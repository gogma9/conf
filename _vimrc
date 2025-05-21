" global
set nocompatible 
set nobackup
set autochdir

" my maps
nnoremap ; :
nnoremap \ :w !python3<cr>
nnoremap <c-\> :!python3 %<cr>
nnoremap <f3> <esc>gg3O<esc>ggI
inoremap <f3> <esc>gg3O<esc>ggI
nnoremap <f4> :w !python3 -c 'import sys, re; c=re.compile(r"([0-9.,]+)(?=[^0-9.,]*$)"); l=[x[1] for x in map(lambda x: c.search(x), sys.stdin.readlines()) if x]; print("\n\n"); l=[float(x.replace(",","_")) for x in l]; print(f"numbers({len(l)} items): {l}"); print(f"sum: {sum(l)}"); print(f"average: {sum(l)/len(l)}")'<cr>


" my settings
set nu
set ts=4 sw=4 si et
set fencs=utf8,cp949
set enc=utf8
set hlsearch
syn on 
colors desert "or murphy


"
" for Windows
"

if has("gui_running") && has("win32")
    " copy and paste
    nnoremap <c-v> "+pa
    xnoremap <c-v> "+pa
    inoremap <c-v> <esc>"+pa
    xnoremap <c-c> "+y
    nnoremap <c-a> ggVG<c-O><c-O>
    inoremap <c-a> <esc>ggVG<c-O><c-O>a

    " gui
    set go=
    set guifont=cascadia_mono:h12
    set langmenu=en_US.UTF-8
    set columns=112 lines=32
endif
