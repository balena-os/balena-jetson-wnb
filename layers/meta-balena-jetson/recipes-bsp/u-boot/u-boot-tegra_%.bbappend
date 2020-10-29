FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

UBOOT_KCONFIG_SUPPORT = "1"

inherit resin-u-boot

# Latest version as of today in upstream
SRCREV = "565a18c42c8389916639f8225163942b559bb5f2"

# In l4t 28.2 below partitions were 0xC and 0xD
RESIN_BOOT_PART_jetson-tx2 = "0x18"
RESIN_DEFAULT_ROOT_PART_jetson-tx2 = "0x19"

TEGRA_BOARD_FDT_FILE_j120-apollo-tx2="tegra186-quill-p3310-1000-c03-00-base_apollo.dtb"

UBOOT_VARS_append = "\
    TEGRA_BOARD_FDT_FILE \
"

# These changes are necessary since balenaOS 2.39.0
# for all boards that use u-boot
SRC_URI_append = " \
    file://0001-Increase-default-u-boot-environment-size.patch \
    file://0001-menu-Use-default-menu-entry-from-extlinux.conf.patch \
    file://0001-Add-part-index-command.patch \
    file://tx2-Integrate-with-Balena-u-boot-environment.patch \
    file://tx2-Load-extlinux-from-rootfs-for-emmc.patch \
    file://sysboot-read-custom-fdt-from-env.patch \
    file://u-boot-Mention-default-dtb.patch \
    file://use-u-boot-2016-custom-fdt-address.patch \
"

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
