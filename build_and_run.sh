#!/bin/bash

../gradlew clean assembleDebug
if [ $? -eq 0 ]
 then
  # -r tells it to re install
  adb install -r build/outputs/apk/android_sensors_driver-debug.apk
  adb shell am start -n org.ros.android.android_sensors_driver/org.ros.android.android_sensors_driver.MainActivity
  adb logcat -c
  adb logcat
fi
