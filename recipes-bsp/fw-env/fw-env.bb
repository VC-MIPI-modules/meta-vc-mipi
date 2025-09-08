SUMMARY = "fw_env.config + initial default env for libubootenv"
LICENSE = "CLOSED"

PACKAGE_ARCH = "${MACHINE_ARCH}"
COMPATIBLE_MACHINE = "^lec-imx8mp$"

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI = " \
    file://fw_env.config \
    file://u-boot-initial-env \
"

S = "${WORKDIR}"

do_install() {
    install -Dm0644 ${WORKDIR}/fw_env.config ${D}${sysconfdir}/fw_env.config
    install -Dm0644 ${WORKDIR}/u-boot-initial-env ${D}${sysconfdir}/u-boot-initial-env
}

FILES:${PN} += " \
    ${sysconfdir}/fw_env.config \
    ${sysconfdir}/u-boot-initial-env \
"

RDEPENDS:${PN} += " libubootenv-bin"
