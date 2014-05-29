/*
 *  chardev.c - Create an input/output character device
 */

#include <linux/kernel.h>	/* We're doing kernel work */
#include <linux/module.h>	/* Specifically, a module */
#include <linux/fs.h>
#include <asm/uaccess.h>	/* for get_user and put_user */
#include <linux/cdev.h>

#define SUCCESS 0

#define MY_MAJOR_NUM 202
#define MY_MINOR_NUM 108

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
static ssize_t device_read(struct file *file,	/* see include/linux/fs.h   */
			   char __user * buffer,	/* buffer to be
							 * filled with data */
			   size_t length,	/* length of the buffer     */
			   loff_t * offset)
{

	printk(KERN_INFO "device_read(%p,%p,%d)\n", file, buffer, length);

	return 0;
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

static int __init hello_init(void)
{

	printk(KERN_ALERT "Hello world!\n");
	cdev_init(&my_dev, &my_dev_fops);
	cdev_add(&my_dev, MKDEV(MY_MAJOR_NUM, MY_MINOR_NUM), 1);	
	/* 
	 * Register the character device (atleast try) 
	 */
	register_chrdev_region(MKDEV(MY_MAJOR_NUM, MY_MINOR_NUM), 1, "my_char_device");



	return 0;
}

/* 
 * Cleanup - unregister the appropriate file from /proc 
 */
static void __exit hello_exit(void)
{
	

	/* 
	 * Unregister the device 
	 */

	unregister_chrdev_region(MKDEV(MY_MAJOR_NUM, MY_MINOR_NUM), 1);
	cdev_del(&my_dev);
	printk(KERN_ALERT "Hello world exit\n");
}
module_init(hello_init);
module_exit(hello_exit);

