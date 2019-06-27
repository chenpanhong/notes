## composer组件学习

### symfony/console
Console组件令创建美观、可测试的命令行界面（CLI）变得容易
- http://www.symfonychina.com/doc/current/components/console.html

### symfony/process
Process组件在子进程（sub-processes）中执行命令。
- http://www.symfonychina.com/doc/current/components/process.html

### symfony/filesystem
Filesystem组件为文件系统提供基本功能。
- http://www.symfonychina.com/doc/current/components/filesystem.html

### laravel/installer
```
vendor/laravel/installer/
|-- composer.json
|-- laravel                 //使用了symfony/console类包
|-- LICENSE.md
|-- src
|   `-- NewCommand.php      //使用了symfony/console, symfony/process, symfony/filesystem类包, 下载源码->解压->缓存等目录权限->清除垃圾文件->composer安装
`-- zipper.sh
```
