## 1.文件头

1.1 参考文件:
- https://github.com/Seldaek/monolog/blob/master/src/Monolog/Logger.php


1.2 注释规范:
- 位置：class之上
- 组成部分:
    - 简短描述
    - 描述
    - @author 作者
- Example:
```
/**
 * Monolog log channel
 *
 * It contains a stack of Handlers and a stack of Processors,
 * and uses them to store records that are added to it.
 *
 * @author Jordi Boggiano <j.boggiano@seld.be>
 */
class Logger implements LoggerInterface, ResettableInterface
{
}
```

```
/**
 * Monolog log channel
 *
 * It contains a stack of Handlers and a stack of Processors,
 * and uses them to store records that are added to it.
 *
 * @author Jordi Boggiano <j.boggiano@seld.be>
 */
class Logger implements LoggerInterface, ResettableInterface
{
}

```
