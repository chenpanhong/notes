# linux账号

## root账号

### 修改密码
```
passwd root
```

## work账号

### 增加work账户
```
useradd work
passwd work
```
### 给work账户分配sudu权限
```
vim /etc/sudoers

;文件底部增加
work    ALL=(ALL)       NOPASSWD: ALL
```
