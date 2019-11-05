### 创建工作账号
1. 修改root账号密码
```
passwd root
```

2. 创建work账号
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

5. SSH登陆免密码
```
work@chenpanhong:~$ vim .ssh/config
Host sa
HostName xx.xx.xx.xx
User work

work@chenpanhong:~$ chown $USER ~/.ssh/config
work@chenpanhong:~$ chmod 644 ~/.ssh/config
work@chenpanhong:~$ ssh-copy-id work@sa
```
### GIT配置
```
~/.gitconfig
[user]
    name = chenpanhong
    email = chenpanhong@ke.com
[color]
    ui = true
[alias]
    co = checkout
    ci = commit
    st = status
[core]
    editor = vim
```

### BASHRC配置
goto [.bashrc](./bash.md)

### VIMRC配置
goto [.vimrc](./vim.md)

### TMUX配置
goto [tmux教程](../tool/tmux.md)
```
vim ~/.tmux.conf 
# 允许鼠标选择窗格
set -g mouse-select-pane on

# 如果喜欢给窗口自定义命名，那么需要关闭窗口的自动命名
set-option -g allow-rename off 

# 如果对 vim 比较熟悉，可以将 copy mode 的快捷键换成 vi 模式
set-window-option -g mode-keys vi
```
