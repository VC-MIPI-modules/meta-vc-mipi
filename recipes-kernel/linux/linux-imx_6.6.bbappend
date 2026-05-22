FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-media-imx8-Added-missing-pixelformats.patch"
SRC_URI += "file://0001-media-imx8-Fixed-missing-pixelformat-negotiation-bet.patch"
SRC_URI += "file://0001-media-imx8-Added-v4l2-controls-to-csis-driver-for-ad.patch"
SRC_URI += "file://0006-media-imx8-isi-cap-make-width-capping-dependent-on-c.patch"

EXTRA_KERNEL_DTS += " \
	file://lec-imx8mp/lec-imx8mp-vc-mipi-isi-csi0.dts \
	file://lec-imx8mp/lec-imx8mp-vc-mipi-isi-csi1.dts \
	file://lec-imx8mp/lec-imx8mp-vc-mipi-isi-csi0-csi1.dts \
	file://lec-imx8mp/lec-imx8mp-vc-mipi-isp-csi0.dts \
	file://lec-imx8mp/lec-imx8mp-vc-mipi-isp-csi0-csi1.dts \
"

KERNEL_DEVICETREE += " \
	adlink/lec-imx8mp-vc-mipi-isi-csi0.dtb \
	adlink/lec-imx8mp-vc-mipi-isi-csi1.dtb \
	adlink/lec-imx8mp-vc-mipi-isi-csi0-csi1.dtb \
	adlink/lec-imx8mp-vc-mipi-isp-csi0.dtb \
	adlink/lec-imx8mp-vc-mipi-isp-csi0-csi1.dtb \
"