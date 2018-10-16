### 前言
日常的工作中，需要频繁的登陆堡垒机，登陆过程又比较复杂，tmux是我比较常用的终端工具，分享给大家使用

### Tmux简介
- 在服务端运行，强大的窗口管理和会话保持
- 基于命令行，可定制多种插件


### 会话(session)、窗口(window)、窗格(panel)的概念
- session 默认开启tmux时，会建立一个session, 在这个会话中，会开启一个window, tmux可以创建多个session, 并且可随意切换
- window 比session中一些，一个session管理多个window
- panel 比window小一些，用户可对window进行随意的切割，切割出的块就叫panel
它们的从属关系：session -> window -> panel

![cmd-markdown-logo](https://www.zybuluo.com/static/img/logo.png)








#### Tmux配置
- 默认bind-key 为 C-b
- 查看快捷键 C-b + ?
- 加载配置文件(任选一种, 第二种不太好用)
    - tmux kill-server 重启所有tmux 进程
    - 在tmux 会话中使用⌃b : 进入控制台模式，输入 source-file ~/.tmux.conf 命令重新加载配置。

```
# 开启鼠标模式(特别不好用)
set -g mode-mouse on

# 允许鼠标选择窗格
set -g mouse-select-pane on

# 如果喜欢给窗口自定义命名，那么需要关闭窗口的自动命名
set-option -g allow-rename off

# 如果对 vim 比较熟悉，可以将 copy mode 的快捷键换成 vi 模式
set-window-option -g mode-keys vi
```

### Tmux常用命令
#### Tmux Shell常用命令
- tmux new -s foo               # 新建名称为 foo 的会话
- tmux ls                       # 列出所有 tmux 会话
- tmux a                        # 恢复至上一次的会话
- tmux a -t foo                 # 恢复名称为 foo 的会话，会话默认名称为数字
- tmux kill-session -t foo      # 删除名称为 foo 的会话
- tmux kill-server              # 删除所有的会话

#### Tmux 会话内常用命令
#### Panel窗格操作
- % 左右平分出两个窗格
- " 上下平分出两个窗格
- x 关闭当前窗格
- { 当前窗格前移
- } 当前窗格后移
- ; 选择上次使用的窗格
- o 选择下一个窗格，也可以使用上下左右方向键来选择
- space 切换窗格布局，tmux 内置了五种窗格布局，也可以通过 ⌥1 至 ⌥5来切换
- z 最大化当前窗格，再次执行可恢复原来大小
- q 显示所有窗格的序号，在序号出现期间按下对应的数字，即可跳转至对应的窗格

#### Window窗口操作
- c 新建窗口，此时当前窗口会切换至新窗口，不影响原有窗口的状态
- p 切换至上一窗口
- n 切换至下一窗口
- w 窗口列表选择，注意 macOS 下使用 ⌃p 和 ⌃n 进行上下选择
- & 关闭当前窗口
- , 重命名窗口，可以使用中文，重命名后能在 tmux 状态栏更快速的识别窗口 id
- 0 切换至 0 号窗口，使用其他数字 id 切换至对应窗口
- f 根据窗口名搜索选择窗口，可模糊匹配

#### Session会话操作
- $ 重命名当前会话
- s 选择会话列表
- d detach 当前会话，运行后将会退出 tmux 进程，返回至 shell 主进程
