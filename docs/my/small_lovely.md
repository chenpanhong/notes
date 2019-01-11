### kill数据中心脚本
```
kill `ps aux | grep datacenter | grep -v grep | awk '{print $2}' | xargs`
```

### 打开grep的文件集
```
vim -p `grep -ri 'M-易' application/ | awk -F ':' '{print $1}'|xargs`
```

### gz文件grep
zgrep 'something' `find ./ -name '*\.gz' | grep 'file' | xargs`


### 查找request time
zgrep 'dc/cust/base/plist' /data0/www/logs/archives/190105/190105.i.research-core.api.lianjia.com_10.26.64.5.cn | awk '$12 > 1' | awk '{print $4$5"\t"$12}'

### 5XX 499报警
502是端口都不通，业务集群接受不到日志

1. 为什么端口挂了
2. 从日志排查

499是客户端主动断开连接，但是你的服务应该还在响应

1. 客户端超时时间是多少, 服务端超时时间，大于客户端，就会499
2. 用户按了强制刷新
