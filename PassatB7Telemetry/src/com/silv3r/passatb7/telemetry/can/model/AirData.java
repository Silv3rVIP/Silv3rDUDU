package com.silv3r.passatb7.telemetry.can.model;

public class AirData {
    public float driverTemp = 21.5f;
    public float passengerTemp = 21.5f;
    public int fanSpeed = 0; // 0 - 7
    public boolean acPower = true;
    public boolean autoMode = true;
    public boolean dualSync = true;
    public boolean frontDefrost = false;
    public boolean rearDefrost = false;
    public int driverSeatHeat = 0; // 0 - 3
    public int passengerSeatHeat = 0; // 0 - 3
    public long timestamp = System.currentTimeMillis();

    @Override
    public String toString() {
        return "AirData{" +
                "driverTemp=" + driverTemp +
                ", passengerTemp=" + passengerTemp +
                ", fanSpeed=" + fanSpeed +
                ", acPower=" + acPower +
                ", auto=" + autoMode +
                '}';
    }
}
