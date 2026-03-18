FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# --------------------------------------------------------------------------------------------------
# i.MX8M Plus Variscite DART support

SRC_URI:append:imx8mp-var-dart = " \
    file://0001-arm64-imx8-Added-Vision-Components-MIPI-CSI-2-device.patch \
    file://0002-media-imx8-Added-missing-pixelformats.patch \
    file://0003-media-imx8-Fixed-missing-pixelformat-negotiation-bet.patch \
    file://0004-media-imx8-Added-v4l2-controls-to-csis-driver-for-ad.patch \
"

KERNEL_DEVICETREE:imx8mp-var-dart += " \
    freescale/imx8mp-var-dart-dt8mcustomboard-vc-mipi-isi-csi0.dtb \
    freescale/imx8mp-var-dart-dt8mcustomboard-vc-mipi-isi-csi1.dtb \
    freescale/imx8mp-var-dart-dt8mcustomboard-vc-mipi-isi-csi0-csi1.dtb \
    freescale/imx8mp-var-dart-dt8mcustomboard-vc-mipi-isp-csi0.dtb \
    freescale/imx8mp-var-dart-dt8mcustomboard-vc-mipi-isp-csi0-csi1.dtb \
"

# --------------------------------------------------------------------------------------------------
# i.MX95 Variscite DART support

SRC_URI:append:imx95-var-dart = " \
    file://0001-arm64-imx95-Add-Vision-Components-MIPI-CSI-2-driver-.patch \
    file://0002-media-i2c-Add-Vision-Components-driver-to-MakeFile-a.patch \
    file://vc-mipi.cfg \
    git://github.com/VC-MIPI-modules/vc_mipi_nxp.git;protocol=https;branch=develop;name=vc_mipi_nxp;destsuffix=vc_mipi_nxp \
    git://github.com/VC-MIPI-modules/vc_mipi_core.git;protocol=https;branch=nxp/develop;name=vc_mipi_core;destsuffix=vc_mipi_core \
"

SRCREV_vc_mipi_nxp = "${AUTOREV}"
SRCREV_vc_mipi_core = "${AUTOREV}"
SRCREV_FORMAT = "vc_mipi_nxp_vc_mipi_core"

do_patch:append:imx95-var-dart() {
    install -d ${S}/drivers/media/i2c
    install -m 0644 ${WORKDIR}/sources-unpack/vc_mipi_nxp/src/vc_mipi_camera.c ${S}/drivers/media/i2c
    install -m 0644 ${WORKDIR}/sources-unpack/vc_mipi_core/vc_mipi_core.c ${S}/drivers/media/i2c
    install -m 0644 ${WORKDIR}/sources-unpack/vc_mipi_core/vc_mipi_core.h ${S}/drivers/media/i2c
    install -m 0644 ${WORKDIR}/sources-unpack/vc_mipi_core/vc_mipi_modules.c ${S}/drivers/media/i2c
    install -m 0644 ${WORKDIR}/sources-unpack/vc_mipi_core/vc_mipi_modules.h ${S}/drivers/media/i2c
}