### kill数据中心脚本
```
kill `ps aux | grep datacenter | grep -v grep | awk '{print $2}' | xargs`
```
