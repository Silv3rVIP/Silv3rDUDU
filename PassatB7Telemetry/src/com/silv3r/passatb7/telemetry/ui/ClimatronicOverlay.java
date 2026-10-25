package com.silv3r.passatb7.telemetry.ui;

import android.content.Context;
import android.graphics.PixelFormat;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.silv3r.passatb7.telemetry.R;
import com.silv3r.passatb7.telemetry.can.model.AirData;

public class ClimatronicOverlay {
    private final Context mContext;
    private final WindowManager mWindowManager;
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    private View mOverlayView;
    private boolean mIsShowing = false;

    private float mLastDriverTemp = -1f;
    private float mLastPassengerTemp = -1f;
    private int mLastFanSpeed = -1;

    private TextView mTvDriver;
    private TextView mTvPassenger;
    private TextView mTvDriverSeat;
    private TextView mTvPassengerSeat;
    private TextView mTvAcMode;
    private ProgressBar mPbFan;

    public ClimatronicOverlay(Context context) {
        this.mContext = context.getApplicationContext();
        this.mWindowManager = (WindowManager) mContext.getSystemService(Context.WINDOW_SERVICE);
    }

    public synchronized void onAirData(AirData air) {
        // Detect if AC settings changed
        boolean changed = (mLastDriverTemp >= 0) &&
                (air.driverTemp != mLastDriverTemp ||
                        air.passengerTemp != mLastPassengerTemp ||
                        air.fanSpeed != mLastFanSpeed);

        mLastDriverTemp = air.driverTemp;
        mLastPassengerTemp = air.passengerTemp;
        mLastFanSpeed = air.fanSpeed;

        if (changed) {
            show(air);
        }
    }

    public synchronized void show(AirData air) {
        mHandler.post(() -> {
            if (mOverlayView == null) {
                mOverlayView = LayoutInflater.from(mContext).inflate(R.layout.view_climatronic_hud, null);
                mTvDriver = mOverlayView.findViewById(R.id.hud_temp_driver);
                mTvPassenger = mOverlayView.findViewById(R.id.hud_temp_passenger);
                mTvDriverSeat = mOverlayView.findViewById(R.id.hud_seat_driver);
                mTvPassengerSeat = mOverlayView.findViewById(R.id.hud_seat_passenger);
                mTvAcMode = mOverlayView.findViewById(R.id.hud_ac_mode);
                mPbFan = mOverlayView.findViewById(R.id.hud_fan_speed);
            }

            if (mTvDriver != null) mTvDriver.setText(String.format("%.1f°", air.driverTemp));
            if (mTvPassenger != null) mTvPassenger.setText(String.format("%.1f°", air.passengerTemp));
            if (mPbFan != null) mPbFan.setProgress(air.fanSpeed);
            if (mTvDriverSeat != null) mTvDriverSeat.setText("♨ " + air.driverSeatHeat);
            if (mTvPassengerSeat != null) mTvPassengerSeat.setText("♨ " + air.passengerSeatHeat);
            if (mTvAcMode != null) {
                mTvAcMode.setText((air.autoMode ? "AUTO | " : "MANUAL | ") + (air.acPower ? "A/C ON" : "A/C OFF"));
            }

            if (!mIsShowing) {
                int layoutType = Build.VERSION.SDK_INT >= Build.VERSION_CODES.O
                        ? WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
                        : WindowManager.LayoutParams.TYPE_PHONE;

                WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                        WindowManager.LayoutParams.WRAP_CONTENT,
                        WindowManager.LayoutParams.WRAP_CONTENT,
                        layoutType,
                        WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
                        PixelFormat.TRANSLUCENT
                );
                params.gravity = Gravity.TOP | Gravity.CENTER_HORIZONTAL;
                params.y = 30;

                try {
                    mWindowManager.addView(mOverlayView, params);
                    mIsShowing = true;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            // Auto-dismiss after 3.5 seconds
            mHandler.removeCallbacks(mDismissRunnable);
            mHandler.postDelayed(mDismissRunnable, 3500);
        });
    }

    private final Runnable mDismissRunnable = this::hide;

    public synchronized void hide() {
        mHandler.post(() -> {
            if (mIsShowing && mOverlayView != null) {
                try {
                    mWindowManager.removeView(mOverlayView);
                } catch (Exception ignored) {
                }
                mIsShowing = false;
            }
        });
    }
}
