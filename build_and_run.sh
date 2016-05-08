#!/bin/bash

../gradlew clean assembleDebug
if [ $? -eq 0 ]
 then
  # -r tells it to re-install if not installed
  adb install -r build/outputs/apk/android_sensors_driver-debug.apk

  # Start the app by starting its main activity
  adb shell am start -n org.ros.android.android_sensors_driver/org.ros.android.android_sensors_driver.MainActivity

  # Show logs in the console
  adb logcat -c
  adb logcat
fi
