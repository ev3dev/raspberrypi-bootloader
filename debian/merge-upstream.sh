#!/bin/bash
#
# Maintainer script to merge new upstream version.

# Not using uscan since upstream does not always tag commits

wget -O - https://github.com/raspberrypi/firmware/archive/master.tar.gz | \
    gunzip | tar --wildcards \
        --delete firmware-master/modules \
        --delete firmware-master/extra \
        --delete firmware-master/boot/kernel* \
        --delete firmware-master/boot/*.dtb \
        --delete firmware-master/boot/overlays/*.dtbo \
        --delete firmware-master/opt | gzip > ../rpi-bootloader.tar.gz
gbp import-orig ../rpi-bootloader.tar.gz
