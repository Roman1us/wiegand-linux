KERNEL_DIR=../linux-2.6

obj-m := wiegand-gpio.o
PWD := $(shell pwd)

all: wiegand-gpio.c
	$(MAKE) ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -C $(KERNEL_DIR) SUBDIRS=$(PWD) modules

clean:
	make -C $(KERNEL_DIR) SUBDIRS=$(PWD) clean
