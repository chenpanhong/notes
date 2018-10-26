#### 创建工作账号 & 增加sudo权限
1. 修改root账号密码
```
passwd root
```

2. 创建work账号 & 分配密码
```
useradd work
passwd work
```

3. 为work账号分配sudo权限
```
vim /etc/sudoers

#文件底部增加
work    ALL=(ALL)       NOPASSWD: ALL
```

#### .bashrc配置

#### .vimrc配置

#### 工具集安装
