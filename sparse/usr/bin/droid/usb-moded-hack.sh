#!/bin/sh

export PATH=/sbin:/bin:/usr/bin:/usr/sbin
ANDROID_USB=/sys/class/android_usb/android0
GADGET_DIR=/config/usb_gadget
USB_FUNCTIONS=rndis

usb_setup_configfs() {
    G_USB_ISERIAL=$GADGET_DIR/g1/strings/0x409/serialnumber
    mkdir $GADGET_DIR/g1
    write $GADGET_DIR/g1/idVendor                   "0x2931"
    write $GADGET_DIR/g1/idProduct                  "0x0A06"
    mkdir $GADGET_DIR/g1/strings/0x409
    write $GADGET_DIR/g1/strings/0x409/serialnumber "$1"
    write $GADGET_DIR/g1/strings/0x409/manufacturer "Jolla"
    write $GADGET_DIR/g1/strings/0x409/product      "Sailfish OS"

    if echo $USB_FUNCTIONS | grep -q "rndis"; then
        mkdir $GADGET_DIR/g1/functions/rndis.rndis0
        mkdir $GADGET_DIR/g1/functions/rndis_bam.rndis
    fi

    mkdir $GADGET_DIR/g1/configs/b.1
    mkdir $GADGET_DIR/g1/configs/b.1/strings/0x409
    write $GADGET_DIR/g1/configs/b.1/strings/0x409/configuration "$USB_FUNCTIONS"

    if echo $USB_FUNCTIONS | grep -q "rndis"; then
        ln -s $GADGET_DIR/g1/functions/rndis.rndis0 $GADGET_DIR/g1/configs/b.1
        ln -s $GADGET_DIR/g1/functions/rndis_bam.rndis $GADGET_DIR/g1/configs/b.1
    fi

    echo "$(ls /sys/class/udc)" > $GADGET_DIR/g1/UDC
}

usb_setup_configfs "preparing configfs"
