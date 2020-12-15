%package -n patterns-sailfish-device-adaptation-pdx201
Summary: Jolla HW Adaptation pdx201
Requires: droid-hal-pdx201
Requires: droid-hal-pdx201-img-boot
Requires: droid-hal-pdx201-img-recovery
Requires: droid-hal-pdx201-tools
Requires: droid-hal-pdx201-kernel-dtbo

# Hybris packages
Requires: libhybris-libEGL
Requires: libhybris-libGLESv2
Requires: libhybris-libwayland-egl

# Bluetooth
Requires: bluebinder

# Telephony
Requires: ofono-ril-binder-plugin
Requires: dummy_netd

# NFC
Requires: nfcd-binder-plugin

# Sensors
Requires: hybris-libsensorfw-qt5

# Vibra
Requires: ngfd-plugin-native-vibrator
Requires: qt5-feedback-haptics-native-vibrator

# Needed for /dev/touchscreen symlink
Requires: qt5-plugin-generic-evdev

Requires: pulseaudio-modules-droid
Requires: pulseaudio-modules-droid-hidl
# for audio recording to work:
Requires: qt5-qtmultimedia-plugin-mediaservice-gstmediacapture

# These need to be per-device due to differing backends (fbdev, eglfs, hwc, ..?)
Requires: qt5-qtwayland-wayland_egl
Requires: qt5-qpa-hwcomposer-plugin
Requires: qtscenegraph-adaptation

# Add GStreamer v1.0 as standard
Requires: gstreamer1.0
Requires: gstreamer1.0-plugins-good
Requires: gstreamer1.0-plugins-base
Requires: gstreamer1.0-plugins-bad
Requires: nemo-gstreamer1.0-interfaces
# Enable after droidmedia is tested working for Android 10 BSPs
#Requires: gstreamer1.0-droid

# For camera dummy audioflinger is needed
Requires: audiosystem-passthrough-dummy-af

# This is needed for notification LEDs
Requires: mce-plugin-libhybris

## USB mode controller
# Enables mode selector upon plugging USB cable:
Requires: usb-moded

# hammerhead, grouper, and maguro use this in scripts, so include for all
Requires: rfkill

# enable fingerprint reader
Requires: sailfish-devicelock-fpd

# Enable home encryption
Requires: sailfish-device-encryption

# For GPS
Requires: geoclue-provider-hybris

%description -n patterns-sailfish-device-adaptation-pdx201
Pattern with packages for pdx201 HW Adaptation

%files -n patterns-sailfish-device-adaptation-pdx201
