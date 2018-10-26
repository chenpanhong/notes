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
```

### 常用工具安装 & 配置
