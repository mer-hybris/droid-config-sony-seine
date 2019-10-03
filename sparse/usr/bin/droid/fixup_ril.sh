#!/bin/sh

while [ "$(/sbin/pidof droid-hal-init)" == "" ]; do
    echo "Waiting for droid-hal-init"
    /bin/sleep 1
done

if [ "$(/usr/bin/getprop persist.vendor.radio.multisim.config)" != "dsds" ]; then
    # single sim workaround

    echo "Starting vendor.ril-daemon2"
    /usr/bin/setprop persist.vendor.radio.multisim.config dsds
    single_sim=1
fi

# multisim workaround

# wait until both rilds are ready
while [ ! -S /dev/socket/qmux_radio/rild_sync_0 ]; do
    echo "Waiting for rild_sync_0"
    /bin/sleep 1
done

while [ ! -S /dev/socket/qmux_radio/rild_sync_1 ]; do
    echo "Waiting for rild_sync_1"
    /bin/sleep 1
done

echo "Removing rild_sync_1"
/bin/rm -f /dev/socket/qmux_radio/rild_sync_1

if [ "$single_sim" == "1" ]; then
    echo "Restoring multisim config property"
    /usr/bin/setprop persist.vendor.radio.multisim.config ""
fi

