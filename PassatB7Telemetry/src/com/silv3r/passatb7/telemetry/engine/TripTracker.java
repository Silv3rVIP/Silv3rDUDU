package com.silv3r.passatb7.telemetry.engine;

import android.content.Context;
import android.util.Log;

import com.silv3r.passatb7.telemetry.can.model.CarData;
import com.silv3r.passatb7.telemetry.db.DatabaseHelper;
import com.silv3r.passatb7.telemetry.db.TripLog;

public class TripTracker {
    private static final String TAG = "TripTracker";
    private final Context mContext;
    private final DatabaseHelper mDb;

    private boolean mInTrip = false;
    private long mTripStartTime = 0;
    private long mLastEngineStopTime = 0;
    private int mStartOdo = 0;
    private float mStartFuel = -1f;

    private int mMaxSpeed = 0;
    private long mSpeedSum = 0;
    private long mSpeedSamples = 0;
    private int mIdleSeconds = 0;

    private float mCurrentTripDist = 0f;
    private float mCurrentFuelUsed = 0f;
    private float mCurrentTripAvgL100 = 0f;

    public TripTracker(Context context) {
        this.mContext = context.getApplicationContext();
        this.mDb = DatabaseHelper.getInstance(this.mContext);
    }

    public synchronized void onCarData(CarData car) {
        boolean engineRunning = car.isEngineRunning();

        if (engineRunning) {
            mLastEngineStopTime = 0;

            if (!mInTrip) {
                // Trip started!
                mInTrip = true;
                mTripStartTime = System.currentTimeMillis();
                mStartOdo = car.lifetimeMileageKm;
                mStartFuel = car.fuelSurplusLiters;
                mMaxSpeed = car.speedKmh;
                mSpeedSum = car.speedKmh;
                mSpeedSamples = 1;
                mIdleSeconds = 0;
                mCurrentTripDist = 0f;
                mCurrentFuelUsed = 0f;
                Log.i(TAG, "Trip started at odo: " + mStartOdo + " km, fuel: " + mStartFuel + " L");
            } else {
                // In trip update
                if (car.speedKmh > mMaxSpeed) {
                    mMaxSpeed = car.speedKmh;
                }
                mSpeedSum += car.speedKmh;
                mSpeedSamples++;

                if (car.speedKmh == 0 && car.engineRpm > 400) {
                    mIdleSeconds++;
                }

                if (car.lifetimeMileageKm >= mStartOdo) {
                    mCurrentTripDist = car.lifetimeMileageKm - mStartOdo;
                }

                if (mStartFuel > 0 && car.fuelSurplusLiters > 0 && car.fuelSurplusLiters <= mStartFuel) {
                    mCurrentFuelUsed = mStartFuel - car.fuelSurplusLiters;
                    if (mCurrentTripDist > 0.5f) {
                        mCurrentTripAvgL100 = (mCurrentFuelUsed / mCurrentTripDist) * 100.0f;
                    }
                }
            }
        } else {
            // Engine off
            if (mInTrip) {
                if (mLastEngineStopTime == 0) {
                    mLastEngineStopTime = System.currentTimeMillis();
                } else if (System.currentTimeMillis() - mLastEngineStopTime > 60000) {
                    // Engine stopped for over 60 seconds -> finalize trip
                    finalizeTrip(car);
                }
            }
        }
    }

    private void finalizeTrip(CarData car) {
        if (!mInTrip) return;

        TripLog trip = new TripLog();
        trip.startTime = mTripStartTime;
        trip.endTime = System.currentTimeMillis();
        trip.startOdo = mStartOdo;
        trip.endOdo = car.lifetimeMileageKm > 0 ? car.lifetimeMileageKm : (int) (mStartOdo + mCurrentTripDist);
        trip.distanceKm = trip.endOdo - trip.startOdo;
        trip.fuelUsedLiters = mCurrentFuelUsed;
        trip.maxSpeedKmh = mMaxSpeed;
        trip.avgSpeedKmh = mSpeedSamples > 0 ? (int) (mSpeedSum / mSpeedSamples) : 0;
        trip.idleDurationSec = mIdleSeconds;

        if (trip.distanceKm > 0.5f && mCurrentFuelUsed > 0.05f) {
            trip.avgConsumptionL100 = (trip.fuelUsedLiters / trip.distanceKm) * 100.0f;
        } else if (car.avgOilL100 > 0) {
            trip.avgConsumptionL100 = car.avgOilL100;
        }

        // Only save trips with meaningful distance
        if (trip.distanceKm >= 0.2f || (trip.endTime - trip.startTime) > 120000) {
            mDb.insertTrip(trip);
            Log.i(TAG, "Trip saved: " + trip.distanceKm + " km, used " + trip.fuelUsedLiters + " L, avg " + trip.avgConsumptionL100 + " L/100km");
        }

        mInTrip = false;
        mLastEngineStopTime = 0;
    }

    public boolean isInTrip() {
        return mInTrip;
    }

    public float getCurrentTripDist() {
        return mCurrentTripDist;
    }

    public float getCurrentFuelUsed() {
        return mCurrentFuelUsed;
    }

    public float getCurrentTripAvgL100() {
        return mCurrentTripAvgL100;
    }

    public void resetTrip(CarData car) {
        if (car != null && car.lifetimeMileageKm > 0) {
            mStartOdo = car.lifetimeMileageKm;
            mStartFuel = car.fuelSurplusLiters;
            mCurrentTripDist = 0f;
            mCurrentFuelUsed = 0f;
            mCurrentTripAvgL100 = 0f;
        }
    }
}
