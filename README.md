# 愿景与使命
> 我常用的配置，linux环境下的账号管理、VIM配置、BASH配置、GIT配置、TMUX配置等；[GOTO](./my/work.md)

好记性不如烂笔头

## Golang篇

## 架构篇
### serverless

## Linux篇

### IPC进程间通信
基于Posix API

#### 管道Pipe
管道是Linux支持的最初Unix IPC形式之一，具有以下特点：
- 管道是半双工的，数据只能向一个方向流动；需要双方通信时，需要建立起两个管道；
- 只能用于父子进程或者兄弟进程之间（具有亲缘关系的进程）；
- 单独构成一种独立的文件系统：管道对于管道两端的进程而言，就是一个文件，但它不是普通的文件，它不属于某种文件系统，而是自立门户，单独构成一种文件系统，并且只存在与内存中。
- 数据的读出和写入：一个进程向管道中写的内容被管道另一端的进程读出。写入的内容每次都添加在管道缓冲区的末尾，并且每次都是从缓冲区的头部读出数据。

Why?
- 管道在内存中是如何存储的？
    - 借助了文件系统的file结构和vfs的索引节点inode，通过将两个file结构指向同一个临时的vfs索引节点，而这个vfs索引节点又指向一个物理页面而实现的；

TODO：
- https://segmentfault.com/a/1190000009528245
- https://www.ibm.com/developerworks/cn/linux/l-ipc/part1/index.html

#### 共享内存
#### 信号量
#### socket

### I/O模型
> https://github.com/Snailclimb/JavaGuide/blob/master/docs/java/BIO-NIO-AIO.md

### 虚拟内存

### 网络协议
