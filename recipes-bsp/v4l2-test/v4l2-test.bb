# Copyright 2024-2025 Vision Components GmbH
DESCRIPTION = "Test and example application to use v4l2 cameras"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
SECTION = "utils"

SRC_URI += "git://github.com/pmliquify/v4l2-test.git;protocol=https;branch=develop"
SRCREV = "b5bcdb1ae0c02642e9c288cce9a66c83ea61e934"

S = "${WORKDIR}/git"

inherit cmake
