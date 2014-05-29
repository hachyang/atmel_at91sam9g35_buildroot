#include <linux/kernel.h>	/* We're doing kernel work */
#include <linux/module.h>	/* Specifically, a module */
#include <linux/fs.h>
#include <asm/uaccess.h>	/* for get_user and put_user */
#include <linux/cdev.h>
#include <linux/platform_device.h>
#include <linux/of_gpio.h>
#include <linux/pinctrl/consumer.h>
#include <linux/interrupt.h>
#include <asm/gpio.h>
#include <linux/uaccess.h>
#include <linux/wait.h>
#include <linux/sched.h>

#define SUCCESS 0

#define MY_MAJOR_NUM 202
#define MY_MINOR_NUM 108

#define MAX_KEY_STATES 256
static char hello_keys_buf[MAX_KEY_STATES];
static int buf_rd, buf_wr;

static char *HELLO_KEYS_NAME = "AP8";
int gpio_nb;
static DECLARE_WAIT_QUEUE_HEAD(hello_keys_wait);

//Add an ISR function to handle the hardware interrupt
static irqreturn_t hello_keys_isr(int irq, void *dev_id)
{
	int val;
	printk(KERN_ALERT "interrupt received. key: %s\n", HELLO_KEYS_NAME);
	val=gpio_get_value(gpio_nb);
	/* Store the button state in a circular buffer */
	if (val==0)
		hello_keys_buf[buf_wr++]='D';
	else
		hello_keys_buf[buf_wr++]='U';
	if(buf_wr>=MAX_KEY_STATES)
		buf_wr=0;
	/* Wake up all processes consuming the contents of the buffer */
	wake_up(&hello_keys_wait);

	printk(KERN_ALERT "Button state: %d\n", val);
	return IRQ_HANDLED;
}

/* 
 * This is called whenever a process attempts to open the device file 
 */
static int device_open(struct inode *inode, struct file *file)
{

	printk(KERN_INFO "device_open(%p)\n", file);

	return SUCCESS;
}

static int device_release(struct inode *inode, struct file *file)
{

	printk(KERN_INFO "device_release(%p,%p)\n", inode, file);

	return SUCCESS;
}

/* 
 * This function is called whenever a process which has already opened the
 * device file attempts to read from it.
 */

static int device_read(struct file *file, char __user *buff,
size_t count, loff_t *off)
{
	int ret;
	char ch;
	printk(KERN_INFO "my_dev_read() is called\n");
	/* Wait for the circular buffer to be non-empty */
	ret = wait_event_interruptible(hello_keys_wait, buf_wr != buf_rd);
	if (ret)
		/* Received a signal */
		return ret;
	ch = hello_keys_buf[buf_rd];
	ret= copy_to_user(buff, &ch, 1);
	if (ret)
		return -EFAULT;
	buf_rd++;
	if (buf_rd >= MAX_KEY_STATES)
		buf_rd = 0;
	/* Increase the offset in the current file and return
	the number of characters transferred. */
	*off+=1;
	return 1;
}


/* 
 * This function is called when somebody tries to
 * write into our device file. 
 */
static ssize_t
device_write(struct file *file,
	     const char __user * buffer, size_t length, loff_t * offset)
{

	printk(KERN_INFO "device_write(%p,%s,%d)", file, buffer, length);

	return 0;
}

/* 
 * This function is called whenever a process tries to do an ioctl on our
 * device file. We get two extra parameters (additional to the inode and file
 * structures, which all device functions get): the number of the ioctl called
 * and the parameter given to the ioctl function.
 *
 * If the ioctl is write or read/write (meaning output is returned to the
 * calling process), the ioctl call returns the output of this function.
 *
 */
int device_ioctl(
		 struct file *file,	
		 unsigned int cmd,
		 unsigned long arg)
{
	printk(KERN_INFO "device_ioctl() is called, cmd = %d, arg = %ld\n", cmd, arg);
	return SUCCESS;
}

/* Module Declarations */

/* 
 * This structure will hold the functions to be called
 * when a process does something to the device we
 * created. Since a pointer to this structure is kept in
 * the devices table, it can't be local to
 * init_module. NULL is for unimplemented functions. 
 */
struct file_operations my_dev_fops = {
	.read = device_read,
	.write = device_write,
	.unlocked_ioctl = device_ioctl,
	.open = device_open,
	.release = device_release,	/* a.k.a. close */
};

/* 
 * Initialize the module - Register the character device 
 */
static struct cdev my_dev;

static int __init my_probe(struct platform_device *pdev)
{
	int irq;
	struct pinctrl *pinctrl;

	printk(KERN_ALERT "my_probe() function is called.\n");

	pinctrl = devm_pinctrl_get_select_default(&pdev->dev);
	if (IS_ERR(pinctrl)) {
		dev_err(&pdev->dev, "Failed to request pinctrl\n");
		return PTR_ERR(pinctrl);
	}
	gpio_nb = of_get_gpio(pdev->dev.of_node, 0);
	if (!gpio_is_valid(gpio_nb))
		return -EINVAL;
	irq = gpio_to_irq(gpio_nb);

	if(request_irq (irq, hello_keys_isr, IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,HELLO_KEYS_NAME, NULL)) {
        	printk(KERN_ERR "my_device: cannot register IRQ %d\n", irq);
		return -EIO;

	}	

	cdev_init(&my_dev, &my_dev_fops);
	cdev_add(&my_dev, MKDEV(MY_MAJOR_NUM, MY_MINOR_NUM), 1);
	register_chrdev_region(MKDEV(MY_MAJOR_NUM, MY_MINOR_NUM), 1,
	"my_char_device");
	return 0;
}
static int __exit my_remove(struct platform_device *pdev)
{
	printk(KERN_ALERT "my_remove() function is called.\n");	
	free_irq(gpio_to_irq(gpio_nb), NULL);
	gpio_free(gpio_nb);

	unregister_chrdev_region(MKDEV(MY_MAJOR_NUM, MY_MINOR_NUM), 1);
	cdev_del(&my_dev);
	return 0;
}

//Declare a list of devices supported by the driver
static const struct of_device_id my_of_ids[] = {
	{.compatible = "hach,hellokeys"},
	{ }
};
//Add a platform driver structure
static struct platform_driver my_platform_driver = {
	.probe = my_probe,
	.remove = my_remove,
	.driver = {
		.name = "hellokeys",
		.of_match_table = my_of_ids,
		.owner = THIS_MODULE,
	}
};
static int __init hello_init(void)
{
	printk(KERN_ALERT "Hello, keys\n");
	return platform_driver_register(&my_platform_driver);
}
static void __exit hello_exit(void)
{
	printk(KERN_ALERT "Bye, keys\n");
	platform_driver_unregister(&my_platform_driver);
}

module_init(hello_init);
module_exit(hello_exit);

MODULE_AUTHOR ("Robert Yang <ryang@hach.com>");
MODULE_DESCRIPTION("Hach Driver");
MODULE_LICENSE("Dual BSD/GPL");

