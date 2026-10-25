package com.silv3r.passatb7.telemetry.engine;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

import java.io.File;

public class StreamerDaemonManager {
    private static final String TAG = "StreamerDaemon";
    private static final String STREAMER_DIR = "/data/nwd_streamer";
    private static final String GO2RTC_BIN = "/data/nwd_streamer/go2rtc";
    private static final String GO2RTC_CONFIG = "/data/nwd_streamer/go2rtc.yaml";

    private final Context mContext;
    private Process mProcess;

    public StreamerDaemonManager(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public synchronized void startStreamer() {
        new Thread(() -> {
            try {
                // Ensure directory exists
                File dir = new File(STREAMER_DIR);
                if (!dir.exists()) {
                    dir.mkdirs();
                }

                File bin = new File(GO2RTC_BIN);
                if (!bin.exists()) {
                    // Check if in /data/local/tmp/go2rtc
                    File tmpBin = new File("/data/local/tmp/go2rtc");
                    if (tmpBin.exists()) {
                        Runtime.getRuntime().exec(new String[]{"cp", tmpBin.getAbsolutePath(), GO2RTC_BIN}).waitFor();
                        Runtime.getRuntime().exec(new String[]{"chmod", "755", GO2RTC_BIN}).waitFor();
                    }
                }

                File cfg = new File(GO2RTC_CONFIG);
                if (!cfg.exists()) {
                    File tmpCfg = new File("/data/local/tmp/go2rtc.yaml");
                    if (tmpCfg.exists()) {
                        Runtime.getRuntime().exec(new String[]{"cp", tmpCfg.getAbsolutePath(), GO2RTC_CONFIG}).waitFor();
                    }
                }

                // Check if already running
                if (isAlreadyRunning()) {
                    Log.i(TAG, "go2rtc daemon is already running.");
                    return;
                }

                if (bin.exists() && cfg.exists()) {
                    Log.i(TAG, "Starting go2rtc background WebRTC daemon...");
                    ProcessBuilder pb = new ProcessBuilder(GO2RTC_BIN, "-c", GO2RTC_CONFIG);
                    pb.redirectErrorStream(true);
                    mProcess = pb.start();
                    Log.i(TAG, "go2rtc WebRTC streamer started successfully!");
                }
            } catch (Exception e) {
                Log.e(TAG, "Failed to start go2rtc daemon", e);
            }
        }).start();
    }

    private boolean isAlreadyRunning() {
        try {
            Process p = Runtime.getRuntime().exec(new String[]{"sh", "-c", "pidof go2rtc"});
            p.waitFor();
            return p.exitValue() == 0;
        } catch (Exception e) {
            return false;
        }
    }

    public void open360View() {
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.setClassName("com.ivicar.avm", "com.ivicar.modules.main.view.MainNowadaActivity");
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            mContext.startActivity(intent);
            Log.i(TAG, "Opened 360 Panoramic AVM Activity");
        } catch (Exception e) {
            Log.e(TAG, "Error opening 360 Panoramic view", e);
        }
    }
}
