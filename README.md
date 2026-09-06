# DuduLedBridge & DuduLauncher Customization Tools

[![Platform](https://img.shields.io/badge/Platform-Android%208.0%2B-blue.svg)](https://android.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![APK](https://img.shields.io/badge/Download-APK%20(82KB)-orange.svg)](dudu_led_bridge.apk)

An automotive-grade companion app and customization toolset for **DUDU Launcher** and Android car head units (e.g., FYT 7862, Topway TS10, Qualcomm Snapdragon automotive units).

---

## 🌟 Features

### 💡 1. DuduLedBridge (In-Car BLE Ambient Lighting)
A dedicated, lightweight background companion app built to control generic aftermarket car LED ambient lighting kits (**LEDLAMP**, **ELK-BLEDOM**, **Triones**, **Lotus Lantern**, **duoCo Strip**) directly from your head unit.

- **Automotive Cockpit UI**: Tailored specifically for landscape head units (1024x600, 1280x720, 1920x1080) with high contrast and dark mode aesthetics.
- **Multi-Protocol BLE Engine**: Discovers and transmits across multiple GATT protocols simultaneously:
  - **ELK-BLEDOM / LEDLAMP / Lotus**: `7E 07 05 03 [R] [G] [B] 00 EF`
  - **Triones / HappyLighting**: `56 [R] [G] [B] 00 F0 AA`
  - **duoCo Strip Variant**: `7E 00 05 03 [R] [G] [B] 00 EF`
- **10 OEM Car Presets**:
  - **VW Blue** (`#0066FF`)
  - **Golf R Ice Cyan** (`#00E5FF`)
  - **Audi Sport Red** (`#FF0033`)
  - **BMW M Amber** (`#FF6600`)
  - **Mercedes Ambient Violet** (`#9900FF`)
  - **Porsche Racing Yellow** (`#FFCC00`)
  - **AMG Acid Green** (`#00FF66`)
  - **Passat Warm White** (`#FFE6CC`)
  - **Pure Diamond White** (`#FFFFFF`)
  - **Night Magenta** (`#FF0077`)
- **Music Beat Sync / Reactive Mode**: Uses Android's native `Visualizer` API to sample audio output in real-time and dynamically pulse the ambient brightness to your music beat (ViMusic, Spotify, Radio, etc.).
- **Dynamic Effects**: Built-in *Smooth Breathe* and *Rainbow Flow* modes.
- **Boot Auto-Connect & Persistence**:
  - Service automatically starts on car boot (`BOOT_COMPLETED`, `QUICKBOOT_POWERON`, `ACTION_POWER_CONNECTED`).
  - Automatically reconnects to the last paired device MAC address in milliseconds.
  - Remembers your selected color, power state, and brightness across ignition cycles.
- **Device Picker**: Tap **DEVICES** in the header to view all nearby discovered Bluetooth devices with real-time signal strength (RSSI dBm) and manually pair if you have multiple BLE devices.

---

## 📲 Download & Installation

### Pre-Built APK
- **[Download dudu_led_bridge.apk](dudu_led_bridge.apk)** *(Signed, Aligned, 82 KB)*

### Install via ADB:
```bash
adb install -r dudu_led_bridge.apk
```

Or copy `dudu_led_bridge.apk` to a USB flash drive and install it using the head unit's File Manager.

---

## 📡 Automation / Broadcast Intent API

You can trigger lighting changes from DuduLauncher gestures, shortcuts, Tasker, or MacroDroid using broadcast intents:

| Action | Extras | Description | Example |
|---|---|---|---|
| `com.dudu.ledbridge.SET_COLOR` | `int r`, `int g`, `int b` (0–255) | Sets ambient RGB color | `am broadcast -a com.dudu.ledbridge.SET_COLOR --ei r 0 --ei g 102 --ei b 255` |
| `com.dudu.ledbridge.SET_PRESET` | `String preset` | Applies named OEM preset | `am broadcast -a com.dudu.ledbridge.SET_PRESET --es preset "vw"` |
| `com.dudu.ledbridge.SET_POWER` | `boolean power` or `boolean toggle` | Turns strip ON/OFF or toggles | `am broadcast -a com.dudu.ledbridge.SET_POWER --ez toggle true` |
| `com.dudu.ledbridge.SET_BRIGHTNESS` | `int brightness` (0–100) | Adjusts brightness | `am broadcast -a com.dudu.ledbridge.SET_BRIGHTNESS --ei brightness 75` |
| `com.dudu.ledbridge.SCAN` | *none* | Triggers BLE device scan | `am broadcast -a com.dudu.ledbridge.SCAN` |

---

## 🛠️ DuduLauncher Splash Screen Tool

The workspace includes `replace_splash.sh` to customize DuduLauncher's boot splash screen:

```bash
# Set custom car image centered on black background:
./replace_splash.sh --car

# Set photorealistic brushed-chrome Volkswagen emblem:
./replace_splash.sh --vw-black

# Set custom image file:
./replace_splash.sh /path/to/my_image.png
```

---

## 🔨 Building from Source

To compile and sign `dudu_led_bridge.apk` from source:

```bash
bash build_led_bridge.sh
```

**Requirements:**
- Android SDK (`android.jar` API 30+)
- `aapt2`
- `d8` (R8)
- `uber-apk-signer.jar`

---

## 📄 License

MIT License. Feel free to use, modify, and distribute.
