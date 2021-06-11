FILESEXTRAPATHS_append := ":${THISDIR}/connections"

SRC_URI_append = " \
	file://bridge-lanbr0 \
	file://bridge-slave-dummy \
	file://bridge-slave-enp1s0 \
"

do_deploy_append() {
    install -m 0600 "${WORKDIR}/bridge-lanbr0" "${DEPLOYDIR}/system-connections/"
    install -m 0600 "${WORKDIR}/bridge-slave-dummy" "${DEPLOYDIR}/system-connections/"
    install -m 0600 "${WORKDIR}/bridge-slave-enp1s0" "${DEPLOYDIR}/system-connections/"
}
