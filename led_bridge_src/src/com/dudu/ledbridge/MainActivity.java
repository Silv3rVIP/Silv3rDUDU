package com.dudu.ledbridge;

import android.app.Activity;
import android.app.AlertDialog;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.media.audiofx.Visualizer;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.view.View;
import android.widget.Button;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

import java.util.List;

public class MainActivity extends Activity {
    private LedBleService mService;
    private boolean mBound = false;

    private TextView tvStatus, tvDeviceInfo, tvColorHex, tvRgbSummary, tvBrightnessLabel, tvRLabel, tvGLabel, tvBLabel, tvMusicStatus;
    private View viewColorPreview;
    private SeekBar seekBrightness, seekR, seekG, seekB;
    private Button btnScan, btnDevices, btnPower, btnMusicSync, btnEffectBreathe, btnEffectRainbow;
    private Button btnB25, btnB50, btnB75, btnB100;

    private int curR = 0, curG = 102, curB = 255; // Default VW Blue
    private int curBrightness = 100;
    private boolean isPowerOn = true;
    private boolean isMusicSyncOn = false;

    private Visualizer mVisualizer;

    private final ServiceConnection mConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName className, IBinder service) {
            LedBleService.LocalBinder binder = (LedBleService.LocalBinder) service;
            mService = binder.getService();
            mBound = true;

            // Sync state from service
            curR = mService.getCurR();
            curG = mService.getCurG();
            curB = mService.getCurB();
            curBrightness = mService.getCurBrightness();
            isPowerOn = mService.isPowerOn();

            seekR.setProgress(curR);
            seekG.setProgress(curG);
            seekB.setProgress(curB);
            seekBrightness.setProgress(curBrightness);

            updatePowerUI();
            updateColorUI();

            if (mService.isConnected()) {
                updateStatusBadge(true, mService.getConnectedDeviceName());
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName arg0) {
            mBound = false;
            mService = null;
        }
    };

    private final BroadcastReceiver mStatusReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (LedBleService.ACTION_STATUS_CHANGE.equals(intent.getAction())) {
                boolean connected = intent.getBooleanExtra("connected", false);
                String status = intent.getStringExtra("status");
                String devName = intent.getStringExtra("device_name");

                if (connected) {
                    updateStatusBadge(true, devName != null ? devName : "LED");
                } else if (status != null && status.toLowerCase().contains("scan")) {
                    tvStatus.setText("SCANNING...");
                    tvStatus.setBackgroundResource(R.drawable.badge_scanning);
                    tvStatus.setTextColor(Color.parseColor("#60a5fa"));
                } else {
                    updateStatusBadge(false, null);
                }
            }
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Request runtime permissions
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            requestPermissions(new String[]{
                "android.permission.ACCESS_FINE_LOCATION",
                "android.permission.ACCESS_COARSE_LOCATION",
                "android.permission.BLUETOOTH_SCAN",
                "android.permission.BLUETOOTH_CONNECT",
                "android.permission.RECORD_AUDIO"
            }, 100);
        }

        tvStatus = findViewById(R.id.tv_status);
        tvDeviceInfo = findViewById(R.id.tv_device_info);
        tvColorHex = findViewById(R.id.tv_color_hex);
        tvRgbSummary = findViewById(R.id.tv_rgb_summary);
        tvBrightnessLabel = findViewById(R.id.tv_brightness_label);
        tvRLabel = findViewById(R.id.tv_r_label);
        tvGLabel = findViewById(R.id.tv_g_label);
        tvBLabel = findViewById(R.id.tv_b_label);
        tvMusicStatus = findViewById(R.id.tv_music_status);
        viewColorPreview = findViewById(R.id.view_color_preview);

        seekBrightness = findViewById(R.id.seek_brightness);
        seekR = findViewById(R.id.seek_r);
        seekG = findViewById(R.id.seek_g);
        seekB = findViewById(R.id.seek_b);

        btnScan = findViewById(R.id.btn_scan);
        btnDevices = findViewById(R.id.btn_devices);
        btnPower = findViewById(R.id.btn_power);
        btnMusicSync = findViewById(R.id.btn_music_sync);
        btnEffectBreathe = findViewById(R.id.btn_effect_breathe);
        btnEffectRainbow = findViewById(R.id.btn_effect_rainbow);

        btnB25 = findViewById(R.id.btn_b25);
        btnB50 = findViewById(R.id.btn_b50);
        btnB75 = findViewById(R.id.btn_b75);
        btnB100 = findViewById(R.id.btn_b100);

        setupListeners();
        updateColorUI();
        updatePowerUI();

        // Start background service
        Intent serviceIntent = new Intent(this, LedBleService.class);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            startForegroundService(serviceIntent);
        } else {
            startService(serviceIntent);
        }
    }

    @Override
    protected void onStart() {
        super.onStart();
        Intent intent = new Intent(this, LedBleService.class);
        bindService(intent, mConnection, Context.BIND_AUTO_CREATE);
        registerReceiver(mStatusReceiver, new IntentFilter(LedBleService.ACTION_STATUS_CHANGE));
    }

    @Override
    protected void onStop() {
        super.onStop();
        if (mBound) {
            unbindService(mConnection);
            mBound = false;
        }
        try {
            unregisterReceiver(mStatusReceiver);
        } catch (Exception ignored) {}
        stopMusicSync();
    }

    private void updateStatusBadge(boolean connected, String devName) {
        if (connected) {
            tvStatus.setText("CONNECTED");
            tvStatus.setBackgroundResource(R.drawable.badge_connected);
            tvStatus.setTextColor(Color.parseColor("#4ade80"));
            if (devName != null && !devName.isEmpty()) {
                tvDeviceInfo.setText("Active Device: " + devName);
            }
        } else {
            tvStatus.setText("DISCONNECTED");
            tvStatus.setBackgroundResource(R.drawable.badge_disconnected);
            tvStatus.setTextColor(Color.parseColor("#f87171"));
            tvDeviceInfo.setText("No BLE ambient device connected");
        }
    }

    private void updatePowerUI() {
        if (isPowerOn) {
            btnPower.setText("POWER: ON");
            btnPower.setBackgroundResource(R.drawable.btn_power_on);
        } else {
            btnPower.setText("POWER: OFF");
            btnPower.setBackgroundResource(R.drawable.btn_power_off);
        }
    }

    private void setupListeners() {
        btnScan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (mBound && mService != null) {
                    mService.startScan();
                    Toast.makeText(MainActivity.this, "Scanning for BLE ambient lights...", Toast.LENGTH_SHORT).show();
                }
            }
        });

        btnDevices.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showDevicePickerDialog();
            }
        });

        btnPower.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                isPowerOn = !isPowerOn;
                updatePowerUI();
                if (mBound && mService != null) {
                    mService.sendPower(isPowerOn);
                }
            }
        });

        SeekBar.OnSeekBarChangeListener rgbListener = new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                if (fromUser) {
                    curR = seekR.getProgress();
                    curG = seekG.getProgress();
                    curB = seekB.getProgress();
                    updateColorUI();
                    if (mBound && mService != null) {
                        mService.sendColor(curR, curG, curB);
                    }
                }
            }
            @Override public void onStartTrackingTouch(SeekBar seekBar) {}
            @Override public void onStopTrackingTouch(SeekBar seekBar) {}
        };

        seekR.setOnSeekBarChangeListener(rgbListener);
        seekG.setOnSeekBarChangeListener(rgbListener);
        seekB.setOnSeekBarChangeListener(rgbListener);

        seekBrightness.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                curBrightness = progress;
                tvBrightnessLabel.setText("Brightness: " + progress + "%");
                if (fromUser && mBound && mService != null) {
                    mService.sendBrightness(progress);
                }
            }
            @Override public void onStartTrackingTouch(SeekBar seekBar) {}
            @Override public void onStopTrackingTouch(SeekBar seekBar) {}
        });

        // Quick brightness buttons
        btnB25.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { setBrightness(25); }
        });
        btnB50.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { setBrightness(50); }
        });
        btnB75.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { setBrightness(75); }
        });
        btnB100.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { setBrightness(100); }
        });

        // OEM Car Presets
        setPresetClick(R.id.btn_preset_vw, 0, 102, 255, "VW Blue");
        setPresetClick(R.id.btn_preset_golf_r, 0, 229, 255, "Golf R Cyan");
        setPresetClick(R.id.btn_preset_audi, 255, 0, 51, "Audi Red");
        setPresetClick(R.id.btn_preset_bmw, 255, 102, 0, "BMW Amber");
        setPresetClick(R.id.btn_preset_mercedes, 153, 0, 255, "Mercedes Violet");
        setPresetClick(R.id.btn_preset_porsche, 255, 204, 0, "Porsche Yellow");
        setPresetClick(R.id.btn_preset_amg, 0, 255, 102, "AMG Green");
        setPresetClick(R.id.btn_preset_warm, 255, 230, 204, "Passat Warm");
        setPresetClick(R.id.btn_preset_white, 255, 255, 255, "Pure White");
        setPresetClick(R.id.btn_preset_magenta, 255, 0, 119, "Night Magenta");

        // Dynamic Effects
        btnEffectBreathe.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (mBound && mService != null) {
                    mService.sendEffect(0x88, 50); // ELK Smooth Pulse
                    Toast.makeText(MainActivity.this, "Breathe Mode Activated", Toast.LENGTH_SHORT).show();
                }
            }
        });

        btnEffectRainbow.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (mBound && mService != null) {
                    mService.sendEffect(0x87, 50); // ELK Rainbow Cycle
                    Toast.makeText(MainActivity.this, "Rainbow Flow Activated", Toast.LENGTH_SHORT).show();
                }
            }
        });

        // Music Beat Sync
        btnMusicSync.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                isMusicSyncOn = !isMusicSyncOn;
                btnMusicSync.setText(isMusicSyncOn ? "Music Beat Sync: ON" : "Music Beat Sync: OFF");
                if (isMusicSyncOn) {
                    startMusicSync();
                } else {
                    stopMusicSync();
                }
            }
        });
    }

    private void setBrightness(int b) {
        curBrightness = b;
        seekBrightness.setProgress(b);
        tvBrightnessLabel.setText("Brightness: " + b + "%");
        if (mBound && mService != null) {
            mService.sendBrightness(b);
        }
    }

    private void setPresetClick(int buttonId, final int r, final int g, final int b, final String label) {
        Button btn = findViewById(buttonId);
        if (btn != null) {
            btn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    curR = r;
                    curG = g;
                    curB = b;
                    seekR.setProgress(r);
                    seekG.setProgress(g);
                    seekB.setProgress(b);
                    updateColorUI();
                    if (mBound && mService != null) {
                        mService.sendColor(r, g, b);
                    }
                }
            });
        }
    }

    private void updateColorUI() {
        int color = Color.rgb(curR, curG, curB);
        viewColorPreview.setBackgroundColor(color);
        String hex = String.format("#%02X%02X%02X", curR, curG, curB);
        tvColorHex.setText(hex);
        tvRgbSummary.setText("R: " + curR + "  |  G: " + curG + "  |  B: " + curB);
        tvRLabel.setText("Red: " + curR);
        tvGLabel.setText("Green: " + curG);
        tvBLabel.setText("Blue: " + curB);
    }

    private void showDevicePickerDialog() {
        if (!mBound || mService == null) {
            Toast.makeText(this, "Service not ready", Toast.LENGTH_SHORT).show();
            return;
        }

        final List<BluetoothDevice> devices = mService.getDiscoveredDevices();
        if (devices.isEmpty()) {
            mService.startScan();
            Toast.makeText(this, "No devices yet. Scan started...", Toast.LENGTH_SHORT).show();
            return;
        }

        String[] items = new String[devices.size()];
        for (int i = 0; i < devices.size(); i++) {
            BluetoothDevice dev = devices.get(i);
            String name = dev.getName() != null ? dev.getName() : "Unknown Device";
            int rssi = mService.getDeviceRssi(dev.getAddress());
            items[i] = name + " (" + dev.getAddress() + ") [" + rssi + " dBm]";
        }

        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Select Ambient Light Device");
        builder.setItems(items, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                BluetoothDevice selected = devices.get(which);
                mService.connectToDevice(selected);
                Toast.makeText(MainActivity.this, "Connecting to " + selected.getName(), Toast.LENGTH_SHORT).show();
            }
        });
        builder.setNegativeButton("Cancel", null);
        builder.setNeutralButton("Rescan", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                mService.startScan();
            }
        });
        builder.show();
    }

    private void startMusicSync() {
        try {
            mVisualizer = new Visualizer(0);
            mVisualizer.setCaptureSize(Visualizer.getCaptureSizeRange()[1]);
            mVisualizer.setDataCaptureListener(new Visualizer.OnDataCaptureListener() {
                @Override
                public void onWaveFormDataCapture(Visualizer visualizer, byte[] waveform, int samplingRate) {
                    int sum = 0;
                    for (int i = 0; i < waveform.length; i += 4) {
                        sum += Math.abs(waveform[i]);
                    }
                    int avg = sum / (waveform.length / 4);
                    int brightness = Math.min(100, Math.max(10, avg * 2));
                    if (mBound && mService != null) {
                        mService.sendBrightness(brightness);
                    }
                }

                @Override
                public void onFftDataCapture(Visualizer visualizer, byte[] fft, int samplingRate) {}
            }, Visualizer.getMaxCaptureRate() / 2, true, false);

            mVisualizer.setEnabled(true);
            tvMusicStatus.setText("Listening (Sync Active)");
            tvMusicStatus.setTextColor(Color.parseColor("#4ade80"));
        } catch (Exception e) {
            Toast.makeText(this, "Visualizer audio session not available on this head unit", Toast.LENGTH_SHORT).show();
            isMusicSyncOn = false;
            btnMusicSync.setText("Music Beat Sync: OFF");
            tvMusicStatus.setText("Inactive");
            tvMusicStatus.setTextColor(Color.parseColor("#94a3b8"));
        }
    }

    private void stopMusicSync() {
        if (mVisualizer != null) {
            mVisualizer.setEnabled(false);
            mVisualizer.release();
            mVisualizer = null;
        }
        tvMusicStatus.setText("Inactive");
        tvMusicStatus.setTextColor(Color.parseColor("#94a3b8"));
        if (mBound && mService != null) {
            mService.sendBrightness(curBrightness);
        }
    }
}
