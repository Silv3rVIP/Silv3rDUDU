import io

part7_8 = """## 🏎️ Part 7: Passat B7 Telemetry, Trip & Fuel Logger App

A standalone, OEM-styled Android telemetry dashboard and automated drive logger created specifically for the **Volkswagen Passat B7 (PQ46 platform)**.

- **Platform Signed UID 1000**: Runs with `android.uid.system` for deep, unrestricted access to system services and persistence across reboots.
- **Direct Raise CANbus IPC**: Connects to `com.nwd.can.service.CanService` via AIDL (`ICanRemote4OuterFeature` / `ICanRemoteModelCallback`), reading live speed, engine RPM, lifetime odometer, fuel remaining in liters, battery voltage, coolant temp, door states, and parking brake.
- **Automated Drive & Trip Tracking**: Automatically detects drive start/stop cycles, logs distance, trip duration, max/average speed, fuel burned, and precise average consumption (**L/100km**) into a local SQLite database (`passat_b7_telemetry.db`).
- **Intelligent Refueling Detector**: Uses a stationary delta-verification algorithm (>= +4.5L jump detection) to log every gas station refueling event with timestamp, liters added, and vehicle odometer reading.
- **Passat B7 Sedan 3D Silhouette**: Custom hardware-accelerated canvas rendering the Passat B7 Sedan (Limousine) with interactive open door alerts (FL, FR, RL, RR), trunk open indicator, and hood open warning.
- **Floating Climatronic HUD**: Auto-popup showing driver/passenger dual-zone temperatures, fan speed bar, and seat heating levels when knobs are turned.
- **Build & Install**:
  ```powershell
  powershell -ExecutionPolicy Bypass -File .\\build_telemetry_app.ps1
  adb install -r -d PassatB7Telemetry.apk
  ```

---

## 📡 Part 8: Remote 360° Panoramic Live Camera Streaming (Cellular 4G LTE)

Enables live, remote video surveillance of the vehicle's 360° panoramic cameras (`com.ivicar.avm`) directly on your smartphone over the headunit's 4G LTE SIM data connection.

- **Carrier-Grade NAT (CGNAT) Bypass**: Uses **Tailscale** to create an end-to-end encrypted WireGuard mesh tunnel between your smartphone and headunit, eliminating the need for public IPs or cellular port forwarding.
- **Hardware-Accelerated WebRTC Engine (`go2rtc`)**: Runs a native ARM64 WebRTC/RTSP daemon on the headunit, capturing the 360° composite camera feed with hardware H.264 encoding (`/dev/sprd_vsp`) at ultra-low latency (< 150ms).
- **Instant Phone Access**: Open Chrome or Safari on your phone:
  ```
  http://<HEADUNIT_TAILSCALE_IP>:1984/stream.html?src=cam360
  ```
- **RTSP Stream URL** (for VLC or surveillance apps):
  ```
  rtsp://<HEADUNIT_TAILSCALE_IP>:8554/cam360
  ```

---

"""

readme_path = r"c:\Users\silv3\OneDrive\Desktop\NEW\README.md"
with io.open(readme_path, "r", encoding="utf-8") as f:
    content = f.read()

target = "## 📄 License"
if target in content:
    new_content = content.replace(target, part7_8 + target)
    with io.open(readme_path, "w", encoding="utf-8") as f:
        f.write(new_content)
    print("Updated README.md successfully!")
else:
    print("Target not found!")
