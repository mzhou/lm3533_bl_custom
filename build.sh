#!/bin/sh -ue

export KERNEL_SOURCES='/dev/shm/kernel'
export ARCH='arm'
export CROSS_COMPILE='/usr/bin/arm-linux-gnueabi-'

zcat config.gz >"$KERNEL_SOURCES"/.config
make -C "$KERNEL_SOURCES" oldconfig prepare modules_prepare

make clean all
