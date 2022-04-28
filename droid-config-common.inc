%define rpm_vendor qualcomm
%define vendor sony
%define vendor_pretty Sony

%define provides_own_board_mapping 1
%define out_of_image_files 1

%define android_version_major 10

# Device-specific ofono configuration
Provides: ofono-configs
Obsoletes: ofono-configs-mer
Obsoletes: ofono-configs-binder

# No device reset
Provides: jolla-settings-system-reset

# Device-specific usb-moded configuration
Provides: usb-moded-configs
Obsoletes: usb-moded-defaults

Obsoletes: audioflingerglue

%define ofono_enable_plugins bluez5,hfp_ag_bluez5
%define ofono_disable_plugins bluez4,dun_gw_bluez4,hfp_ag_bluez4,hfp_bluez4,dun_gw_bluez5,hfp_bluez5

Requires: droid-system-%{device}-%{rpm_device}

Obsoletes: pulseaudio-modules-droid-glue
Requires: pulseaudio-modules-droid >= 14.2.89
Requires: ohm-plugin-accessories >= 1.7.0

Requires: libgbinder-tools
