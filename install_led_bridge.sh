#!/usr/bin/env bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [ -f "$DIR/dudu_led_bridge.apk" ]; then
    APK="$DIR/dudu_led_bridge.apk"
else
    APK="$DIR/release_apks/dudu_led_bridge.apk"
fi
DEFAULT_IP="10.152.214.120:5555"

echo "=================================================="
echo "    DUDU Launcher LED Ambient Bridge Installer    "
echo "=================================================="

# Check if adb is installed
if ! command -v adb &>/dev/null; then
    echo "[!] Error: adb command not found in PATH."
    exit 1
fi

# Determine target device
TARGET_DEV=""
CONNECTED_DEVICES=$(adb devices | grep -v "List of devices" | grep "device$" | awk '{print $1}')

if [ -n "$CONNECTED_DEVICES" ]; then
    TARGET_DEV=$(echo "$CONNECTED_DEVICES" | head -n 1)
    echo "[*] Found active device: $TARGET_DEV"
else
    TARGET_IP="${1:-$DEFAULT_IP}"
    echo "[*] No USB device detected. Attempting Wi-Fi connection to $TARGET_IP..."
    adb connect "$TARGET_IP" || true
    sleep 2
    TARGET_DEV=$(adb devices | grep -v "List of devices" | grep "device$" | awk '{print $1}' | head -n 1)
fi

if [ -z "$TARGET_DEV" ]; then
    echo "[!] Could not connect to head unit."
    echo "    Make sure the car is on and connected to the same Wi-Fi network."
    echo "    Usage: bash install_led_bridge.sh [HEADUNIT_IP:PORT]"
    exit 1
fi

echo "[*] Installing to $TARGET_DEV..."
adb -s "$TARGET_DEV" install -r "$APK"

echo "[*] Launching LED Ambient Bridge..."
adb -s "$TARGET_DEV" shell am force-stop com.dudu.ledbridge || true
adb -s "$TARGET_DEV" shell am start -n com.dudu.ledbridge/.MainActivity

echo "=================================================="
echo "[✓] Installation Complete!"
echo "=================================================="
echo "HOW TO USE IN DUDU LAUNCHER:"
echo "1. In DUDU Launcher, go to Settings -> Ambient Lights (Atmosphere Lights)."
echo "2. Select 'BLE / Third-Party Branded Ambient Lights' (Duoco)."
echo "3. Scan for devices: you will see 'ELK-BLEDOM'."
echo "4. Tap 'ELK-BLEDOM' to connect. DUDU Launcher will stay permanently connected!"
echo "5. Now use DUDU Launcher's native desktop widget or ambient light settings."
echo "   All color, brightness, and power changes will automatically control your LED strips!"
echo "=================================================="
