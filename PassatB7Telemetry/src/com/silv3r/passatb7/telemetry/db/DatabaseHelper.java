package com.silv3r.passatb7.telemetry.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.util.ArrayList;
import java.util.List;

public class DatabaseHelper extends SQLiteOpenHelper {
    private static final String DATABASE_NAME = "passat_b7_telemetry.db";
    private static final int DATABASE_VERSION = 1;

    public static final String TABLE_TRIPS = "trips";
    public static final String COL_TRIP_ID = "_id";
    public static final String COL_START_TIME = "start_time";
    public static final String COL_END_TIME = "end_time";
    public static final String COL_START_ODO = "start_odo";
    public static final String COL_END_ODO = "end_odo";
    public static final String COL_DISTANCE = "distance_km";
    public static final String COL_FUEL_USED = "fuel_used";
    public static final String COL_AVG_CONSUMPTION = "avg_consumption";
    public static final String COL_MAX_SPEED = "max_speed";
    public static final String COL_AVG_SPEED = "avg_speed";
    public static final String COL_IDLE_SEC = "idle_sec";

    public static final String TABLE_REFUELS = "refuels";
    public static final String COL_REFUEL_ID = "_id";
    public static final String COL_REFUEL_TIME = "timestamp";
    public static final String COL_LITERS_ADDED = "liters_added";
    public static final String COL_REFUEL_ODO = "odometer";
    public static final String COL_LOCATION = "location";
    public static final String COL_PRICE_LITER = "price_per_liter";
    public static final String COL_TOTAL_COST = "total_cost";

    private static DatabaseHelper sInstance;

    public static synchronized DatabaseHelper getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new DatabaseHelper(context.getApplicationContext());
        }
        return sInstance;
    }

    private DatabaseHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        String createTrips = "CREATE TABLE " + TABLE_TRIPS + " (" +
                COL_TRIP_ID + " INTEGER PRIMARY KEY AUTOINCREMENT, " +
                COL_START_TIME + " INTEGER, " +
                COL_END_TIME + " INTEGER, " +
                COL_START_ODO + " INTEGER, " +
                COL_END_ODO + " INTEGER, " +
                COL_DISTANCE + " REAL, " +
                COL_FUEL_USED + " REAL, " +
                COL_AVG_CONSUMPTION + " REAL, " +
                COL_MAX_SPEED + " INTEGER, " +
                COL_AVG_SPEED + " INTEGER, " +
                COL_IDLE_SEC + " INTEGER);";

        String createRefuels = "CREATE TABLE " + TABLE_REFUELS + " (" +
                COL_REFUEL_ID + " INTEGER PRIMARY KEY AUTOINCREMENT, " +
                COL_REFUEL_TIME + " INTEGER, " +
                COL_LITERS_ADDED + " REAL, " +
                COL_REFUEL_ODO + " INTEGER, " +
                COL_LOCATION + " TEXT, " +
                COL_PRICE_LITER + " REAL, " +
                COL_TOTAL_COST + " REAL);";

        db.execSQL(createTrips);
        db.execSQL(createRefuels);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_TRIPS);
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_REFUELS);
        onCreate(db);
    }

    public long insertTrip(TripLog trip) {
        SQLiteDatabase db = getWritableDatabase();
        ContentValues cv = new ContentValues();
        cv.put(COL_START_TIME, trip.startTime);
        cv.put(COL_END_TIME, trip.endTime);
        cv.put(COL_START_ODO, trip.startOdo);
        cv.put(COL_END_ODO, trip.endOdo);
        cv.put(COL_DISTANCE, trip.distanceKm);
        cv.put(COL_FUEL_USED, trip.fuelUsedLiters);
        cv.put(COL_AVG_CONSUMPTION, trip.avgConsumptionL100);
        cv.put(COL_MAX_SPEED, trip.maxSpeedKmh);
        cv.put(COL_AVG_SPEED, trip.avgSpeedKmh);
        cv.put(COL_IDLE_SEC, trip.idleDurationSec);
        return db.insert(TABLE_TRIPS, null, cv);
    }

    public long insertRefuel(RefuelLog refuel) {
        SQLiteDatabase db = getWritableDatabase();
        ContentValues cv = new ContentValues();
        cv.put(COL_REFUEL_TIME, refuel.timestamp);
        cv.put(COL_LITERS_ADDED, refuel.litersAdded);
        cv.put(COL_REFUEL_ODO, refuel.odometerKm);
        cv.put(COL_LOCATION, refuel.locationStr);
        cv.put(COL_PRICE_LITER, refuel.pricePerLiter);
        cv.put(COL_TOTAL_COST, refuel.totalCost);
        return db.insert(TABLE_REFUELS, null, cv);
    }

    public List<TripLog> getAllTrips() {
        List<TripLog> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor c = db.query(TABLE_TRIPS, null, null, null, null, null, COL_START_TIME + " DESC");
        if (c != null) {
            while (c.moveToNext()) {
                TripLog t = new TripLog();
                t.id = c.getLong(c.getColumnIndexOrThrow(COL_TRIP_ID));
                t.startTime = c.getLong(c.getColumnIndexOrThrow(COL_START_TIME));
                t.endTime = c.getLong(c.getColumnIndexOrThrow(COL_END_TIME));
                t.startOdo = c.getInt(c.getColumnIndexOrThrow(COL_START_ODO));
                t.endOdo = c.getInt(c.getColumnIndexOrThrow(COL_END_ODO));
                t.distanceKm = c.getFloat(c.getColumnIndexOrThrow(COL_DISTANCE));
                t.fuelUsedLiters = c.getFloat(c.getColumnIndexOrThrow(COL_FUEL_USED));
                t.avgConsumptionL100 = c.getFloat(c.getColumnIndexOrThrow(COL_AVG_CONSUMPTION));
                t.maxSpeedKmh = c.getInt(c.getColumnIndexOrThrow(COL_MAX_SPEED));
                t.avgSpeedKmh = c.getInt(c.getColumnIndexOrThrow(COL_AVG_SPEED));
                t.idleDurationSec = c.getInt(c.getColumnIndexOrThrow(COL_IDLE_SEC));
                list.add(t);
            }
            c.close();
        }
        return list;
    }

    public void clearAllTrips() {
        SQLiteDatabase db = getWritableDatabase();
        db.delete(TABLE_TRIPS, null, null);
    }
}
