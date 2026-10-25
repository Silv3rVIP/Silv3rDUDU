# Remote 360° Panoramic Camera Live Streaming (Cellular 4G LTE)

This component enables real-time, low-latency live video streaming of the vehicle's 360° panoramic cameras (`com.ivicar.avm`) to your mobile phone over cellular 4G LTE data.

---

## 🚀 How It Works

1. **Bypassing Cellular CGNAT**:
   - Mobile network carriers assign private IPs to SIM cards that cannot be reached directly from the internet.
   - **Tailscale** creates an encrypted peer-to-peer WireGuard mesh tunnel between your smartphone and the headunit, completely bypassing carrier firewalls and NAT without port forwarding.

2. **Ultra-Low Latency Streaming Engine (`go2rtc`)**:
   - Runs `go2rtc` (ARM64 binary) natively on the UIS8581A Android 10 headunit.
   - Captures the 360° panoramic stitched video stream using hardware H.264 encoding (`/dev/sprd_vsp`).
   - Serves the feed over **WebRTC** (latency < 150ms) and **RTSP**.

---

## 📱 Quick Setup Guide for Phone Viewing

### Step 1: Install Tailscale
1. Download **Tailscale** on your phone (Google Play / App Store).
2. Install **Tailscale** on the Android headunit (available via APK or Play Store).
3. Log in to both devices with the same free Tailscale account.
4. Note the headunit's Tailscale IP address (e.g. `100.80.20.10`).

### Step 2: Open Live Stream on Phone
Open your phone's web browser (Chrome, Safari) and navigate to:
```
http://<HEADUNIT_TAILSCALE_IP>:1984/stream.html?src=cam360
```
- Smooth 30fps hardware-accelerated live video stream appears immediately.
- Works from anywhere in the world on mobile data.

### Step 3: RTSP Stream (Optional for VLC or Security Apps)
```
rtsp://<HEADUNIT_TAILSCALE_IP>:8554/cam360
```
