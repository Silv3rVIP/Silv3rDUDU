package com.silv3r.passatb7.telemetry.can.model;

public class CarData {
    public int speedKmh = 0;
    public int engineRpm = 0;
    public int lifetimeMileageKm = 0;
    public float tripMileageKm = 0f;
    public float fuelSurplusLiters = -1f;
    public float instantOilL100 = 0f;
    public float avgOilL100 = 0f;
    public float batteryVoltage = 0f;
    public float coolantTempC = 90f;
    public String outsideTempStr = "--";
    public boolean handbrake = false;
    public boolean driverSeatbelt = true;
    public boolean passengerSeatbelt = true;
    public boolean lowFuelWarning = false;
    public boolean washerFluidLow = false;
    public boolean highBeam = false;
    public boolean dippedBeam = false;
    public long timestamp = System.currentTimeMillis();

    public boolean isEngineRunning() {
        return engineRpm > 400 || speedKmh > 3;
    }

    public boolean isAlternatorCharging() {
        return batteryVoltage >= 13.2f;
    }

    @Override
    public String toString() {
        return "CarData{" +
                "speed=" + speedKmh + "km/h" +
                ", rpm=" + engineRpm +
                ", odo=" + lifetimeMileageKm + "km" +
                ", fuel=" + fuelSurplusLiters + "L" +
                ", volt=" + batteryVoltage + "V" +
                ", coolant=" + coolantTempC + "°C" +
                ", outTemp=" + outsideTempStr +
                '}';
    }
}
