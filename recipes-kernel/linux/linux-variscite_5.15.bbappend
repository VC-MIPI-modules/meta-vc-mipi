FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-arm64-imx8-Added-Vision-Components-MIPI-CSI-2-device.patch"
SRC_URI += "file://0001-media-imx8-Added-missing-pixelformats.patch"
SRC_URI += "file://0002-media-imx8-Fixed-missing-pixelformat-negotiation-bet.patch"
SRC_URI += "file://0003-media-imx8-Fixed-bytesperline-calculation.patch"
SRC_URI += "file://0004-media-imx8-Added-v4l2-controls-to-csis-driver-for-ad.patch"
SRC_URI += "file://0005-media-imx8-Added-advanced-logging-of-csis-and-isi-dr.patch"
SRC_URI += "file://0006-media-imx8-isi-cap-make-width-capping-dependent-on-c.patch"

KERNEL_DEVICETREE += " \
    freescale/imx8mp-var-dart-dt8mcustomboard-vc-mipi-csi0-csi1.dtb \
    freescale/imx8mp-var-dart-dt8mcustomboard-vc-mipi-csi1.dtb \
"