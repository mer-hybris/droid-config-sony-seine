#!/bin/sh

# Copy backup partition (vendor_a) to vendor_b
dd if=/dev/mmcblk0p69 of=/dev/mmcblk0p70 bs=1M

