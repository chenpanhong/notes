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
