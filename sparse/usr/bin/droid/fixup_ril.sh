#!/bin/sh

mkdir -p /dev/socket/qmux_radio/rild_sync_1

# single sim workaround
(

if [ "$(grep -o persist.vendor.radio.multisim.config=dsds /vendor/build.prop)" != "persist.vendor.radio.multisim.config=dsds" ]; then
    while [ "$(pidof rild)" == "" ]; do
        echo "Waiting for rild"
        sleep 1
    done

    setprop persist.radio.multisim.config ""
fi

) &
