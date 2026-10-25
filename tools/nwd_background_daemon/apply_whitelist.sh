#!/bin/bash
# K4811 NWD Background Daemon Whitelist Applicator
# Keeps DUDU Launcher, ViPER4Android, ViVi Music, and Radarbot permanently alive.

echo "==> Pushing NWD Daemon configs to /data/nwdappconfig/app/..."
adb root
adb wait-for-device

adb push AppConfig.xml /data/nwdappconfig/app/AppConfig.xml
adb push TaskWhitelist.xml /data/nwdappconfig/app/TaskWhitelist.xml
adb push BackgroundManager.ini /data/nwdappconfig/app/BackgroundManager.ini
adb push PromotionAppAdjList.ini /data/nwdappconfig/app/PromotionAppAdjList.ini
adb push OneClearConfig.xml /data/nwdappconfig/app/OneClearConfig.xml
adb push DisableWakeAppSelfStart.xml /data/nwdappconfig/app/DisableWakeAppSelfStart.xml
adb push AllowSleepAppSelfStart.xml /data/nwdappconfig/app/AllowSleepAppSelfStart.xml

echo "==> Setting correct permissions..."
adb shell "chmod 644 /data/nwdappconfig/app/*"

echo "==> Adding apps to Android Battery Optimization & Doze whitelist..."
adb shell "dumpsys deviceidle whitelist +com.dudu.autoui"
adb shell "dumpsys deviceidle whitelist +com.vivi.vivimusic"
adb shell "dumpsys deviceidle whitelist +com.llsl.viper4android"
adb shell "dumpsys deviceidle whitelist +com.vialsoft.radarbot_free"

echo "==> Done! Background persistence configured successfully."
