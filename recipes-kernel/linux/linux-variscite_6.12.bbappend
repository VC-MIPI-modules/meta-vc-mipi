FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
    file://0001-arm64-imx95-Add-Vision-Components-MIPI-CSI-2-driver-.patch \
    file://0001-media-nxp-Add-v4l2-controls-to-dwc-csi-driver-for-ad.patch \
    file://0002-media-i2c-Add-Vision-Components-driver-to-MakeFile-a.patch \
    file://vc-mipi.cfg \
    git://github.com/VC-MIPI-modules/vc_mipi_nxp.git;protocol=https;branch=develop;name=vc_mipi_nxp;destsuffix=vc_mipi_nxp \
    git://github.com/VC-MIPI-modules/vc_mipi_core.git;protocol=https;branch=nxp/develop;name=vc_mipi_core;destsuffix=vc_mipi_core \
"

SRCREV_vc_mipi_nxp = "2576768b52973be4105b67010350ee57e2643a4b"
SRCREV_vc_mipi_core = "eb686ed72a4e78966ba68954fd863a50d172d654"
SRCREV_FORMAT = "vc_mipi_nxp_vc_mipi_core"

do_patch:append() {
    install -d ${S}/drivers/media/i2c
    install -m 0644 ${WORKDIR}/sources-unpack/vc_mipi_nxp/src/vc_mipi_camera.c ${S}/drivers/media/i2c
    install -m 0644 ${WORKDIR}/sources-unpack/vc_mipi_core/vc_mipi_core.c ${S}/drivers/media/i2c
    install -m 0644 ${WORKDIR}/sources-unpack/vc_mipi_core/vc_mipi_core.h ${S}/drivers/media/i2c
    install -m 0644 ${WORKDIR}/sources-unpack/vc_mipi_core/vc_mipi_modules.c ${S}/drivers/media/i2c
    install -m 0644 ${WORKDIR}/sources-unpack/vc_mipi_core/vc_mipi_modules.h ${S}/drivers/media/i2c
}