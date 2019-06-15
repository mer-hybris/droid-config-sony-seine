%define device kirin
%define rpm_device i4113
%define vendor sony

%define vendor_pretty Sony
%define device_pretty Xperia 10 - Dual SIM

%define community_adaptation 1

%define pixel_ratio 1.75

# Device-specific ofono configuration
Provides: ofono-configs
Obsoletes: ofono-configs-mer

%define ofono_enable_plugins bluez5,hfp_ag_bluez5
%define ofono_disable_plugins bluez4,dun_gw_bluez4,hfp_ag_bluez4,hfp_bluez4,dun_gw_bluez5,hfp_bluez5

%include droid-configs-device/droid-configs.inc
