#!/system/bin/sh
# 1. Keep Wireless ADB enabled on port 5555 across reboots
setprop service.adb.tcp.port 5555
stop adbd
start adbd

# 2. Wait until system has booted and ensure DUDU is active
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 1
done

sleep 1
am start -n com.dudu.autoui/.ui.activity.launcher.LauncherActivity

# 3. Ensure Sound Mixing level persister daemon is running
if [ -f /data/adb/service.d/sound_mix_persister.sh ]; then
    /data/adb/service.d/sound_mix_persister.sh &
fi
