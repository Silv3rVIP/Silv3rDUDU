# Passat B7 Telemetry, Trip & Fuel Logger

A high-performance, OEM-styled Android telemetry dashboard and drive logger tailored specifically for the **Volkswagen Passat B7 (PQ46 platform)**.

Built to run with **Android Platform UID 1000 (`android.uid.system`)** on UIS8581A / Android 10 headunits, directly communicating with the Raise CANbus framework (`com.nwd.can.setting`).

---

## 🌟 Key Features

### 1. Authentic Volkswagen Highline MFA / FIS Cockpit Styling
- **Volkswagen Color Palette**: Crisp white instruments, VW instrument blue accents (`#0084DE`), and high-contrast red needle indicators (`#E61E28`).
- **Passat B7 Sedan (Limousine) 3D Model**: Real-time visualization of individual door states (Front-Left, Front-Right, Rear-Left, Rear-Right), trunk/tailgate ajar alert, and hood open warning.
- **Electronic Parking Brake (EPB) & Seatbelts**: Real-time monitoring of the Passat B7 electronic parking brake and buckle sensors.
- **Engine Coolant & Outside Temperature**: Digital readouts for coolant temp (40°C - 130°C) and exterior ambient bumper sensor.

### 2. Automated Drive & Trip Logging Engine
- **Zero-Touch Trip Tracking**: Automatically detects when a drive begins (`engineRpm > 400` or `speed > 3 km/h`) and latches start time, odometer, and starting fuel level.
- **Accurate Efficiency Metric (L/100km)**: Continuously computes trip distance, fuel consumed, average consumption ($L/100\text{km}$), top speed, average speed, and engine idling duration.
- **Local SQLite History Database**: All drives are automatically stored in `/data/data/com.silv3r.passatb7.telemetry/databases/passat_b7_telemetry.db`.
- **Trip History Screen**: View past drives, total lifetime mileage, total fuel burned, and aggregate fuel economy.

### 3. Intelligent Delta Refueling Detector
- **Fuel Slosh Filtering**: Evaluates stationary fuel level over a 5-second stabilization window.
- **Refuel Event Logging**: When a fuel addition of $\ge 4.5\text{ Liters}$ is detected, the app automatically logs a Refueling Event with timestamp, exact liters added, and vehicle odometer reading.

### 4. Alternator & Battery Health Diagnostics
- **Live Battery Voltage**: 0.1V precision monitoring.
- **Charging Indicator**: Automatically detects alternator charging state ($> 13.2\text{V}$ normal alternator charge vs $< 12.0\text{V}$ parked low battery warning).

### 5. Floating Climatronic HUD Overlay
- When driver/passenger temperature knobs, fan speed, or seat heaters are adjusted, a floating OEM Volkswagen Climatronic popup smoothly displays the dual-zone temperatures and auto-dismisses after 3.5 seconds.

---

## 🛠️ Build & Installation

The project uses a clean, self-contained standalone build script:
```powershell
powershell -ExecutionPolicy Bypass -File .\build_telemetry_app.ps1
```

Install to headunit via ADB:
```bash
adb install -r -d PassatB7Telemetry.apk
```

Launch the app:
```bash
adb shell am start -n com.silv3r.passatb7.telemetry/.MainActivity
```
