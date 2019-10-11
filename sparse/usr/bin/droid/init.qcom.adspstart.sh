#!/bin/sh

sleep 5
echo 1 > /sys/kernel/boot_adsp/boot
setprop vendor.qcom.adspup 1
