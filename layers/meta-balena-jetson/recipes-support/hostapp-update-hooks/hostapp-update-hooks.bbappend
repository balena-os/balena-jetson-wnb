FILESEXTRAPATHS_append := ":${THISDIR}/files"

DEPENDS_append_jetson-tx2 = " tegra186-flash-dry"

HOSTAPP_HOOKS_append_jetson-tx2 = " \
    99-resin-uboot \
    50-resin-bootfiles-jetson-tx2 \
"
