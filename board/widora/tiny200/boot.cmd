setenv distro_bootpart 2

setenv bootargs_common console=ttyS0,115200 earlyprintk rootwait consoleblank=0 net.ifnames=0 biosdevname=0

setenv bootargs ${bootargs_common} root=/dev/mmcblk0p${distro_bootpart}

fatload mmc 0 $kernel_addr_r zImage
fatload mmc 0 $fdt_addr_r devicetree.dtb
bootz $kernel_addr_r - $fdt_addr_r

setenv bootargs ${bootargs_common} root=/dev/mmcblk1p${distro_bootpart}

fatload mmc 1 $kernel_addr_r zImage
fatload mmc 1 $fdt_addr_r devicetree.dtb
bootz $kernel_addr_r - $fdt_addr_r
