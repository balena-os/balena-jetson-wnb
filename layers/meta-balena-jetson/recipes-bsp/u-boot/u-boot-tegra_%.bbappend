FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

UBOOT_KCONFIG_SUPPORT = "1"

inherit resin-u-boot

LIC_FILES_CHKSUM = "\
    file://Licenses/README;md5=5a7450c57ffe5ae63fd732446b988025 \
"

# The u-boot version 2021.01 from
# meta-tegra doesn't work well when
# booting with custom device trees, even
# if it's the same dt that's written
# in the bootblob or in the dtb partitions.
# Let's switch to using the Nvidia u-boot.
SRCBRANCH="l4t/l4t-r32.5-v2020.04"
SRCREV="6b630d64fd86beec3efb3312581c50ee8e23a05b"

LIC_FILES_CHKSUM="file://Licenses/README;md5=30503fd321432fc713238f582193b78e"

TEGRA_BOARD_FDT_FILE_jetson-tx2="tegra186-quill-p3310-1000-c03-00-base.dtb"

UBOOT_VARS_append = "\
    TEGRA_BOARD_FDT_FILE \
"

# meta-balena patch does not apply cleanly, so we refactor it
SRC_URI_remove = " file://resin-specific-env-integration-kconfig.patch "
SRC_URI_append = " file://local-resin-specific-env-integration-kconfig.patch "

# These changes are necessary since balenaOS 2.39.0
# for all boards that use u-boot
SRC_URI_append = " \
    file://menu-Use-default-menu-entry-from-extlinux.conf.patch \
    file://0001-add-back-config-defaults.patch \
    file://sysboot-read-custom-fdt-from-env.patch \
    file://include-configs-Don-t-copy-bootargs-fdt-carveout.patch \
"

# In l4t 28.2 below partitions were 0xC and 0xD
BALENA_BOOT_PART_jetson-tx2 = "0x18"
BALENA_DEFAULT_ROOT_PART_jetson-tx2 = "0x19"

SRC_URI_append_jetson-tx2 = " \
    file://Add-part-index-command.patch \
    file://tx2-Integrate-with-Balena-u-boot-environment.patch \
    file://tx2-remove-vpr-carveout-on-rollback.patch \
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
