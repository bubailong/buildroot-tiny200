#!/bin/bash
sunxi-fel -p uboot output/images/u-boot-sunxi-with-spl.bin write 0x80500000 output/images/zImage write 0x80C00000 output/images/devicetree.dtb write 0x80D50000 output/images/rootfs.cpio.uboot
