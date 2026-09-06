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

Generic aftermarket car LED ambient lighting kits (**LEDLAMP**, **LEDCAR-01**, **ELK-BLEDOM**, **Lotus Lantern**, **duoCo Strip**) sold on AliExpress and Amazon do not communicate natively with DUDU Launcher.

**DuduLedBridge** is an in-car BLE bridge and translator app designed specifically for Android head units to bridge these strips directly into **DUDU Launcher's native interface**.

### Features:
1. **Virtual Duoco / ELK-BLEDOM Server (Native DUDU Integration)**:
   - Emulates an **ELK-BLEDOM (0xFFF0/0xFFF3)** GATT server right on the Android head unit.
   - Responds to DUDU Launcher's native connection query and periodic handshake heartbeat so DUDU Launcher marks the connection as permanently **ACTIVE**.
   - Translates incoming commands from **DUDU Launcher's native Ambient Light window, day/night scene switch, and desktop widget** into the exact 9-byte packets (`0x7B ... 0xBF` and `0x7E ... 0xEF`) required by the car's **LEDCAR-01** controller.
   - No separate app needs to stay open during normal driving!

2. **Automotive Cockpit Dark UI (1280×720 Native HD)**:
   - Full 1280×720 widescreen layout with sharp typography (`minSdkVersion="21"`, `targetSdkVersion="29"`).
   - Real-time RGB glow preview card with HEX readout and color sliders.
   - Master Brightness slider with step presets (`25%`, `50%`, `75%`, `MAX`).
   - Quick-access automotive color presets (**VW Blue**, **Golf R Ice Cyan**, **Audi Red**, **BMW Amber**, **Mercedes Violet**, **Passat Warm White**).

3. **Dynamic Effects & Strip Configuration**:
   - Built-in triggers for **Dreamcolor**, **Rainbow Flow**, **Meteor Chase**, **Water Stream**, and **Pulse Breathe**.
   - Strip Flow Direction toggle (`Forward` / `Reverse`).
   - Speed adjustment slider (1-100%).

4. **Boot Auto-Connect & State Persistence**:
   - Background service starts automatically on vehicle ignition (`BOOT_COMPLETED`, `QUICKBOOT_POWERON`, `ACTION_POWER_CONNECTED`).
   - Maintains continuous link to the car's LED controller.

---

## 📲 Installation Guide

### Option 1: One-Click Installer Script (Recommended)
When your car is parked and connected to Wi-Fi:
```bash
# Connect and install automatically:
bash install_led_bridge.sh

# Or specify a custom head unit IP if needed:
bash install_led_bridge.sh 10.152.214.120:5555
```

### Option 2: Via ADB Manual Install
```bash
adb install -r release_apks/dudu_led_bridge.apk
```

### Option 3: Via USB Flash Drive
1. Copy `release_apks/dudu_led_bridge.apk` to a USB flash drive.
2. Plug the drive into your car's USB port.
3. Open the head unit's **File Manager** and tap the APK to install.

---

## ⚙️ Connecting DUDU Launcher Native Ambient Light
Once installed:
1. Open **DUDU Launcher Settings** ➔ **Ambient Light Settings** (氛围灯设置).
2. Select **BLE / Third-Party Branded Ambient Lights** (Duoco).
3. Scan for devices: **ELK-BLEDOM** will appear in the list.
4. Tap **ELK-BLEDOM** to connect. It will connect immediately and stay connected!
5. Now you can control your car's ambient lighting directly from DUDU Launcher's native desktop widget, day/night auto-brightness, and scenes.

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
