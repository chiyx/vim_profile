" vim profile

" 设置非兼容模式
set nocp

" leader keymap "{{{
    let mapleader=','
    let maplocalleader='-'
    " 将原来的leader映射到逗号功能中(反相查找)
    noremap \ ,
" "}}}

" file encoding "{{{
    set enc=utf-8
    set fencs=utf-8,ucs-bom,gbk,cp936,latin1
" "}}}

" clolorscheme setting "{{{
    let g:molokai_original=1
    let g:rehash256=1
    colorscheme molokai
    if exists('+colorcolumn')
        set colorcolumn=80
    else
        au BufferWinEnter * let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)
    endif
" "}}}

" undo setting " {{{
    if has("persistent_undo")
        set undolevels=500
        set undoreload=1000
        set undofile
        set undodir=$VIMFILES/undo
    endif
" "}}}

" general setting "{{{
    " 历史命令的队列长度
    set history=256
    " 多键命令各个键的超时间隔
    set timeoutlen=500
    " 剪切版支持
    set clipboard+=unnamed
    " 粘贴模式的触发快捷键
    set pastetoggle=<F10>
    " 关闭错误的提示声音
    set noerrorbells
    set visualbell t_vb=
    " 智能的间隔对齐
    set shiftround
    " 不产生swap文件,和备份文件
    set noswapfile
    set nobackup
    " 当文件变化时，自动加载
    set autoread
    " 状态栏高度
    set laststatus=2
    " 在底部展示还未打完打命令
    set showcmd
    " 在底部展示当前打模式
    set showmode
    " 代码补全，不需要预览窗口
    set completeopt-=preview
    " 支持256色
    set t_Co=256
    " 支持鼠标
    set mouse=a
    " 不好解释
    set ttyfast
" "}}}    

" visual setting "{{{
    " 激活语法高亮
    syntax on
    " 暗色背景
    set background=dark
    " 高亮当前行
    set cursorline
    " 显示行号
    set number
    " 显示光标位置
    set ruler
    " 让backspace键好使
    set backspace=indent,eol,start
    " tab键的空格个数
    set tabstop=4
    " 缩进的宽度
    set shiftwidth=4
    " 用空格代替tab
    set expandtab
    " 不好解释
    set softtabstop=4
    " 类c语言的智能缩进
    set smartindent
    set cindent
    " 高亮搜索结果
    set hlsearch
    " 增量式搜索
    set incsearch
    " 搜索忽略大小写
    set ignorecase
    " 搜索时智能感知大小写，必须开启ignorecase
    set smartcase
    " 展示搜索结果
    set showmatch
    " 显示空白符号
    set list
    set listchars=tab:▸\ ,trail:▫
" "}}}    

" some keymap "{{{
    " 按ctrl＋s保存
    nmap <c-s> :w<cr>
    imap <c-s> <c-o>:w<cr>
    " 面板间移动
    noremap <C-h> <C-w>h
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k
    noremap <C-l> <C-w>l

    " 移动面板
    noremap <C-w>h <C-W>H
    noremap <C-w>j <C-W>J
    noremap <C-w>k <C-W>K
    noremap <C-w>l <C-W>L

    " 面板宽度调整,默认按10列来调整
    noremap <C-w>> <C-w>10>
    noremap <C-w>< <C-w>10<

    " 基于屏幕行移动
    noremap j gj
    noremap k gk
    noremap gj j
    noremap k gk

    " 普通模式和可视模式下按tab缩进
    nnoremap <tab> V>
    nnoremap <s-tab> V<

    " 插入模式下按;;在行尾添加;
    imap ;; <esc>A;

" "}}}

" some loal plugin and script "{{{
    runtime macros/matchit.vim
" "}}}

" fold setting "{{{
    " 基于标记的方式折叠代码
    set foldenable
    set fdm=syntax
    " 最大折叠深度为3
    set foldnestmax=3
    " 默认不折叠
    set foldlevel=100
    autocmd Filetype vim set fdm=marker
" }}}

