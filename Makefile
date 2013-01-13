obj-m += lm3533_bl_custom.o

all:
	make -C $(KERNEL_SOURCES) M=$(PWD) modules
clean:
	make -C $(KERNEL_SOURCES) M=$(PWD) clean
	rm -vf *.ko *.o


.PHONY: clean
