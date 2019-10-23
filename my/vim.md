```
"==============================================================================
"vim 内置配置
"==============================================================================

"设置 vimrc 修改保存后立刻生效，不用在重新打开
"建议配置完成后将这个关闭，否则配置多了之后会很卡
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

"关闭兼容模式
set nocompatible

"定义快捷键的前缀，即<Leader>
let mapleader="\<space>"

"设置字符集
set encoding=utf-8
"set fileencodings=utf-8
"set fileencoding=utf-8
"set termencoding=utf-8

"设置行号
set nu
"显示括号匹配
set showmatch
"设置当前dir
set autochdir
"高亮显示被找到的文本
set hlsearch
"开启实时搜索
set incsearch
"搜索时大小写不敏感
set ignorecase

"tab 缩进
"设置Tab长度为4空格
set tabstop=4
"设置自动缩进长度为4空格
set shiftwidth=4
"输入tab时自动转换为空格
set expandtab

"tab 标签页切换快捷键
:nn <Leader>1 1gt
:nn <Leader>2 2gt
:nn <Leader>3 3gt
:nn <Leader>4 4gt
:nn <Leader>5 5gt
:nn <Leader>6 6gt
:nn <Leader>7 7gt
:nn <Leader>8 8gt
:nn <Leader>9 8gt
:nn <Leader>0 :tablast<CR>

"==============================================================================
"插件配置
"==============================================================================

"插件开始的位置
call plug#begin('~/.vim/plugged')

"注释插件
":Dox
Plug 'vim-scripts/DoxygenToolkit.vim'

"快速注释
"nerdcommenter注释插件配置
"<leader>cc    注释
"<leader>ca    切换注释模式，// /**/
"<leader>cA    在行尾添加注释
"<leader>cu    删除注释
Plug 'scrooloose/nerdcommenter'

"行尾空格 :FixWhitespace
Plug 'bronson/vim-trailing-whitespace'

"语法检测
Plug 'vim-syntastic/syntastic'

"用来提供一个导航目录的侧边栏
Plug 'scrooloose/nerdtree'

"可以使 nerdtree Tab 标签的名称更友好些
Plug 'jistr/vim-nerdtree-tabs'

"可以在导航目录中看到 git 版本信息
Plug 'Xuyuanp/nerdtree-git-plugin'

"查看当前代码文件中的变量和函数列表的插件，
"可以切换和跳转到代码中对应的变量和函数的位置
"大纲式导航, Go 需要 https://github.com/jstemmer/gotags 支持
Plug 'majutsushi/tagbar'

"自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'

"Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
"文档很牛逼：https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
"airline-branch依赖，参照airline文档
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-lawrencium'
Plug 'vim-scripts/vcscommand.vim'

"可以在文档中显示 git 信息
Plug 'airblade/vim-gitgutter'

"配色方案
"colorscheme one
Plug 'rakr/vim-one'

"插件结束的位置，插件全部放在此行上面
call plug#end()

"==============================================================================
"主题配色
"==============================================================================

"配色方案, 可以从上面插件安装中的选择一个使用
colorscheme one " 主题
set background=dark " 主题背景 dark-深色; light-浅色

"one配色的下拉菜单太难受了，自定义配置一下；
hi Pmenu        guifg=#FFFFFF ctermfg=231  guibg=#808080 ctermbg=244  gui=BOLD cterm=BOLD
hi PmenuSel     guifg=#000000 ctermfg=16   guibg=#CDCDFD ctermbg=189  gui=ITALIC cterm=NONE

"==============================================================================
"NERDTree 插件
"==============================================================================

"打开和关闭NERDTree快捷键
map <F10> :NERDTreeToggle<CR>
"NERDTree聚焦
map <Leader>ff :NERDTreeFocusToggle<CR>
"自动开启nerdtree
"let g:nerdtree_tabs_open_on_console_startup=1

"==============================================================================
" nerdtree-git-plugin 插件
"==============================================================================
let g:NERDTreeIndicatorMapCustom = {
            \"Modified"  : "✹",
            \"Staged"    : "✚",
            \"Untracked" : "✭",
            \"Renamed"   : "➜",
            \"Unmerged"  : "═",
            \"Deleted"   : "✖",
            \"Dirty"     : "✗",
            \"Clean"     : "✔︎",
            \"Ignored"   : "☒",
            \"Unknown"   : "?"
            \ }
let g:NERDTreeShowIgnoredStatus = 1

"==============================================================================
"Syntastic的配置
"==============================================================================
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1  "开启配置时，有莫名乱码，没有找到原因<?php1;95;0c

"==============================================================================
"DoxygenToolkit的配置
"==============================================================================
let g:DoxygenToolkit_authorName="chenpanhong<chenpanhong@ke.com>"

"==============================================================================
"airline的配置
"==============================================================================
let g:airline#extensions#branch#enabled = 1
```
