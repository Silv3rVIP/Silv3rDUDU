# Silv3rDUDU - DUDU Launcher Customization & Ambient LED Suite

[![Platform](https://img.shields.io/badge/Platform-Android%20Car%20Head%20Units-blue.svg)](https://android.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Launcher](https://img.shields.io/badge/DUDU%20Launcher-v1.001007--Mod-purple.svg)](dudulauncher_vw_logo_mod.apk)
[![Companion](https://img.shields.io/badge/LED%20Ambient-Bridge%20v1.0-orange.svg)](dudu_led_bridge.apk)

A complete in-car software and modification suite for **DUDU Launcher** (DuduOS) on Android automotive head units (FYT 7862, Topway TS10, Qualcomm Snapdragon automotive platforms).

---

## 📦 What's Included

| Package | File | Size | Description |
|---|---|---|---|
| **Passat Boot Mod** | [`dudulauncher_passat_mod.apk`](dudulauncher_passat_mod.apk) | 31 MB | DUDU Launcher with custom Passat boot screen, Chinese text removed, and ViViMusic package queries enabled |
| **VW Chrome Mod** | [`dudulauncher_vw_logo_mod.apk`](dudulauncher_vw_logo_mod.apk) | 30 MB | DUDU Launcher with brushed-chrome VW emblem on pure black, Chinese text removed, and ViViMusic queries enabled |
| **LED Companion App** | [`dudu_led_bridge.apk`](dudu_led_bridge.apk) | 82 KB | Standalone BLE ambient lighting companion app for generic LEDLAMP / ELK-BLEDOM controllers |
| **Stock Launcher** | [`dudulauncher.apk`](dudulauncher.apk) | 34 MB | Original unmodified DUDU Launcher APK for backup/reference |

---

## 🚗 Part 1: DUDU Launcher Modifications

### 1. Clean Startup Screen (No Chinese Characters)
- Replaced the stock pink "D" logo and Chinese startup tagline (`嘟嘟车机 智慧出行`) with a clean `#000000` pitch black background.
- Preserves AMOLED / IPS contrast in car interiors during night ignition.
- Comes in two ready-to-use editions:
  - **Passat Edition**: Centered Volkswagen Passat photo on deep black.
  - **VW Chrome Emblem**: Sleek brushed-chrome Volkswagen roundel.

### 2. Splash Screen Automation (`replace_splash.sh`)
Easily rebrand or replace the boot logo in under 15 seconds with any image:

```bash
# Apply Passat car boot screen:
./replace_splash.sh --car

# Apply photorealistic VW emblem:
./replace_splash.sh --vw-black

# Apply any custom picture from your computer:
./replace_splash.sh /path/to/my_image.png

# Pure blank black screen (stealth OEM look):
./replace_splash.sh --blank
```

### 3. ViViMusic & Third-Party Music Widget Support
Android 11+ (API 30+) package visibility restrictions hide non-standard music apps from DUDU Launcher. Both modded launcher APKs have `<queries>` package rules and `QUERY_ALL_PACKAGES` injected into `AndroidManifest.xml` so the launcher can query:
- `com.vivi.vivimusic` (ViViMusic)
- `it.vfsfitvnm.vimusic`
- `com.spotify.music`

#### Setting up ViViMusic:
1. In Android Settings -> **Special App Access** -> **Notification Access**, enable access for **DUDU Launcher**.
2. Open DUDU Launcher Settings -> **Music Widget Settings** -> select **"Generic Music"** (or ViViMusic).
3. Play music in ViViMusic — title, artist, album art, and playback controls will sync with the launcher.

---

## 💡 Part 2: DuduLedBridge (In-Car BLE Ambient Lighting)

Generic aftermarket car LED ambient lighting kits (**LEDLAMP**, **ELK-BLEDOM**, **Triones**, **Lotus Lantern**, **duoCo Strip**) sold on AliExpress and Amazon do not communicate with DUDU Launcher's proprietary ambient module.

**DuduLedBridge** is an open-source companion app designed specifically for Android car head units to control these strips effortlessly.

### Features:
1. **Automotive Cockpit Dark UI**:
   - Custom automotive ambient dashboard app icon.
   - Status badge indicator (Green `CONNECTED`, Blue `SCANNING...`, Red `DISCONNECTED`).
   - Real-time RGB glow preview card with HEX readout and live color preview.
   - Master Brightness slider with one-tap step buttons (`25%`, `50%`, `75%`, `MAX`).
   - Smooth Red, Green, and Blue sliders.

2. **10 OEM Car Presets**:
   - **VW Blue** (`#0066FF` - Volkswagen signature)
   - **Golf R Ice Cyan** (`#00E5FF`)
   - **Audi Sport Red** (`#FF0033`)
   - **BMW M Amber** (`#FF6600`)
   - **Mercedes Ambient Violet** (`#9900FF`)
   - **Porsche Racing Yellow** (`#FFCC00`)
   - **AMG Acid Green** (`#00FF66`)
   - **Passat Warm White** (`#FFE6CC`)
   - **Pure Diamond White** (`#FFFFFF`)
   - **Night Magenta** (`#FF0077`)

3. **Multi-Protocol BLE Engine**:
   - Transmits simultaneously across **ELK-BLEDOM (`7E 07`)**, **Triones (`56`)**, and **duoCo (`7E 00`)** GATT characteristics.
   - Works across all writable endpoints automatically.
   - **Device Picker Dialog**: Tap **DEVICES** to view all nearby discovered Bluetooth devices with RSSI signal strength meters.

4. **Dynamic Effects & Music Reactive Mode**:
   - **Music Beat Sync**: Uses Android's Audio `Visualizer` API to dynamically pulse ambient brightness to music playback.
   - **Smooth Breathe** & **Rainbow Flow** atmospheric modes.

5. **Boot Auto-Connect & State Persistence**:
   - Background service starts on car boot (`BOOT_COMPLETED`, `QUICKBOOT_POWERON`, `ACTION_POWER_CONNECTED`).
   - Restores the last connected MAC address, color, and brightness automatically every time you start the car.

6. **Broadcast Automation API**:
   Control lighting from DUDU Launcher gestures, shortcuts, Tasker, or MacroDroid:
   ```bash
   # Set to VW Blue
   adb shell am broadcast -a com.dudu.ledbridge.SET_COLOR --ei r 0 --ei g 102 --ei b 255

   # Set Preset
   adb shell am broadcast -a com.dudu.ledbridge.SET_PRESET --es preset "vw"

   # Toggle Power
   adb shell am broadcast -a com.dudu.ledbridge.SET_POWER --ez toggle true

   # Adjust Brightness
   adb shell am broadcast -a com.dudu.ledbridge.SET_BRIGHTNESS --ei brightness 85
   ```

---

## 📲 Installation Guide

### Via ADB:
```bash
# Install Dudu Launcher (Passat Edition)
adb install -r dudulauncher_passat_mod.apk

# Install LED Ambient Bridge
adb install -r dudu_led_bridge.apk
```

### Via USB Drive:
1. Copy the desired `.apk` files to a USB flash drive.
2. Plug into your car's USB port.
3. Open the head unit's **File Manager** and tap the APK to install.

---

## 🔨 Building from Source

### Compiling DuduLedBridge:
```bash
bash build_led_bridge.sh
```

### Recompiling DUDU Launcher:
```bash
apktool b dudu_src -o dudu_mod_unsigned.apk
java -jar ~/uber-apk-signer.jar --apks dudu_mod_unsigned.apk --out .
```

---

## 📄 License

MIT License. Copyright (c) 2026 Silvio Suljić.
