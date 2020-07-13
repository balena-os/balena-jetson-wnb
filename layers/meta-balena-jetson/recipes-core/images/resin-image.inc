IMAGE_FSTYPES_append = " resinos-img"

DTBFILE ?= "${@os.path.basename(d.getVar('KERNEL_DEVICETREE', True).split()[0])}"

do_rootfs_resinos-img_jetson-tx2[depends] += " tegra186-flash-dry:do_deploy \
                                               virtual/kernel:do_deploy \
"

RESIN_BOOT_PARTITION_FILES_jetson-tx2 = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    boot/extlinux.conf:/extlinux/extlinux.conf \
"

# The space resinOS takes will amount to 1GiB
IMAGE_ROOTFS_SIZE = "487424"

RESIN_BOOT_SIZE_jetson-tx2="80960"

PARTITION_TABLE_TYPE = "gpt"

IMAGE_INSTALL_append_jetson-tx2 = " \
    tegra186-flash-dry \
    parted \
    gptfdisk \
    tegra-nvpmodel \
    tegra-configs-nvstartup \
    tegra-configs-udev \
    tegra-firmware-brcm \
    tegra-brcm-patchram \
    linux-firmware-bcm4354 \
    tegra-firmware-xusb \
    bt-scripts \
"
