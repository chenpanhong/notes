### 指定接口的QPS
```
grep '/v2/getHouses' /data0/www/applogs/api-crep.ke.com/app.log.20190712 > ~/a
cat a | awk -F '[' '{print $2}' | awk -F ']' '{print $1}' | sort | uniq -c |sort -k1,1nr | head -n 10
```

### 单台机器QPS
```
cat access_log | awk -F '[' '{print $2}' | awk '{print $1}' | sort | uniq -c |sort -k1,1nr | head -n 10
```

### 端口转发
```
nohup socat -T 600 UDP4-LISTEN:10000,reuseaddr,fork UDP4:1.1.1.1:10000 >> socat.log 2>&1 &
```

### 查找request time
```
zgrep 'dc/cust/base/plist' /data0/www/logs/archives/190105/190105.i.research-core.api.lianjia.com_10.26.64.5.cn | awk '$12 > 1' | awk '{print $4$5"\t"$12}'
```

### gz文件grep
```
zgrep 'something' `find ./ -name '*\.gz' | grep 'file' | xargs`
```

### 打开grep的文件集
```
vim -p `grep -ri 'M-易' application/ | awk -F ':' '{print $1}' | xargs`
```

### 5XX 499报警
502是端口都不通，业务集群接收不到日志
1. 为什么端口挂了
2. 从日志排查
499是客户端主动断开连接，但是你的服务应该还在响应
1. 客户端超时时间是多少, 服务端超时时间，大于客户端，就会499
2. 用户按了强制刷新

### nginx access 统计
- https://www.cnblogs.com/coolworld/p/6726538.html
