### 创建工作账号 & 增加sudo权限
1. 修改root账号密码
```
passwd root
```

2. 创建work账号 & 分配密码
```
useradd work
passwd work
```

3. work账号分配sudo权限
```
vim /etc/sudoers

#文件底部增加
work    ALL=(ALL)       NOPASSWD: ALL
```

4. 修改hostname
```
sudo hostname chenpanhong
```

5. ssh-copy-id
```
work@chenpanhong:~$ vim .ssh/config
Host sa
HostName 10.26.27.56
User work

work@chenpanhong:~$ chown $USER ~/.ssh/config
work@chenpanhong:~$ chmod 644 ~/.ssh/config
work@chenpanhong:~$ ssh-copy-id work@sa
```
### git配置
```
~/.gitconfig
[user]
    name = chenpanhong
    email = chenpanhong@lianjia.com
[color]
    ui = true
[alias]
    co = checkout
    ci = commit
    st = status
[core]
    editor = vim
```

### bashrc配置
1. 基础配置
```
#设置utf8字符集
export LC_ALL=en_US.utf8

#自定义bin目录
PATH=$PATH:$HOME/bin
export PATH

#配置PS1操作符号
function parse_git_branch_and_add_brackets {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\(\1\)/'
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\[\033[01;32m\]$(parse_git_branch_and_add_brackets)\[\033[00m\]\$ '

#常用别名配置
alias g='grep -rin --color'
alias grep='grep --color'
```

### vimrc配置
1. 基础配置
```
"""""""""""""""""""""基础配置"""""""""""""""""""""""
"设置leader
let mapleader="\<space>"

"设置字符集
:set encoding=utf-8
:set fileencodings=utf-8
:set fileencoding=utf-8
:set termencoding=utf-8

"状态栏
set ruler "在编辑过程中，在右下角显示光标位置的状态行
set laststatus=2
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

"解决低版本情况md文件被识别为modula2
"https://stackoverflow.com/questions/23279292/how-to-make-vim-understand-that-md-files-contain-markdown-code-and-not-modula/23279293
autocmd BufNewFile,BufRead *.md set filetype=markdown

"常用设置
syntax on "自动话法高亮
set nu "是否显示行号
set autochdir "设置当前dir
set hlsearch "高亮显示被找到的文本
set incsearch "输入搜索内容时，显示搜索结果
set ignorecase "搜索忽略大小写
set expandtab "输入tab时自动转换为空格
set shiftwidth=4 "设定<<和>>命令移动时的宽度为4
set tabstop=4 "设定tab长度为4

"vundle start
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
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

"vundle end
call vundle#end()            " required
filetype plugin indent on    " required
"""""""""""""""""""""基础配置结束"""""""""""""""""""""
```

### tmux配置
```
# 允许鼠标选择窗格
set -g mouse-select-pane on

# 如果喜欢给窗口自定义命名，那么需要关闭窗口的自动命名
set-option -g allow-rename off

# 如果对 vim 比较熟悉，可以将 copy mode 的快捷键换成 vi 模式
set-window-option -g mode-keys vi
```

### 常用工具安装 & 配置
1. 命令自动补全bash_completion http://blog.fpliu.com/it/software/bash-completion
```
sudo yum install bash-completion
```

2. 自定义目录小工具cdthis https://github.com/pandaoknight/cdthis

3. Vim插件管理Vundle安装 https://github.com/VundleVim/Vundle.vim

4. Git命令行图形化工具Tig
```
sudo yum install tig
```

### 常用自定义小命令
1. 启动swagger服务
```
nohup node /home/work/swagger-editor/node_modules/.bin/http-server -i -a 0.0.0.0 -p 3001 &
```
