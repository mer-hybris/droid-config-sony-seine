#!/bin/sh

# Restore single sim devices after removal of the modem workaround.
if [ "$(grep -o persist.vendor.radio.multisim.config=dsds /vendor/build.prop)" != "persist.vendor.radio.multisim.config=dsds" ]; then
    while [ "$(pidof rild)" == "" ]; do
        echo "Waiting for rild"
        sleep 1
    done

    /system/bin/stop vendor.ril-daemon2
    setprop persist.vendor.radio.multisim.config ""
    setprop persist.radio.multisim.config ""
fi

