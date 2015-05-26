" 开启语法高亮
syntax on

filetype indent plugin on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set history=2000

set autoread
set cursorline

set mouse=a
set mousehide

set selection=inclusive
set selectmode=mouse,key

set nowrap

set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4
set modeline

set hlsearch
set incsearch

set nu

set completeopt=longest,menu
set wildmenu

"Find trailing whitespace
highlight ExtraWhitespace ctermbg=yellow guibg=yellow
match ExtraWhitespace '\s\+$'

command RTW :%s/\s\+$//e

au FileType python set makeprg=pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
au FileType set errorformat=%f:%l:\ %m

set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
