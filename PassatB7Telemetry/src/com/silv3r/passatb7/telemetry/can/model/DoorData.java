package com.silv3r.passatb7.telemetry.can.model;

public class DoorData {
    public boolean frontLeftOpen = false;
    public boolean frontRightOpen = false;
    public boolean rearLeftOpen = false;
    public boolean rearRightOpen = false;
    public boolean trunkOpen = false;
    public boolean hoodOpen = false;
    public long timestamp = System.currentTimeMillis();

    public boolean isAnyDoorOpen() {
        return frontLeftOpen || frontRightOpen || rearLeftOpen || rearRightOpen || trunkOpen || hoodOpen;
    }

    @Override
    public String toString() {
        return "DoorData{" +
                "FL=" + frontLeftOpen +
                ", FR=" + frontRightOpen +
                ", RL=" + rearLeftOpen +
                ", RR=" + rearRightOpen +
                ", Trunk=" + trunkOpen +
                ", Hood=" + hoodOpen +
                '}';
    }
}
