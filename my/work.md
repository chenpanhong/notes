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
### git配置
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

### bashrc配置
[我的常用配置，不定时更新~](./bash.md)

### vimrc配置
[我的常用配置，不定时更新~](./vim.md)

### tmux配置
[我的常用配置，不定时更新~](./tmux.md)
