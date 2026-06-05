FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-media-imx8mp-csi-clear-GASKET-data-type-before-updat.patch"
SRC_URI += "file://0002-media-imx8-Added-missing-pixelformats.patch"
SRC_URI += "file://0003-media-imx8-Fixed-missing-pixelformat-negotiation-bet.patch"
SRC_URI += "file://0004-media-imx8-Added-v4l2-controls-to-csis-driver-for-ad.patch"
SRC_URI += "file://0006-media-imx8-isi-cap-make-width-capping-dependent-on-c.patch"