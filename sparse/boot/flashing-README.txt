= SAILFISH X FOR SONY XPERIA™ 10 II FLASHING GUIDE =

= FOR LINUX, WINDOWS AND OS X =

= STEP 1: GETTING AN XPERIA™ 10 II =

Get an Xperia™ 10 II. To be able to replace the Sony Android
system with Sailfish X, you will need to be able to unlock the bootloader of
your device so that it can be flashed with a new operating system. This process
is supported by Sony as part of their Open Devices programme:

https://developer.sony.com/develop/open-devices/

The best way to get an unlockable device is to buy is a brand new Xperia™ 10 II
in a sales box. If you are tempted to buy second-hand please be aware that there
are some variants for which the bootloader cannot be unlocked: for example
devices that have at some point been SIM locked, even if they have subsequently
been SIM unlocked. It will not be possible to flash Sailfish X onto these
devices. Instructions for checking the unlockability of Xperia™ models can be
found on the Sony Developer World website here:

https://developer.sony.com/develop/open-devices/get-started/unlock-bootloader/

If in doubt, ask the vendor to check this before you buy.

Once you receive your device you will need to boot it into Android at least
once to update it to the latest Android version.
If you have a new device that's still under warranty, it's a good idea to
verify that all components of the device are working at this point, such as the
cameras and radio devices, as exchanging your device under warranty may become
more difficult once the bootloader has been unlocked.

= STEP 2: UNLOCKING THE BOOTLOADER =

Make sure that the system language of your Xperia™ device is set to English
before you continue.

Go to https://developer.sony.com/develop/open-devices/get-started/unlock-bootloader/
website and select the model of your device Xperia™ 10 II.
You should see additional instructions to prepare your device for unlocking:

* Type the IMEI, accept the terms & conditions and press submit.
  Please note the details of how this process affects your Sony warranty.
  At this point you should get unlock code. Please write it down somewhere.

* Once you have the unlock code press the "How to unlock bootloader"

Now read and follow Sony's instructions on how to connect your device to your PC
in fastboot mode and unlock the bootloader. Don't miss the step to enable
'OEM unlock' from within Android beforehand.

NOTE: After unlocking bootloader you need to boot the device once to Android UI
      before proceed to flashing Sailfish X part.

Neither Linux nor OS X should require any additional drivers to connect to the
device in fastboot mode, but you will need to have installed the fastboot
command itself:

* Debian/Ubuntu/.deb distros: apt-get install android-tools-fastboot
* Fedora: yum install android-tools
* OS X: brew install android-sdk

= STEP 3: GETTING THE SONY VENDOR BINARY IMAGE =

Some drivers and other binaries needed to operate the device cannot be
distributed as part of Sailfish X due to licensing restrictions. You must
download these yourself from Sony's website, after accepting their separate
license agreement.

For convenience, these components have already been packaged into their own
partition image, ready to flash to your device.

During the flashing process you will be asked to download the required image.
It will be compressed as a zip file. Once downloaded, extract the image file
from the zip and place it with the other Sailfish X files.


= STEP 4 : FLASHING SAILFISH X TO YOUR XPERIA™ =

Connect your device to your PC in Fastboot mode as follows:

* Disconnect your Xperia™ device from your PC
* Turn off the device. Leave it off for at least fifteen seconds.
* Connect one end of a USB cable to your PC
* While holding the 'Volume Up' button, connect the other end of the USB cable
  to your Xperia™ device. The LED next to the speaker on the device should
  light up blue.
* On Windows, fastboot drivers are needed to properly detect the device, as was
  needed for the unlocking process. If you need to install them, see the
  instructions in Step 3 above.
* Launch the correct flashing script for your platform:
  * On Linux and OS X, use flash.sh
  * On Windows 7, 8 & 10, double-click 'flash-on-windows.bat'. If Windows warns
    you that it 'Protected your PC' by stopping the script from launching, click
    'More Info' then 'Run anyway'.
* Follow the instructions in the console window.
* When flashing has finished, reboot your device into Sailfish X!

Happy flashing :)

= TROUBLESHOOTING =

Q: My Xperia™ shows only Sony logo when it is booting up, what to do?
A: You should reflash the device with the instructions above. Verify that you
   have the correct Vendor binary image from Sony.

