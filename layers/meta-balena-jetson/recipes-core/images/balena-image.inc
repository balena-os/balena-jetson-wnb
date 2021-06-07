IMAGE_FSTYPES_append = " balenaos-img"

DTBFILE ?= "${@os.path.basename(d.getVar('KERNEL_DEVICETREE', True).split()[0])}"

do_rootfs_balenaos-img_jetson-tx2[depends] += " tegra186-flash-dry:do_deploy \
                                               virtual/kernel:do_deploy \
"

BALENA_BOOT_PARTITION_FILES_jetson-tx2 = " \
    boot/extlinux.conf:/extlinux/extlinux.conf \
"

# The space resinOS takes will amount to 1GiB
IMAGE_ROOTFS_SIZE = "487424"

BALENA_BOOT_SIZE_jetson-tx2="80960"

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
    jetson-dtbs \
"

