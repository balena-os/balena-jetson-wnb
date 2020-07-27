inherit kernel-resin deploy

FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SCMVERSION="n"


# Prevent delayed booting
# and support using partition label to load rootfs
# in the case of jetson-xavier and tx2 flasher
SRC_URI_append = " \
    file://0001-revert-random-fix-crng_ready-test.patch \
    file://0001-Support-referencing-the-root-partition-label-from-GP.patch \
    file://0001-Expose-spidev-to-the-userspace.patch \
    file://0002-mttcan-ivc-enable.patch \
    file://realsense_hid_linux-yocto_4.4.patch \
    file://realsense_metadata_linux-yocto_4.4.patch \
    file://realsense_powerlinefrequency_control_fix_linux-yocto_4.4.patch \
    file://realsense_camera_formats_linux-yocto_4.4.patch \
    file://realsense_format_desc_4.4.patch \
    file://0002-qmi_wwan-Update-from-4.14-kernel.patch \
    file://0001-mttcan_ivc-Fix-build-failure-with-kernel-4.9.patch \
    file://tegra186-quill-p3310-1000-c03-00-base.dtb \
"

TEGRA_INITRAMFS_INITRD = "0"

RESIN_CONFIGS_append = " debug_kmemleak "

RESIN_CONFIGS[debug_kmemleak] = " \
    CONFIG_HAVE_DEBUG_KMEMLEAK=n \
    CONFIG_DEBUG_KMEMLEAK=n \
    CONFIG_HAVE_DEBUG_KMEMLEAK=n \
    CONFIG_DEBUG_KMEMLEAK_DEFAULT_OFF=y \
    CONFIG_DEBUG_KMEMLEAK_SCAN_ON=n \
"

# These should be for all boards that come from tx2
RESIN_CONFIGS_append_jetson-tx2 = " tpg compat uvc egalax serial spi gamepad can"
RESIN_CONFIGS[tpg] = " \
                CONFIG_VIDEO_TEGRA_VI_TPG=m \
"

RESIN_CONFIGS[compat] = " \
                CONFIG_COMPAT=y \
"

RESIN_CONFIGS[uvc] = " \
                CONFIG_USB_VIDEO_CLASS=m \
                CONFIG_USB_VIDEO_CLASS_INPUT_EVDEV=y \
"

RESIN_CONFIGS_DEPS[uvc] = " \
                CONFIG_MEDIA_CAMERA_SUPPORT=y \
                CONFIG_VIDEO_V4L2_SUBDEV_API=y \
                CONFIG_VIDEO_V4L2=m \
                CONFIG_VIDEOBUF2_CORE=m \
                CONFIG_VIDEOBUF2_MEMOPS=m \
                CONFIG_VIDEOBUF2_VMALLOC=m \
                CONFIG_MEDIA_USB_SUPPORT=y \
                CONFIG_USB_GSPCA=m \
                CONFIG_SND_USB=y \
                CONFIG_SND_USB_AUDIO=m \
"

RESIN_CONFIGS[egalax] = " \
                CONFIG_TOUCHSCREEN_EGALAX=m \
"

RESIN_CONFIGS[serial] = " \
                CONFIG_USB_SERIAL=y \
                CONFIG_USB_SERIAL_GENERIC=y \
                CONFIG_USB_SERIAL_CONSOLE=y \
"

RESIN_CONFIGS[spi] = " \
                CONFIG_SPI=y \
                CONFIG_SPI_MASTER=y \
                CONFIG_SPI_SPIDEV=m \
"
RESIN_CONFIGS_DEPS[spi] = " \
                CONFIG_QSPI_TEGRA186=y \
                CONFIG_SPI_TEGRA144=y \
"

RESIN_CONFIGS[gamepad] = " \
                CONFIG_JOYSTICK_XPAD=m \
"
RESIN_CONFIGS_DEPS[gamepad] = " \
                CONFIG_INPUT_JOYSTICK=y \
                CONFIG_USB_ARCH_HAS_HCD=y \
"

RESIN_CONFIGS[can] = " \
                CONFIG_CAN=m \
                CONFIG_CAN_RAW=m \
                CONFIG_CAN_DEV=m \
                CONFIG_MTTCAN=m \
                CONFIG_MTTCAN_IVC=m \
"

RESIN_CONFIGS[visos] = " \
    CONFIG_PCI_TEGRA=y \
    CONFIG_BLUEDROID_PM=y \
"

KERNEL_ROOTSPEC_jetson-tx2 = " \${resin_kernel_root} ro rootwait "

# Since 32.1 on tx2, after kernel is loaded sd card becomes mmcblk2 opposed
# to u-boot where it was 1. This is another cause of failure of
# previous flasher images.  Use label to distinguish rootfs
KERNEL_ROOTSPEC_FLASHER_jetson-tx2 = " root=LABEL=flash-rootA ro rootwait flasher"

generate_extlinux_conf() {
    install -d ${D}/${KERNEL_IMAGEDEST}/extlinux
    rm -f ${D}/${KERNEL_IMAGEDEST}/extlinux/extlinux.conf
    kernelRootspec="${KERNEL_ROOTSPEC}" ; cat >${D}/${KERNEL_IMAGEDEST}/extlinux/extlinux.conf << EOF
DEFAULT primary
TIMEOUT 10
MENU TITLE Boot Options
LABEL primary
      MENU LABEL primary ${KERNEL_IMAGETYPE}
      LINUX /${KERNEL_IMAGETYPE}
      APPEND \${cbootargs} ${kernelRootspec} \${os_cmdline} sdhci_tegra.en_boot_part_access=1
EOF
    kernelRootspec="${KERNEL_ROOTSPEC_FLASHER}" ; cat >${D}/${KERNEL_IMAGEDEST}/extlinux/extlinux.conf_flasher << EOF
DEFAULT primary
TIMEOUT 10
MENU TITLE Boot Options
LABEL primary
      MENU LABEL primary ${KERNEL_IMAGETYPE}
      LINUX /${KERNEL_IMAGETYPE}
      APPEND \${cbootargs} ${kernelRootspec} \${os_cmdline} sdhci_tegra.en_boot_part_access=1
EOF
}

do_install[postfuncs] += "generate_extlinux_conf"
do_install[depends] += "${@['', '${INITRAMFS_IMAGE}:do_image_complete'][(d.getVar('INITRAMFS_IMAGE', True) or '') != '' and (d.getVar('TEGRA_INITRAMFS_INITRD', True) or '') == "1"]}"

do_deploy_append(){
    mkdir -p "${DEPLOYDIR}/boot/"
    install -m 0600 "${D}/boot/extlinux/extlinux.conf" "${DEPLOYDIR}/boot/"
    install -m 0600 "${D}/boot/extlinux/extlinux.conf_flasher" "${DEPLOYDIR}/boot/"
}

FILES_${KERNEL_PACKAGE_NAME}-image_append = "/boot/extlinux/extlinux.conf /boot/extlinux/extlinux.conf_flasher"

do_deploy_append_apollo-tx2() {
    cp ${WORKDIR}/tegra186-quill-p3310-1000-c03-00-base.dtb "${DEPLOYDIR}"
}
