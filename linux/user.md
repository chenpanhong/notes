# linux账号

## root

### 修改密码
```
passwd root
```

## work

### 增加

```
useradd work
passwd work
```

### 分配sudo权限

```
vim /etc/sudoers

#文件底部增加
work    ALL=(ALL)       NOPASSWD: ALL
```
