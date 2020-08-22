# Buildroot Package for Widora TINY200
Opensource BSP for Widora TINY200 boards and Allwinner F1C200s
## Install
### Install necessary packages
```
sudo apt install wget unzip build-essential git swig libncurses-dev libpython3-dev libssl-dev
```
### Download BSP
**Notice: Root permission is not necessery for download or extract.**
```
git clone https://github.com/aodzip/buildroot-tiny200
```
## Make the first build
**Notice: Root permission is not necessery for build firmware.**
### Apply defconfig
**Caution: Apply defconfig will reset all buildroot configurations to default values. Generally, you only need to apply it once.**
```
cd buildroot-tiny200
make widora_tiny200_defconfig
```
### Regular build
```
make
```
## Speed up build progress
### Download speed
Buildroot will download sourcecode when compiling the firmware. If your network connection is slow, please contact Widora to purchase a TF card with the necessary "dl" files. All profits will be used for the development and maintenance of this project.
### Compile speed
If you have a multicore CPU, you can try
```
make -j ${YOUR_CPU_COUNT}
```
or buy a powerful PC for yourself.

## Helper Scripts
 - fel-uboot.sh: Run U-Boot in RAM by FEL mode.
 - fel-linux.sh: Run the whole firmware in RAM by FEL mode.
 - flash-mmc-all.sh: Flash sysimage-sdcard.img to /dev/sdb
 - flash-nor-all.sh: Flash sysimage-flash.img to nor flash by FEL mode.
 - rebuild-uboot.sh: Recompile U-Boot when you direct edit U-Boot sourcecode.
 - rebuild-kernel.sh: Recompile Kernel when you direct edit Kernel sourcecode.

## Wiki & FAQ
 - For tutorials & FAQs: [Widora WiKi](https://widora.io/f1c_mainline)
 - For general discussion: [WhyCan Forum](https://whycan.cn/)
