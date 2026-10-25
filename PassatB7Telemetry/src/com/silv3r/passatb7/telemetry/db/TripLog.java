package com.silv3r.passatb7.telemetry.db;

public class TripLog {
    public long id = -1;
    public long startTime = 0;
    public long endTime = 0;
    public int startOdo = 0;
    public int endOdo = 0;
    public float distanceKm = 0f;
    public float fuelUsedLiters = 0f;
    public float avgConsumptionL100 = 0f;
    public int maxSpeedKmh = 0;
    public int avgSpeedKmh = 0;
    public int idleDurationSec = 0;

    public long getDurationMinutes() {
        if (endTime <= startTime) return 0;
        return (endTime - startTime) / 60000;
    }
}
