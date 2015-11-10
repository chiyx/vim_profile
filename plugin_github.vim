" Vundle plugin manager "{{{
    filetype off    " required
    set rtp+=$VIMFILES/bundle/vundle_vim
    call vundle#begin('$VIMFILES/vundle_plugins')
    Plugin 'gmarik/Vundle.vim'

    " 一款好看的状态栏插件
    Plugin 'bling/vim-airline'
        let g:airline_symbols={}
        let g:airline_powerline_fonts=1
        let g:airline_section_c="%t"
        let g:airline_section_x="%y"
        let g:airline#extensions#tabline#enable=1
        let g:airline#extensions#whitespace#enable=0

    " 树形文件列表插件
    Plugin 'scrooloose/nerdtree'
        " 当只剩该文件窗口时，关闭vim
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
                    \&& b:NERDTreeType == "primary") | q | endif
        map <C-n> :NERDTreeToggle<CR>
        let NERDChristmasTree=1
        let NERDTreeShowHidden=1
        let NERDTreeShowLineNumbers=1

    " file and mru,buffer,tag finder for vim
    Plugin 'kien/ctrlp.vim'
        let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
        set wildignore+=*/tmp/*,*.so,*.zip,*.o,*.obj

    " 快速移动插件
    Plugin 'Lokaltog/vim-easymotion'
        let g:EasyMotion_do_mapping = 0 "Disable default mappings
        " Jump to anywhere you want with minimal keystrokes, with just one
        " key binding.
        nmap <Space> <Plug>(easymotion-s)
        " Turn on case sensitive feature
        let g:EasyMotion_smartcase = 1
        " JK motions: Line motions
        nmap <Leader>j <Plug>(easymotion-j)
        nmap <Leader>k <Plug>(easymotion-k)
        nmap <Leader>w <Plug>(easymotion-w)

    " 自动补全工具，需要额外编译
    Plugin 'Valloric/YouCompleteMe'

    call vundle#end()   " required
    filetype on
    filetype plugin on
    filetype plugin indent on   " required

" "}}}
