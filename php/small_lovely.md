## ... in PHP 5.6+

Code:
```
<?php

sum(1,2,3,4);

function sum(...$params)
{
    echo join(',', $params);
}
```

Output:
```
1,2,3,4
```

## fastcgi_finish_request — 冲刷(flush)所有响应的数据给客户端
