#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Panhong Chen");
MODULE_DESCRIPTION("This is a demo");
MODULE_VERSION("0.01");

static int __init lkm_example_init(void) {
     printk(KERN_INFO "Hello, Panhong!\n");
      return 0;
}
static void __exit lkm_example_exit(void) {
     printk(KERN_INFO "Goodbye, Panhong!\n");
}
module_init(lkm_example_init);
module_exit(lkm_example_exit);
