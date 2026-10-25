package com.silv3r.passatb7.telemetry.engine;

import android.content.Context;
import android.util.Log;

import com.silv3r.passatb7.telemetry.can.model.CarData;
import com.silv3r.passatb7.telemetry.db.DatabaseHelper;
import com.silv3r.passatb7.telemetry.db.RefuelLog;

public class RefuelDetector {
    private static final String TAG = "RefuelDetector";
    private static final float REFUEL_THRESHOLD_LITERS = 4.5f;

    private final Context mContext;
    private final DatabaseHelper mDb;

    private float mBaselineFuel = -1f;
    private long mLastStableTime = 0;
    private float mLastSampleFuel = -1f;

    public interface RefuelListener {
        void onRefuelDetected(RefuelLog log);
    }

    private RefuelListener mListener;

    public RefuelDetector(Context context) {
        this.mContext = context.getApplicationContext();
        this.mDb = DatabaseHelper.getInstance(this.mContext);
    }

    public void setListener(RefuelListener listener) {
        this.mListener = listener;
    }

    public synchronized void onCarData(CarData car) {
        if (car.fuelSurplusLiters <= 0 || car.fuelSurplusLiters > 75) return;

        // Only detect refueling when stationary
        if (car.speedKmh > 0) {
            mBaselineFuel = car.fuelSurplusLiters;
            mLastStableTime = 0;
            return;
        }

        if (mBaselineFuel < 0) {
            mBaselineFuel = car.fuelSurplusLiters;
            mLastSampleFuel = car.fuelSurplusLiters;
            mLastStableTime = System.currentTimeMillis();
            return;
        }

        // Check if fuel reading is stable (slosh filtering)
        if (Math.abs(car.fuelSurplusLiters - mLastSampleFuel) < 0.5f) {
            if (mLastStableTime == 0) {
                mLastStableTime = System.currentTimeMillis();
            } else if (System.currentTimeMillis() - mLastStableTime > 5000) {
                // Stable for 5 seconds
                float delta = car.fuelSurplusLiters - mBaselineFuel;
                if (delta >= REFUEL_THRESHOLD_LITERS) {
                    // Refueling event detected!
                    Log.i(TAG, "Refueling detected: +" + delta + " Liters added!");

                    RefuelLog log = new RefuelLog();
                    log.timestamp = System.currentTimeMillis();
                    log.litersAdded = delta;
                    log.odometerKm = car.lifetimeMileageKm;
                    log.locationStr = "Stationary";
                    mDb.insertRefuel(log);

                    if (mListener != null) {
                        mListener.onRefuelDetected(log);
                    }

                    mBaselineFuel = car.fuelSurplusLiters;
                } else if (delta < -1.0f) {
                    // Normal consumption while idling
                    mBaselineFuel = car.fuelSurplusLiters;
                }
            }
        } else {
            // Fuel still moving
            mLastSampleFuel = car.fuelSurplusLiters;
            mLastStableTime = System.currentTimeMillis();
        }
    }
}
