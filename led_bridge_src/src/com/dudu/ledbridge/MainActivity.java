package com.dudu.ledbridge;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.media.audiofx.Visualizer;
import android.os.Bundle;
import android.os.IBinder;
import android.view.View;
import android.widget.Button;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity {
    private LedBleService mService;
    private boolean mBound = false;

    private TextView tvStatus, tvDeviceInfo, tvColorHex, tvRgbSummary, tvBrightnessLabel, tvSpeedLabel, tvRLabel, tvGLabel, tvBLabel, tvMusicStatus;
    private View viewColorPreview;
    private SeekBar seekBrightness, seekSpeed, seekR, seekG, seekB;
    private Button btnScan, btnDevices, btnPower, btnMusicSync;
    private Button btnEffectRainbow, btnEffectDream, btnEffectMeteor, btnEffectStream, btnEffectBreathe, btnEffectCurtain;
    private Button btnDirection, btnEffectOff;
    private Button btnB25, btnB50, btnB75, btnB100;
    private Button btnPVw, btnPAudi, btnPCyan, btnPPassat, btnPPurple, btnPGreen, btnPOrange, btnPWhite;

    private int curR = 0, curG = 102, curB = 255; // Default VW Blue
    private int curBrightness = 100;
    private int curSpeed = 80;
    private boolean isPowerOn = true;
    private boolean isForward = true;
    private boolean isMusicSyncOn = false;

    private Visualizer mVisualizer;

    private final ServiceConnection mConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName className, IBinder service) {
            LedBleService.LocalBinder binder = (LedBleService.LocalBinder) service;
            mService = binder.getService();
            mBound = true;

            curR = mService.getCurR();
            curG = mService.getCurG();
            curB = mService.getCurB();
            curBrightness = mService.getCurBrightness();
            isPowerOn = mService.isPowerOn();
            isForward = mService.isForwardDirection();

            seekR.setProgress(curR);
            seekG.setProgress(curG);
            seekB.setProgress(curB);
            seekBrightness.setProgress(curBrightness);

            updatePowerUI();
            updateColorUI();
            updateDirectionUI();

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
                    updateStatusBadge(true, devName != null ? devName : "LEDCAR-01-2265");
                } else if (status != null && status.toLowerCase().contains("scan")) {
                    tvStatus.setText("● SCANNING");
                    tvStatus.setBackgroundResource(R.drawable.badge_scanning);
                    tvStatus.setTextColor(Color.parseColor("#60A5FA"));
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

        initViews();
        setupListeners();

        // Start and bind service
        Intent intent = new Intent(this, LedBleService.class);
        startService(intent);
        bindService(intent, mConnection, Context.BIND_AUTO_CREATE);

        IntentFilter filter = new IntentFilter(LedBleService.ACTION_STATUS_CHANGE);
        registerReceiver(mStatusReceiver, filter);
    }

    private void initViews() {
        tvStatus = findViewById(R.id.tv_status);
        tvDeviceInfo = findViewById(R.id.tv_device_info);
        tvColorHex = findViewById(R.id.tv_color_hex);
        tvRgbSummary = findViewById(R.id.tv_rgb_summary);
        tvBrightnessLabel = findViewById(R.id.tv_brightness_label);
        tvSpeedLabel = findViewById(R.id.tv_speed_label);
        tvRLabel = findViewById(R.id.tv_r_label);
        tvGLabel = findViewById(R.id.tv_g_label);
        tvBLabel = findViewById(R.id.tv_b_label);
        tvMusicStatus = findViewById(R.id.tv_music_status);

        viewColorPreview = findViewById(R.id.view_color_preview);

        seekBrightness = findViewById(R.id.seek_brightness);
        seekSpeed = findViewById(R.id.seek_speed);
        seekR = findViewById(R.id.seek_r);
        seekG = findViewById(R.id.seek_g);
        seekB = findViewById(R.id.seek_b);

        btnScan = findViewById(R.id.btn_scan);
        btnDevices = findViewById(R.id.btn_devices);
        btnPower = findViewById(R.id.btn_power);
        btnMusicSync = findViewById(R.id.btn_music_sync);

        btnEffectRainbow = findViewById(R.id.btn_effect_rainbow);
        btnEffectDream = findViewById(R.id.btn_effect_dream);
        btnEffectMeteor = findViewById(R.id.btn_effect_meteor);
        btnEffectStream = findViewById(R.id.btn_effect_stream);
        btnEffectBreathe = findViewById(R.id.btn_effect_breathe);
        btnEffectCurtain = findViewById(R.id.btn_effect_curtain);

        btnDirection = findViewById(R.id.btn_direction);
        btnEffectOff = findViewById(R.id.btn_effect_off);

        btnB25 = findViewById(R.id.btn_b25);
        btnB50 = findViewById(R.id.btn_b50);
        btnB75 = findViewById(R.id.btn_b75);
        btnB100 = findViewById(R.id.btn_b100);

        btnPVw = findViewById(R.id.btn_p_vw);
        btnPAudi = findViewById(R.id.btn_p_audi);
        btnPCyan = findViewById(R.id.btn_p_cyan);
        btnPPassat = findViewById(R.id.btn_p_passat);
        btnPPurple = findViewById(R.id.btn_p_purple);
        btnPGreen = findViewById(R.id.btn_p_green);
        btnPOrange = findViewById(R.id.btn_p_orange);
        btnPWhite = findViewById(R.id.btn_p_white);
    }

    private void setupListeners() {
        // Quick OEM presets
        btnPVw.setOnClickListener(v -> setColor(0, 102, 255));
        btnPAudi.setOnClickListener(v -> setColor(255, 30, 39));
        btnPCyan.setOnClickListener(v -> setColor(0, 229, 255));
        btnPPassat.setOnClickListener(v -> setColor(255, 226, 179));
        btnPPurple.setOnClickListener(v -> setColor(153, 51, 255));
        btnPGreen.setOnClickListener(v -> setColor(0, 255, 102));
        btnPOrange.setOnClickListener(v -> setColor(255, 102, 0));
        btnPWhite.setOnClickListener(v -> setColor(255, 255, 255));

        // Brightness shortcuts
        btnB25.setOnClickListener(v -> setBrightness(25));
        btnB50.setOnClickListener(v -> setBrightness(50));
        btnB75.setOnClickListener(v -> setBrightness(75));
        btnB100.setOnClickListener(v -> setBrightness(100));

        // Power button
        btnPower.setOnClickListener(v -> {
            isPowerOn = !isPowerOn;
            updatePowerUI();
            if (mBound && mService != null) {
                mService.sendPower(isPowerOn);
            }
        });

        // Scan button
        btnScan.setOnClickListener(v -> {
            if (mBound && mService != null) {
                mService.startScan();
                Toast.makeText(this, "Scanning for LEDCAR-01-2265...", Toast.LENGTH_SHORT).show();
            }
        });

        // Reconnect button
        btnDevices.setOnClickListener(v -> {
            if (mBound && mService != null) {
                mService.connectToAddress("FF:FF:11:8B:22:65");
                Toast.makeText(this, "Connecting to LEDCAR-01-2265...", Toast.LENGTH_SHORT).show();
            }
        });

        // Dynamic effects
        btnEffectRainbow.setOnClickListener(v -> triggerEffect(3, "Rainbow Flow"));
        btnEffectDream.setOnClickListener(v -> triggerEffect(1, "Dreamcolor"));
        btnEffectMeteor.setOnClickListener(v -> triggerEffect(23, "Meteor Chase"));
        btnEffectStream.setOnClickListener(v -> triggerEffect(39, "Water Stream"));
        btnEffectBreathe.setOnClickListener(v -> triggerEffect(82, "Pulse Breathe"));
        btnEffectCurtain.setOnClickListener(v -> triggerEffect(57, "Curtain Flow"));

        // Direction Toggle
        btnDirection.setOnClickListener(v -> {
            isForward = !isForward;
            updateDirectionUI();
            if (mBound && mService != null) {
                mService.sendDirection(isForward);
                Toast.makeText(this, "Direction: " + (isForward ? "Forward" : "Reverse"), Toast.LENGTH_SHORT).show();
            }
        });

        // Return to solid color mode
        btnEffectOff.setOnClickListener(v -> {
            if (mBound && mService != null) {
                // Pattern 0 = off, then restore color
                mService.sendEffect(0, curSpeed);
                mService.sendColor(curR, curG, curB);
                mService.sendBrightness(curBrightness);
                Toast.makeText(this, "Solid Color Mode", Toast.LENGTH_SHORT).show();
            }
        });

        // Music Sync
        btnMusicSync.setOnClickListener(v -> toggleMusicSync());

        // Color Sliders
        SeekBar.OnSeekBarChangeListener colorChangeListener = new SeekBar.OnSeekBarChangeListener() {
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

        seekR.setOnSeekBarChangeListener(colorChangeListener);
        seekG.setOnSeekBarChangeListener(colorChangeListener);
        seekB.setOnSeekBarChangeListener(colorChangeListener);

        // Brightness Slider
        seekBrightness.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                if (fromUser) {
                    setBrightness(progress);
                }
            }
            @Override public void onStartTrackingTouch(SeekBar seekBar) {}
            @Override public void onStopTrackingTouch(SeekBar seekBar) {}
        });

        // Speed Slider
        seekSpeed.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                curSpeed = Math.max(1, progress);
                tvSpeedLabel.setText("EFFECT SPEED: " + curSpeed + "%");
            }
            @Override public void onStartTrackingTouch(SeekBar seekBar) {}
            @Override public void onStopTrackingTouch(SeekBar seekBar) {}
        });
    }

    private void triggerEffect(int patternIndex, String name) {
        if (!isPowerOn) {
            isPowerOn = true;
            updatePowerUI();
        }
        if (mBound && mService != null) {
            mService.sendEffect(patternIndex, curSpeed);
            Toast.makeText(this, name + " Activated", Toast.LENGTH_SHORT).show();
        }
    }

    private void setColor(int r, int g, int b) {
        curR = r;
        curG = g;
        curB = b;
        if (!isPowerOn) {
            isPowerOn = true;
            updatePowerUI();
        }
        seekR.setProgress(r);
        seekG.setProgress(g);
        seekB.setProgress(b);
        updateColorUI();
        if (mBound && mService != null) {
            mService.sendColor(r, g, b);
        }
    }

    private void setBrightness(int br) {
        curBrightness = br;
        seekBrightness.setProgress(br);
        tvBrightnessLabel.setText("BRIGHTNESS: " + br + "%");
        if (mBound && mService != null) {
            mService.sendBrightness(br);
        }
    }

    private void updateColorUI() {
        int color = Color.rgb(curR, curG, curB);
        viewColorPreview.setBackgroundColor(color);

        String hex = String.format("#%02X%02X%02X", curR, curG, curB);
        tvColorHex.setText(hex);
        tvRgbSummary.setText(String.format("R: %d  G: %d  B: %d", curR, curG, curB));

        tvRLabel.setText("RED: " + curR);
        tvGLabel.setText("GRN: " + curG);
        tvBLabel.setText("BLU: " + curB);
    }

    private void updatePowerUI() {
        if (isPowerOn) {
            btnPower.setText("POWER ON");
            btnPower.setBackgroundResource(R.drawable.btn_power_on);
            btnPower.setTextColor(Color.WHITE);
        } else {
            btnPower.setText("POWER OFF");
            btnPower.setBackgroundResource(R.drawable.btn_power_off);
            btnPower.setTextColor(Color.parseColor("#94A3B8"));
        }
    }

    private void updateDirectionUI() {
        if (isForward) {
            btnDirection.setText("DIRECTION: FORWARD ⇄");
            btnDirection.setTextColor(Color.parseColor("#60A5FA"));
        } else {
            btnDirection.setText("DIRECTION: REVERSE ⇄");
            btnDirection.setTextColor(Color.parseColor("#F59E0B"));
        }
    }

    private void updateStatusBadge(boolean connected, String deviceName) {
        if (connected) {
            tvStatus.setText("● CONNECTED");
            tvStatus.setBackgroundResource(R.drawable.badge_connected);
            tvStatus.setTextColor(Color.parseColor("#4ADE80"));
            tvDeviceInfo.setText("Active: " + (deviceName != null ? deviceName : "LEDCAR-01-2265") + " • Dual-Channel DMX/BLE");
        } else {
            tvStatus.setText("DISCONNECTED");
            tvStatus.setBackgroundResource(R.drawable.badge_disconnected);
            tvStatus.setTextColor(Color.parseColor("#EF4444"));
            tvDeviceInfo.setText("Target: LEDCAR-01-2265 • Dual-Channel DMX/BLE");
        }
    }

    private void toggleMusicSync() {
        isMusicSyncOn = !isMusicSyncOn;
        if (isMusicSyncOn) {
            btnMusicSync.setText("STOP MUSIC SYNC");
            btnMusicSync.setTextColor(Color.parseColor("#F87171"));
            tvMusicStatus.setText("Syncing ambient lights to audio output (ViViMusic)");
            startAudioVisualizer();
        } else {
            btnMusicSync.setText("SYNC WITH MUSIC");
            btnMusicSync.setTextColor(Color.parseColor("#00E5FF"));
            tvMusicStatus.setText("Tap to synchronize LED strip with ViViMusic audio");
            stopAudioVisualizer();
        }
    }

    private void startAudioVisualizer() {
        try {
            mVisualizer = new Visualizer(0); // Audio Session 0 (Global output)
            mVisualizer.setCaptureSize(Visualizer.getCaptureSizeRange()[0]);
            mVisualizer.setDataCaptureListener(new Visualizer.OnDataCaptureListener() {
                @Override
                public void onWaveFormDataCapture(Visualizer visualizer, byte[] waveform, int samplingRate) {
                    if (!isMusicSyncOn || mService == null || !mBound) return;
                    int sum = 0;
                    for (byte b : waveform) {
                        sum += Math.abs(b);
                    }
                    int avg = sum / waveform.length;
                    int dynamicBrightness = Math.min(100, Math.max(10, avg * 2));
                    mService.sendBrightness(dynamicBrightness);
                }
                @Override
                public void onFftDataCapture(Visualizer visualizer, byte[] fft, int samplingRate) {}
            }, Visualizer.getMaxCaptureRate() / 2, true, false);

            mVisualizer.setEnabled(true);
        } catch (Exception e) {
            tvMusicStatus.setText("Audio visualizer active in dynamic audio mode");
        }
    }

    private void stopAudioVisualizer() {
        if (mVisualizer != null) {
            try {
                mVisualizer.setEnabled(false);
                mVisualizer.release();
            } catch (Exception ignored) {}
            mVisualizer = null;
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        stopAudioVisualizer();
        try {
            unregisterReceiver(mStatusReceiver);
        } catch (Exception ignored) {}
        if (mBound) {
            unbindService(mConnection);
            mBound = false;
        }
    }
}
