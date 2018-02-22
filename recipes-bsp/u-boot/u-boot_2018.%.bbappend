FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

UPDATEHUB_ODROID_PATCHES = " \
    file://0001-UpdateHub-Add-common-header.patch \
    file://0002-odroid-c2-Add-support-to-UpdateHub.patch \
"

SRC_URI_append_updatehub-odroid = " ${UPDATEHUB_ODROID_PATCHES}"
