package com.silv3r.passatb7.telemetry.can.model;

public class RadarData {
    public int[] frontDistances = new int[4]; // 0 - 255 (Left, Mid-Left, Mid-Right, Right)
    public int[] rearDistances = new int[4];  // 0 - 255
    public boolean radarActive = false;
    public long timestamp = System.currentTimeMillis();
}
