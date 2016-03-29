" 设置新文件的编码为utf-8
set encoding=utf-8

" 开启语法高亮
syntax enable
" 允许制定愈发高亮配色方案替换默认方案
syntax on

" 开启文件类型检测
filetype on

" 自适用不同语言的智能锁进
filetype indent on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on

" 设置历史记录
set history=2000

" 搜索时大小写不敏感
set ignorecase

" 配色方案
set background=dark
" colorscheme solarized

" 禁止光标闪烁
set gcr=a:block-blinkon0

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 高粱显示当前行／列
set cursorline
" set cursorcolumn

" 高亮显示搜索结果
set hlsearch
" 输入搜索文字，自动匹配
set incsearch

" 禁止拆行
set nowrap

" 显示行号
set nu

" 启用鼠标
set mouse=a
set mousehide

" 修复ctrl+m
" 多光标操作选择的bug，但是改变了ctrl+v进行字符选中时将包含光标下的字符
set selection=inclusive
set selectmode=mouse,key

" 将制表符扩展为空格
set expandtab
" 设置制表符占用空格数
set tabstop=4
" 设置格式化时制表符中用空格数
set shiftwidth=4
" 让vim把连续数量的空格视为制表符
set softtabstop=4

" 去除错误提示声音
set novisualbell
set noerrorbells
set t_vb=
set tm=500

" 缩进配置
set smartindent
" 打开自动缩进
set autoindent

" 缩进可视化插件 Indent Guides
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

set completeopt=longest,menu
set wildmenu

"Find trailing whitespace
highlight ExtraWhitespace ctermbg=yellow guibg=yellow
match ExtraWhitespace '\s\+$'
imap <C-Return> <CR><CR><C-o>k<Tab>

command RTW :%s/\s\+$//e

au FileType python set makeprg=pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
au FileType set errorformat=%f:%l:\ %m

set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
