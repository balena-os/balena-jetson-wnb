FILESEXTRAPATHS_append := ":${THISDIR}/linux-tegra"

inherit allarch systemd

DESCRIPTION = "Package for deploying custom dtbs to rootfs"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

RDEPENDS_${PN} = " bash "

do_install[depends] += " virtual/kernel:do_deploy "

S = "${WORKDIR}"

do_install_jetson-tx2() {
	install -d ${D}/boot/
	install -m 0644 ${DEPLOY_DIR_IMAGE}/tegra186-quill-p3310-1000-c03-00-base.dtb ${D}/boot/tegra186-quill-p3310-1000-c03-00-base.dtb
}

FILES_${PN}_jetson-tx2 += " \
	/boot/tegra186-quill-p3310-1000-c03-00-base.dtb \
"
