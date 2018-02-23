# Write U-Boot before wic generates compressed rootfs for odroid-c2 machine
IMAGE_CMD_wic_append_odroid-c2() {
    dd if=${DEPLOY_DIR_IMAGE}/bl1.bin.hardkernel   of=$out${IMAGE_NAME_SUFFIX}.wic conv=notrunc bs=1 count=442
    dd if=${DEPLOY_DIR_IMAGE}/bl1.bin.hardkernel   of=$out${IMAGE_NAME_SUFFIX}.wic conv=notrunc bs=512 skip=1 seek=1
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-odroid-c2.bin of=$out${IMAGE_NAME_SUFFIX}.wic conv=notrunc bs=512 seek=97
}
