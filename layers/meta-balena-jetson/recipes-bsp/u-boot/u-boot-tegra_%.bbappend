FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

UBOOT_KCONFIG_SUPPORT = "1"

inherit resin-u-boot

# These changes are necessary since balenaOS 2.39.0
# for all boards that use u-boot
SRC_URI_append = " \
    file://0001-Increase-default-u-boot-environment-size.patch \
    file://0001-menu-Use-default-menu-entry-from-extlinux.conf.patch \
    file://0001-Add-part-index-command.patch \
    file://tx2-Integrate-with-Balena-u-boot-environment.patch \
    file://tx2-Load-extlinux-from-rootfs-for-emmc.patch \
"


# In l4t 28.2 below partitions were 0xC and 0xD
RESIN_BOOT_PART_jetson-tx2 = "0x18"
RESIN_DEFAULT_ROOT_PART_jetson-tx2 = "0x19"

# extlinux will now be installed in the rootfs,
# near the kernel, initrd is not used
do_install_append() {
    # Remove generic extlinux.conf added by do_create_extlinux_config()
    rm -rf "${D}/boot/extlinux/extlinux.conf"
    rm -rf "${D}/boot/initrd" \

    install -d ${D}/boot/extlinux
    install -m 0644 ${DEPLOY_DIR_IMAGE}/boot/extlinux.conf ${D}/boot/extlinux/extlinux.conf
    sed -i 's/Image/boot\/Image/g' ${D}/boot/extlinux/extlinux.conf
}

# Free up some space from rootfs
FILES_u-boot-tegra_remove = " \
    /boot/initrd \
"

# Our extlinux is provided by the kernel
do_install[depends] += " virtual/kernel:do_deploy"
