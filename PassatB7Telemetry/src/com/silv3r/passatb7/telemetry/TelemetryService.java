package com.silv3r.passatb7.telemetry;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;

import com.silv3r.passatb7.telemetry.can.CanManager;
import com.silv3r.passatb7.telemetry.can.model.AirData;
import com.silv3r.passatb7.telemetry.can.model.CarData;
import com.silv3r.passatb7.telemetry.can.model.DoorData;
import com.silv3r.passatb7.telemetry.db.RefuelLog;
import com.silv3r.passatb7.telemetry.engine.RefuelDetector;
import com.silv3r.passatb7.telemetry.engine.StreamerDaemonManager;
import com.silv3r.passatb7.telemetry.engine.TripTracker;
import com.silv3r.passatb7.telemetry.ui.ClimatronicOverlay;

public class TelemetryService extends Service implements CanManager.CanListener, RefuelDetector.RefuelListener {
    private static final String TAG = "TelemetryService";
    private static final String CHANNEL_ID = "passat_telemetry_channel";
    private static final int NOTIF_ID = 701;

    private CanManager mCanManager;
    private TripTracker mTripTracker;
    private RefuelDetector mRefuelDetector;
    private ClimatronicOverlay mClimatronicOverlay;
    private StreamerDaemonManager mStreamerDaemonManager;

    private final LocalBinder mBinder = new LocalBinder();

    public class LocalBinder extends Binder {
        public TelemetryService getService() {
            return TelemetryService.this;
        }
    }

    @Override
    public void onCreate() {
        super.onCreate();
        Log.i(TAG, "Starting Passat B7 Telemetry Service...");

        createNotificationChannel();
        startForeground(NOTIF_ID, buildNotification("Monitoring active", "Connecting to CANbus..."));

        mTripTracker = new TripTracker(this);
        mRefuelDetector = new RefuelDetector(this);
        mRefuelDetector.setListener(this);
        mClimatronicOverlay = new ClimatronicOverlay(this);
        mStreamerDaemonManager = new StreamerDaemonManager(this);
        mStreamerDaemonManager.startStreamer();

        mCanManager = CanManager.getInstance(this);
        mCanManager.addListener(this);
        mCanManager.connect();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (mCanManager != null && !mCanManager.isConnected()) {
            mCanManager.connect();
        }
        return START_STICKY;
    }

    @Override
    public IBinder onBind(Intent intent) {
        return mBinder;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (mCanManager != null) {
            mCanManager.removeListener(this);
        }
    }

    @Override
    public void onConnectionChanged(boolean connected) {
        updateNotification(connected ? "CAN Connected" : "CAN Disconnected",
                connected ? "Volkswagen PQ (Passat B7)" : "Reconnecting...");
    }

    @Override
    public void onCarDataUpdated(CarData carData) {
        if (mTripTracker != null) {
            mTripTracker.onCarData(carData);
        }
        if (mRefuelDetector != null) {
            mRefuelDetector.onCarData(carData);
        }

        if (carData.speedKmh > 0 || mTripTracker.isInTrip()) {
            String title = String.format("%d km/h | Trip: %.1f km", carData.speedKmh, mTripTracker.getCurrentTripDist());
            String text = String.format("Fuel: %.1fL | Avg: %.1f L/100km | Batt: %.1fV",
                    carData.fuelSurplusLiters, mTripTracker.getCurrentTripAvgL100(), carData.batteryVoltage);
            updateNotification(title, text);
        }
    }

    @Override
    public void onDoorDataUpdated(DoorData doorData) {
        // Door updates
    }

    @Override
    public void onAirDataUpdated(AirData airData) {
        if (mClimatronicOverlay != null) {
            mClimatronicOverlay.onAirData(airData);
        }
    }

    @Override
    public void onRefuelDetected(RefuelLog log) {
        updateNotification("Refueling Event Logged!",
                String.format("+%.1f Liters added at ODO %d km", log.litersAdded, log.odometerKm));
    }

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel channel = new NotificationChannel(
                    CHANNEL_ID,
                    "Passat B7 Telemetry",
                    NotificationManager.IMPORTANCE_LOW
            );
            channel.setDescription("Passat B7 CAN Telemetry & Trip Logger");
            NotificationManager nm = getSystemService(NotificationManager.class);
            if (nm != null) {
                nm.createNotificationChannel(channel);
            }
        }
    }

    private Notification buildNotification(String title, String content) {
        Intent notifyIntent = new Intent(this, MainActivity.class);
        PendingIntent pendingIntent = PendingIntent.getActivity(
                this, 0, notifyIntent,
                Build.VERSION.SDK_INT >= Build.VERSION_CODES.M ? PendingIntent.FLAG_IMMUTABLE : 0
        );

        Notification.Builder builder;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            builder = new Notification.Builder(this, CHANNEL_ID);
        } else {
            builder = new Notification.Builder(this);
        }

        return builder.setContentTitle(title)
                .setContentText(content)
                .setSmallIcon(android.R.drawable.ic_dialog_info)
                .setContentIntent(pendingIntent)
                .setOngoing(true)
                .build();
    }

    private void updateNotification(String title, String content) {
        NotificationManager nm = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        if (nm != null) {
            nm.notify(NOTIF_ID, buildNotification(title, content));
        }
    }

    public TripTracker getTripTracker() {
        return mTripTracker;
    }
}
