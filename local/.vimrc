set nocompatible              " be iMproved, required
filetype off                  " required

"设置leader为，默认为\ 
let mapleader="\<space>"

"解决低版本情况md文件被识别为modula2
"https://stackoverflow.com/questions/23279292/how-to-make-vim-understand-that-md-files-contain-markdown-code-and-not-modula/23279293
autocmd BufNewFile,BufRead *.md set filetype=markdown

"""""""""""""""""""""基础配置"""""""""""""""""""""""
"设置字符集
:set encoding=utf-8
:set fileencodings=utf-8
:set fileencoding=utf-8
:set termencoding=utf-8

"状态栏
set ruler "在编辑过程中，在右下角显示光标位置的状态行
set laststatus=2
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

syntax on "自动话法高亮
set nu "是否显示行号
set autochdir "设置当前dir
set hlsearch "高亮显示被找到的文本
set incsearch "输入搜索内容时，显示搜索结果
set ignorecase "搜索忽略大小写
set expandtab "输入tab时自动转换为空格
set shiftwidth=4 "设定<<和>>命令移动时的宽度为4
set tabstop=4 "设定tab长度为4
"""""""""""""""""""""基础配置结束"""""""""""""""""""""

"""""""""""""""""""""插件配置"""""""""""""""""""""""""
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1 "不折叠

"目录树
Plugin 'scrooloose/nerdtree'

"注释
"nerdcommenter注释插件配置
"<leader>cc    注释
"<leader>ca    切换注释模式，// /**/
"<leader>cA    在行尾添加注释
"<leader>cu    删除注释
Plugin 'scrooloose/nerdcommenter'

"tagList
Plugin 'taglist.vim'
"tlist
"zc, zo, zi, +, space
""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd='/usr/bin/ctags'  "exuberant ctags命令
let Tlist_Show_One_File=1                   "显示一个文件的tag
let Tlist_Exit_OnlyWindow=1                 "退出时，是否关闭taglist窗口
let Tlist_File_Fold_Auto_Close=1            "非当前文件，函数列表折叠隐藏
let Tlist_Use_Right_Window=1                "taglist窗口右侧显示
let Tlist_GainFocus_On_ToggleOpen=1         "toggle时焦点在taglist窗口
let Tlist_Use_SingleClick=1
""""""""""""""""""""""""""""""""""

"语法检测
Plugin 'Syntastic'
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

"注释插件
Plugin 'DoxygenToolkit.vim'

"行尾空格 :FixWhitespace
Plugin 'bronson/vim-trailing-whitespace'

"yaml缩进
Plugin 'avakhov/vim-yaml'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
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
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
