### kill数据中心脚本
```
kill `ps aux | grep datacenter | grep -v grep | awk '{print $2}' | xargs`
```

### 打开grep的文件集
```
vim -p `grep -ri 'M-易' application/ | awk -F ':' '{print $1}'|xargs`
```
