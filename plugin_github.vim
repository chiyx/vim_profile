" Vundle plugin manager "{{{
    filetype off    " required
    set rtp+=$VIMFILES/bundle/vundle_vim
    call vundle#begin('$VIMFILES/vundle_plugins')
    Plugin 'gmarik/Vundle.vim'

    " 括号自动补全
    Plugin 'Raimondi/delimitMate'

    " 通过[前缀了一些常用的命令
    Plugin 'tpope/vim-unimpaired'

    " 支持一些插件的通过.命令重复
    Plugin 'tpope/vim-repeat'

    " 一款好看的状态栏插件
    Plugin 'bling/vim-airline'
        let g:airline_symbols={}
        let g:airline_powerline_fonts=1
        let g:airline_section_c="%t"
        let g:airline_section_x="%y"
        let g:airline#extensions#tabline#enabled=1
        let g:airline#extensions#whitespace#enabled=0

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

    " 显示缩进对齐虚线插件
    Plugin 'Yggdroot/indentLine'
       let g:indentLine_char = "┊"
       let g:indentLine_first_char = "┊"
       let g:indentLine_color_term = 239
       let g:indentLine_color_gui = '#A4E57E'
       nmap <leader>il :IndentLinesToggle<CR>

    " git插件
    Plugin 'tpope/vim-fugitive'

    " js语法高亮
    Plugin 'pangloss/vim-javascript'

    " json语法高亮
    Plugin 'elzr/vim-json'
        let g:vim_json_syntax_conceal = 0

    " js自动补全插件
    Plugin 'ternjs/tern_for_vim'

    " 代码片段插件
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'tomtom/tlib_vim'
    Plugin 'honza/vim-snippets'
    Plugin 'garbas/vim-snipmate'
        imap <expr> <C-\> pumvisible()? '<esc>a<Plug>snipMateNextOrTrigger': '<Plug>snipMateNextOrTrigger'
        smap <C-\> <Plug>snipMateNextOrTrigger

    " 代码注释插件
    Plugin 'scrooloose/nerdcommenter'
        " 注释时自动加上空格
        let g:NERDSpaceDelims = 1

    " 文件模板插件
    Plugin 'aperezdc/vim-template'
        let g:user="pitchy"
        let g:email="chiyxme@outlook.com"

    " 自动补全工具，需要额外编译
    Plugin 'Valloric/YouCompleteMe'
        let g:ycm_global_ycm_extra_conf=$VIMFILES.'/vundle_plugins/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

    call vundle#end()   " required
    filetype on
    filetype plugin on
    filetype plugin indent on   " required

" "}}}
