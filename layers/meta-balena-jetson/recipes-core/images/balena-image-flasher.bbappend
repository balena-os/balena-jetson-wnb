include balena-image.inc

BALENA_BOOT_PARTITION_FILES_append_jetson-tx2 = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    boot/extlinux.conf_flasher:/extlinux/extlinux.conf \
"
