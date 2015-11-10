""""""""""""""""""""""""""""""""""""""""""""
"                                          "
" Owner: Pitchy - chiyxme@outlook.com      "
" Modified: 2015-11-05  18:06:51           "
"                                          "
""""""""""""""""""""""""""""""""""""""""""""


" 判断系统
let g:iswindows=0
let g:islinux=0
let $VIMFILES=$HOME.'/.vim'
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
    let $VIMFILES=$VIM.'/vimfiles'
else
    let g:islinux = 1
endif

" 判断是否是终端还是Gvim
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif

" import
so $VIMFILES/vimrc_common.vim
so $VIMFILES/plugin_github.vim
