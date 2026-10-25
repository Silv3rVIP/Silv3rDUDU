#!/system/bin/sh
# sound_mix_persister.sh
# Permanently keeps Sound Mixing at Level 9 (or user preference) on K4811 UIS8581A headunits.
# Prevents MCU firmware from resetting volume mixing back to 5 on boot / sleep-wake.

PIDFILE="/data/local/tmp/sound_mix.pid"
if [ -f "$PIDFILE" ]; then
    old_pid=$(cat "$PIDFILE" 2>/dev/null)
    if [ -n "$old_pid" ] && [ -d "/proc/$old_pid" ]; then
        kill -9 "$old_pid" 2>/dev/null
    fi
fi
echo $$ > "$PIDFILE"

# Wait for Android boot completion
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 1
done

# Wait for MCU initialization handshake to settle
sleep 4

# Target level (defaults to 9 if not set)
TARGET=$(getprop persist.sys.sound_mix_lvl)
if [ -z "$TARGET" ]; then
    TARGET=9
    setprop persist.sys.sound_mix_lvl 9
fi

# Function to send UART packet to MCU DSP audio mixer (/dev/ttyS2)
send_mcu_mix() {
    lvl=$1
    case $lvl in
        0) printf '\xf0\x04\x0e\x0a\x00\x00\x22' > /dev/ttyS2 ;;
        1) printf '\xf0\x04\x0e\x0a\x00\x01\x23' > /dev/ttyS2 ;;
        2) printf '\xf0\x04\x0e\x0a\x00\x02\x24' > /dev/ttyS2 ;;
        3) printf '\xf0\x04\x0e\x0a\x00\x03\x25' > /dev/ttyS2 ;;
        4) printf '\xf0\x04\x0e\x0a\x00\x04\x26' > /dev/ttyS2 ;;
        5) printf '\xf0\x04\x0e\x0a\x00\x05\x27' > /dev/ttyS2 ;;
        6) printf '\xf0\x04\x0e\x0a\x00\x06\x28' > /dev/ttyS2 ;;
        7) printf '\xf0\x04\x0e\x0a\x00\x07\x29' > /dev/ttyS2 ;;
        8) printf '\xf0\x04\x0e\x0a\x00\x08\x2a' > /dev/ttyS2 ;;
        9) printf '\xf0\x04\x0e\x0a\x00\x09\x2b' > /dev/ttyS2 ;;
        10) printf '\xf0\x04\x0e\x0a\x00\x0a\x2c' > /dev/ttyS2 ;;
    esac
}

# Initial apply on boot
settings put system mcu_other_setting_volume_mix $TARGET
send_mcu_mix $TARGET

# Daemon loop: keep mixing level locked, restore if MCU resets to 5
while true; do
    CURR=$(settings get system mcu_other_setting_volume_mix)
    if [ "$CURR" = "5" ] && [ "$TARGET" != "5" ]; then
        # MCU reset to default 5 detected - restore user target
        settings put system mcu_other_setting_volume_mix $TARGET
        send_mcu_mix $TARGET
    elif [ -n "$CURR" ] && [ "$CURR" != "null" ] && [ "$CURR" != "$TARGET" ]; then
        # User explicitly moved slider in CarSetting UI
        TARGET=$CURR
        setprop persist.sys.sound_mix_lvl $TARGET
        send_mcu_mix $TARGET
    fi
    sleep 3
done
