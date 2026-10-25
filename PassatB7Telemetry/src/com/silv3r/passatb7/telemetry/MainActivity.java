package com.silv3r.passatb7.telemetry;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.silv3r.passatb7.telemetry.can.CanManager;
import com.silv3r.passatb7.telemetry.can.model.AirData;
import com.silv3r.passatb7.telemetry.can.model.CarData;
import com.silv3r.passatb7.telemetry.can.model.DoorData;
import com.silv3r.passatb7.telemetry.engine.TripTracker;
import com.silv3r.passatb7.telemetry.ui.PassatCarView;

import java.util.Locale;

public class MainActivity extends Activity implements CanManager.CanListener {
    private CanManager mCanManager;
    private TelemetryService mService;
    private boolean mServiceBound = false;

    private TextView mTvSpeed;
    private TextView mTvRpm;
    private ProgressBar mPbRpm;
    private TextView mTvCoolant;
    private TextView mTvOutsideTemp;
    private TextView mTvCanStatus;
    private TextView mTvEpb;
    private TextView mTvSeatbelt;
    private PassatCarView mPassatCarView;
    private TextView mTvInstantFuel;
    private ProgressBar mPbInstantFuel;
    private TextView mTvFuelLiters;
    private ProgressBar mPbFuel;
    private TextView mTvBatteryVoltage;
    private TextView mTvBatteryState;
    private TextView mTvTripSummary;
    private TextView mTvLifetimeOdo;

    private final ServiceConnection mServiceConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            TelemetryService.LocalBinder binder = (TelemetryService.LocalBinder) service;
            mService = binder.getService();
            mServiceBound = true;
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            mService = null;
            mServiceBound = false;
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Bind Views
        mTvSpeed = findViewById(R.id.tv_speed);
        mTvRpm = findViewById(R.id.tv_rpm);
        mPbRpm = findViewById(R.id.pb_rpm);
        mTvCoolant = findViewById(R.id.tv_coolant);
        mTvOutsideTemp = findViewById(R.id.tv_outside_temp);
        mTvCanStatus = findViewById(R.id.tv_can_status);
        mTvEpb = findViewById(R.id.tv_epb_status);
        mTvSeatbelt = findViewById(R.id.tv_seatbelt_status);
        mPassatCarView = findViewById(R.id.view_passat_car);
        mTvInstantFuel = findViewById(R.id.tv_instant_fuel);
        mPbInstantFuel = findViewById(R.id.pb_instant_fuel);
        mTvFuelLiters = findViewById(R.id.tv_fuel_liters);
        mPbFuel = findViewById(R.id.pb_fuel);
        mTvBatteryVoltage = findViewById(R.id.tv_battery_voltage);
        mTvBatteryState = findViewById(R.id.tv_battery_state);
        mTvTripSummary = findViewById(R.id.tv_trip_summary);
        mTvLifetimeOdo = findViewById(R.id.tv_lifetime_odo);

        Button btnHistory = findViewById(R.id.btn_open_history);
        if (btnHistory != null) {
            btnHistory.setOnClickListener(v -> startActivity(new Intent(MainActivity.this, TripHistoryActivity.class)));
        }

        Button btnResetTrip = findViewById(R.id.btn_reset_trip);
        if (btnResetTrip != null) {
            btnResetTrip.setOnClickListener(v -> {
                if (mService != null && mService.getTripTracker() != null) {
                    mService.getTripTracker().resetTrip(mCanManager.getCurrentCarData());
                    updateTripDisplay();
                }
            });
        }

        // Start Telemetry Foreground Service
        Intent sIntent = new Intent(this, TelemetryService.class);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            startForegroundService(sIntent);
        } else {
            startService(sIntent);
        }
        bindService(sIntent, mServiceConnection, Context.BIND_AUTO_CREATE);

        mCanManager = CanManager.getInstance(this);
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (mCanManager != null) {
            mCanManager.addListener(this);
            mCanManager.connect();
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        if (mCanManager != null) {
            mCanManager.removeListener(this);
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (mServiceBound) {
            unbindService(mServiceConnection);
            mServiceBound = false;
        }
    }

    @Override
    public void onConnectionChanged(boolean connected) {
        if (mTvCanStatus != null) {
            mTvCanStatus.setText(connected ? getString(R.string.status_connected) : getString(R.string.status_disconnected));
            mTvCanStatus.setTextColor(connected ? Color.parseColor("#12B76A") : Color.parseColor("#FFB020"));
        }
    }

    @Override
    public void onCarDataUpdated(CarData car) {
        if (mTvSpeed != null) mTvSpeed.setText(String.valueOf(car.speedKmh));
        if (mTvRpm != null) mTvRpm.setText(String.valueOf(car.engineRpm));
        if (mPbRpm != null) mPbRpm.setProgress(car.engineRpm);

        if (mTvCoolant != null) {
            mTvCoolant.setText(String.format(Locale.US, "%.0f °C", car.coolantTempC));
        }

        if (mTvOutsideTemp != null && car.outsideTempStr != null && !car.outsideTempStr.equals("--")) {
            mTvOutsideTemp.setText(car.outsideTempStr + " °C");
        }

        if (mTvEpb != null) {
            mTvEpb.setText(car.handbrake ? "PARKING BRAKE: ENGAGED" : "PARKING BRAKE: OFF");
            mTvEpb.setTextColor(car.handbrake ? Color.parseColor("#E61E28") : Color.parseColor("#D0D5DD"));
        }

        if (mTvSeatbelt != null) {
            boolean unbuckled = !car.driverSeatbelt || !car.passengerSeatbelt;
            mTvSeatbelt.setText(unbuckled ? "SEATBELT: UNBUCKLED" : "SEATBELT: OK");
            mTvSeatbelt.setTextColor(unbuckled ? Color.parseColor("#E61E28") : Color.parseColor("#12B76A"));
        }

        if (mTvInstantFuel != null) {
            mTvInstantFuel.setText(String.format(Locale.US, "%.1f L/100km", car.instantOilL100));
        }
        if (mPbInstantFuel != null) {
            mPbInstantFuel.setProgress((int) Math.min(25, car.instantOilL100));
        }

        if (mTvFuelLiters != null) {
            if (car.fuelSurplusLiters >= 0) {
                mTvFuelLiters.setText(String.format(Locale.US, "%.1f L", car.fuelSurplusLiters));
                if (mPbFuel != null) mPbFuel.setProgress((int) car.fuelSurplusLiters);
            } else {
                mTvFuelLiters.setText("-- L");
            }
        }

        if (mTvBatteryVoltage != null) {
            mTvBatteryVoltage.setText(String.format(Locale.US, "%.1f V", car.batteryVoltage));
            if (mTvBatteryState != null) {
                if (car.isAlternatorCharging()) {
                    mTvBatteryState.setText("CHARGING (14.2V ALTERNATOR)");
                    mTvBatteryState.setTextColor(Color.parseColor("#12B76A"));
                } else if (car.batteryVoltage > 12.2f) {
                    mTvBatteryState.setText("HEALTHY (PARKED)");
                    mTvBatteryState.setTextColor(Color.parseColor("#40A8FF"));
                } else {
                    mTvBatteryState.setText("LOW VOLTAGE WARNING");
                    mTvBatteryState.setTextColor(Color.parseColor("#E61E28"));
                }
            }
        }

        if (mTvLifetimeOdo != null) {
            mTvLifetimeOdo.setText(String.format(Locale.US, "ODO: %,d km", car.lifetimeMileageKm));
        }

        updateTripDisplay();
    }

    @Override
    public void onDoorDataUpdated(DoorData doorData) {
        if (mPassatCarView != null) {
            mPassatCarView.updateDoors(doorData);
        }
    }

    @Override
    public void onAirDataUpdated(AirData airData) {
        // Handled by ClimatronicOverlay
    }

    private void updateTripDisplay() {
        if (mService != null && mTvTripSummary != null) {
            TripTracker tt = mService.getTripTracker();
            if (tt != null) {
                mTvTripSummary.setText(String.format(Locale.US, "TRIP: %.1f km | %.1f L/100",
                        tt.getCurrentTripDist(), tt.getCurrentTripAvgL100()));
            }
        }
    }
}
