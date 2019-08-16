set number "显示行号
set cursorline  " 高亮当前行
set cursorcolumn " 高亮当前列
filetype on "文件类型检测
filetype plugin on " 根据监测到的同类型加载对应的插件
syntax enable "语法高亮
syntax on "允许用指定语法高亮配色方案替代默认方案
filetype indent on " 自适应不同语言的智能缩进

autocmd FileType python nnoremap <buffer> <F9> :w<CR>:!python3 % <CR>
let g:ycm_python_binary_path = '/usr/bin/python3'  " python 语法补全
autocmd BufWritePost $MYVIMRC source $MYVIMRC " 让配置变更立即生效
set expandtab "将制表符扩展为空格
set tabstop=4 "设置编辑时制表符占用空格数
set shiftwidth=4 "设置格式化时制表符占用空格数
set softtabstop=4 "让 vim 把连续数量的空格视为一个制表符
set ignorecase "搜索时大小写不敏感
colorscheme elflord "配色方案
set background=dark

set tag+=/usr/cnns/terminate/terminate_codes_tags
set tag+=/home/yugengde/.local/lib/python3.7/site-packages/torch/site-packages-torch-tags
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
"
" vim
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


