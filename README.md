# Silv3rDUDU - Automotive Customization, DSP Audio & Ambient Suite

[![Platform](https://img.shields.io/badge/Platform-Android%20Car%20Head%20Units-blue.svg)](https://android.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Launcher](https://img.shields.io/badge/DUDU%20Launcher-v1.016020--Mod-purple.svg)](dudulauncher_1.016020_vw_pip_vivi_mod.apk)
[![DSP](https://img.shields.io/badge/AudioSet%20DSP-AK7604--DTS--PassatB7-red.svg)](dsp_app/audioset_unified_mod.apk)
[![Companion](https://img.shields.io/badge/LED%20Ambient-Bridge%20v1.0-orange.svg)](dudu_led_bridge.apk)

A complete in-car software and modification suite for **DUDU Launcher** (DuduOS) and **Nowada / UIS8581A / AK7604 DSP** Android automotive head units (Volkswagen Passat B7 and VAG platforms).

---

## 📦 What's Included

| Component | File | Size | Description |
|---|---|---|---|
| **AudioSet Unified 6-Tab DSP** | [`dsp_app/audioset_unified_mod.apk`](dsp_app/audioset_unified_mod.apk) | 8.2 MB | Unified 6-tab DSP app with unlocked DTS, 32-band PEQ, and Passat B7 acoustic curve |
| **DUDU 1.016020 Pure VW Edition** | [`dudulauncher_1.016020_vw_pure.apk`](dudulauncher_1.016020_vw_pure.apk) | 37 MB | Pure official Tencent Legu build with 3D VW emblem splash, System UID 1000, 100% Theme Store/Car models intact, and auto GPS EU weather |
| **DUDU Launcher 1.016020 VW PiP** | [`dudulauncher_1.016020_vw_pip_vivi_mod.apk`](dudulauncher_1.016020_vw_pip_vivi_mod.apk) | 38 MB | Latest DUDU v1.016020 with PiP multitasking, anti-tamper bypass, and ViViMusic queries |
| **DUDU Launcher Passat PiP** | [`dudulauncher_passat_pip_mod.apk`](dudulauncher_passat_pip_mod.apk) | 32 MB | DUDU Launcher with Passat boot screen, PiP multitasking, and ViViMusic queries |
| **DUDU Launcher VW Logo PiP** | [`dudulauncher_vw_logo_pip_mod.apk`](dudulauncher_vw_logo_pip_mod.apk) | 45 MB | DUDU Launcher with VW Chrome logo, PiP multitasking, and ViViMusic queries |
| **LED Companion App** | [`dudu_led_bridge.apk`](dudu_led_bridge.apk) | 82 KB | Standalone BLE ambient lighting companion app for generic LEDLAMP / ELK-BLEDOM controllers |
| **NWD Background Whitelist** | [`tools/nwd_background_daemon/`](tools/nwd_background_daemon/) | Configs | K4811 NWD background manager protection files keeping DUDU, ViPER4Android, ViVi, and Radarbot permanently alive |
| **Stock Launcher Backup** | [`dudulauncher.apk`](dudulauncher.apk) | 34 MB | Original unmodified DUDU Launcher APK for backup/reference |
| **Sound Mixing Persister** | [`tools/sound_mix/`](tools/sound_mix/) | Script | Root daemon in `service.d` locking Sound Mixing to Level 9 across reboots |

---

## 🎛️ Part 1: AudioSet DSP & DTS Unified 6-Tab Suite (Passat B7 Tuned)

The stock head unit DSP application (`com.nwd.audioset`) for the **Asahi Kasei AK7604** dedicated hardware DSP processor originally restricted users to either 5 basic tabs or a collapsed DTS mode.

Our unified modification merges all audio processing features into a **single, responsive 6-tab interface** with Passat B7-specific acoustic tuning:

### 1. Unified 6-Tab Interface
1. **`[ DTS ]`**: DTS co-processor master toggle, Virtual Center speaker mode, Sound Focusing (Driver, Passenger, Front, All), DTS Surround Mode, DTS Bass Boost, and Scene Presets (Cinema, Music, Specialty).
2. **`[ EQ ]`**: 32-band Parametric Equalizer pre-tuned for Passat B7 cabin acoustics.
3. **`[ Sound Field ]`**: 2D coordinate grid fader and balance controls.
4. **`[ Channels ]`**: Individual speaker gain attenuation and $0^\circ / 180^\circ$ phase inversion switches.
5. **`[ Crossover ]`**: Front High-Pass Filter ($63\text{ Hz}$ @ $12\text{ dB/oct}$) and silk dome Low-Pass Filter ($20\text{ kHz}$ @ $6\text{ dB/oct}$).
6. **`[ Time Alignment / King Seat ]`**: Millisecond acoustic arrival delay compensation for the driver's seat ($\text{FL}: 1.7\text{ ms}$, $\text{FR}: 0.0\text{ ms}$, $\text{RL}: 1.4\text{ ms}$, $\text{RR}: 0.2\text{ ms}$).

### 2. Passat B7 Acoustic Optimization
- **160 Hz - 250 Hz Door Cavity Taming**: Attenuated standing waves in the lower door cards by $-3\text{ dB}$ to $-4.5\text{ dB}$, eliminating hollow boxiness.
- **2.5 kHz - 3.15 kHz Windshield Reflection Smoothing**: Smoothed the steep windshield reflection spike by $-2.5\text{ dB}$ for non-fatiguing vocals.
- **10 kHz - 18 kHz Silk Dome "Air" Lift**: Lifted higher treble frequencies by $+3\text{ dB}$ to $+4\text{ dB}$ to restore sparkle through OEM door pillar grilles.
- **63 Hz Front HPF Protection**: High-pass filter protects the 6.5" OEM paper-cone door speakers from low-frequency distortion and mechanical bottoming out.
- **20 kHz Silk Dome LPF Restoration**: Restored top-end extension from the factory $12.5\text{ kHz}$ choke to the full $20\text{ kHz}$ range.

---

## 🚗 Part 2: DUDU Launcher Modifications

### 1. Picture-in-Picture (PiP) Multitasking
- Enabled `supportsPictureInPicture="true"` and injected required framework permissions (`ACTIVITY_EMBEDDING`, `MANAGE_ACTIVITY_STACKS`, `INTERNAL_SYSTEM_WINDOW`).
- Allows navigation apps (Google Maps, Waze, Radarbot) to float smoothly over the launcher home screen.

### 2. Anti-Tamper & Signature Verification Bypass
- Neutralized Dalvik byte-level package check calls (`AppCheck20.check()`, `manage/s/i.smali`, `manage/x/o.smali`, and UI base64 signature tests).
- Bypassed forced `System.exit()` and `Process.killProcess()` termination routines.

### 3. Clean Startup Screens (No Chinese Characters)
- Replaced the stock pink "D" logo and Chinese startup tagline (`嘟嘟车机 智慧出行`) with clean pitch black AMOLED-friendly screens.
- Ready-to-use editions for **Volkswagen Passat** and **VW Brushed Chrome Roundel**.

### 4. ViViMusic & Third-Party Music Widget Support
- Injected `<queries>` package rules and `QUERY_ALL_PACKAGES` into `AndroidManifest.xml` so the media widget detects `com.vivi.vivimusic`, `it.vfsfitvnm.vimusic`, and `com.spotify.music`.

---

## 💡 Part 3: DuduLedBridge (In-Car BLE Ambient Lighting)

**DuduLedBridge** is an in-car BLE bridge and translator app designed specifically for Android head units to bridge aftermarket LED ambient kits (**LEDLAMP**, **LEDCAR-01**, **ELK-BLEDOM**) directly into **DUDU Launcher's native interface**.

### Features:
1. **Virtual Duoco / ELK-BLEDOM Server**:
   - Emulates an **ELK-BLEDOM (0xFFF0/0xFFF3)** GATT server right on the Android head unit.
   - Translates incoming commands from **DUDU Launcher's native Ambient Light window, day/night scene switch, and desktop widget** into the exact 9-byte packets (`0x7B ... 0xBF` and `0x7E ... 0xEF`) required by the car's **LEDCAR-01** controller.
2. **Automotive Cockpit Dark UI (1280×720 Native HD)**:
   - Full 1280×720 widescreen layout with sharp typography (`minSdkVersion="21"`, `targetSdkVersion="29"`).
   - Real-time RGB glow preview card with HEX readout and color sliders.
   - Quick-access automotive color presets (**VW Blue**, **Golf R Ice Cyan**, **Audi Red**, **BMW Amber**, **Mercedes Violet**, **Passat Warm White**).

---

## 🛡️ Part 4: K4811 NWD Background Daemon Whitelist & App Persistence

On K4811 (Nowada / NWD UIS8581A) head units, a proprietary multi-tier watchdog and task management system aggressively kills background apps within 5 seconds of leaving the screen.

We identified and configured all **6 NWD Background Process Managers** located in `/data/nwdappconfig/app/`:

1. **`TaskWhitelist.xml`**: Bypasses the 5-second task exit killer (`ExitMode="1"`).
2. **`BackgroundManager.ini`**: Exempts background processes from memory reclamation.
3. **`PromotionAppAdjList.ini`**: Promotes process priority to permanent system-level `oom_adj = -900`.
4. **`OneClearConfig.xml`**: Protects processes against One-Key Clear and system garbage collection (`powernotkill`).
5. **`DisableWakeAppSelfStart.xml` & `AllowSleepAppSelfStart.xml`**: Permits wake/sleep self-start and persistent restart after deep standby.
6. **`AppConfig.xml`**: Registers apps as native top-level NWD system applications to avoid audio source conflicts.

### Protected Applications:
- `com.dudu.autoui` (DUDU Launcher)
- `com.vivi.vivimusic` (ViVi Music Player)
- `com.llsl.viper4android` (ViPER4Android Audio FX)
- `com.vialsoft.radarbot_free` (Radarbot Speed Camera Detector)

Apply automatically using:
```bash
bash tools/nwd_background_daemon/apply_whitelist.sh
```

---

## ⚡ Part 5: DUDU Pure VW Edition (Tencent Legu Encrypted)

For users who want **100% of the original DUDU experience** without decompilation:
- **Zero integrity crashes**: Stock Tencent Legu encryption and signature integrity remain completely untouched.
- **Full Domestic Feature Mall**: All 3D car models, online Theme Store, vehicle state telemetry, and dynamic desktop layouts remain functional.
- **Custom 3D VW Splash**: Official Chinese splash banner replaced with clean 3D Volkswagen roundel.
- **Native European Weather**: Stock bytecode connects directly to DUDU's official European weather server (`https://abroad-app-eu1.dudu-auto.com/api/app/weather/info`) as soon as the GPS antenna receives real-time satellite coordinates.
- **Platform Signed (UID 1000)**: Runs as privileged system user (`android.uid.system`).

---

## 📲 Installation Guide

### Installing Unified AudioSet DSP APK:
```bash
adb install -r dsp_app/audioset_unified_mod.apk
```

### Installing DUDU Launcher Modded APK:
```bash
adb install -r dudulauncher_1.016020_vw_pip_vivi_mod.apk
```

### Installing LED Companion App:
```bash
adb install -r dudu_led_bridge.apk
```

---

## 🔨 Patching & Building from Source

### Patching AudioSet DSP:
```bash
python patch_audioset.py
java -jar apktool.jar b dsp_app/audioset_decompiled -o audioset_mod.apk
apksigner sign --key testkey.pk8 --cert testkey.x509.pem audioset_mod.apk
```

### Patching DUDU Launcher 1.016020:
```bash
python patch_16020_pip.py
python patch_complete.py
```

---

---

## 🎚️ Part 6: Permanent Sound Mixing Fix (Level 9 Persistence)

### The Issue
On Nowada / K4811 UIS8581A headunits, setting **Car Settings -> Navi software settings -> Sound mixing** to Level `9` resets back to `5` on every cold boot and deep sleep (ACC OFF / ON) wake cycle.

### Root Cause Analysis (Reverse Engineered)
1. **MCU Default State**: The MCU firmware starts up with its internal DSP mixing ratio hardcoded to `5`.
2. **UART Status Packet**: On every reboot or ACC wake, the MCU sends a status dump over `/dev/ttyS2` (`[0xF0, 0x04, 0x0E, 0x0A, 0x00, 0x05, 0x27]`).
3. **Unconditional Android Overwrite**: In `com.nwd.setting.service.SettingManager`, the callback `onGetMixRatio(5)` unconditionally writes `5` to `Settings.System.putInt("mcu_other_setting_volume_mix", 5)` and updates the UI slider, wiping out the user's setting.

### Solution: `sound_mix_persister.sh`
Located in [`tools/sound_mix/sound_mix_persister.sh`](tools/sound_mix/sound_mix_persister.sh), this lightweight root daemon runs via Magisk's `service.d`:
- **Hardware UART Injection**: Sends `ð
 	+` directly to `/dev/ttyS2`, forcing the MCU's audio DSP mixer to Level 9.
- **Settings DB Lock**: Updates `mcu_other_setting_volume_mix` to `9`.
- **Anti-Reset Watchdog**: Detects whenever the MCU resets back to `5` on wake-up and instantly restores Level 9. If the user intentionally changes to another value in Car Settings (e.g. 8 or 10), it dynamically adapts and locks to that new level.

### Deployment:
```bash
adb push tools/sound_mix/sound_mix_persister.sh /data/adb/service.d/sound_mix_persister.sh
adb shell chmod 755 /data/adb/service.d/sound_mix_persister.sh
```

## 📄 License

MIT License. Copyright (c) 2026 Silvio Suljić.
