# Android Sensors Driver
## Authors:
 charlie.hulcher@gmail.com (Charlie Hulcher)
 no email                  (Tal Regev)
 chadrockey@gmail.com      (Chad Rockey)
 axelfurlan@gmail.com      (Axel Furlan)

This is an extension to the first version of the Ros Android Sensors Driver.
It extends the driver to camera readings and updates the previous version to the post-gradle shift of the rosjava libs.
Two compression methods are currently supported, PNG and JPEG (with selectable compression quality).
The topic names are:

 /android/imu
 /android/fix (GPS)
 /camera/camera_info
 /camera/image/compressed


## Setup:
This project fits into the android_core folder from Indigo branch of https://github.com/rosjava/android_core.

To get an already put together project that will build on Mac OS X:

Somewhere on your computer:
```bash
git clone https://github.com/c-h-/android_core
cd android_core
git checkout indigo
git submodule update --init --recursive
cd android_sensors_driver
```

## Compiling:
The Ros dependencies of this project are handled by Maven and therefore it is not necessary to download and install yourself.

You can build, run on emulator or attached Debug mode device, and see logs for this project with:
(From /android_sensors_driver)
`./build_and_run.sh`

If install on a real Android device fails, it may not be in debug mode. Enable it via these directions: https://stackoverflow.com/questions/16707137/how-to-find-and-turn-on-usb-debugging-mode-on-nexus-4

See the parent project Readme for detail on Gradle commands.
