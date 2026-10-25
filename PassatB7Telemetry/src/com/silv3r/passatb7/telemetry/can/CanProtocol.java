package com.silv3r.passatb7.telemetry.can;

import com.silv3r.passatb7.telemetry.can.model.AirData;
import com.silv3r.passatb7.telemetry.can.model.CarData;
import com.silv3r.passatb7.telemetry.can.model.DoorData;
import com.silv3r.passatb7.telemetry.can.model.RadarData;

public class CanProtocol {
    public static final byte HEADER = 0x6E;

    public static final byte TYPE_AIR = 0x01;
    public static final byte TYPE_CAR_INFO = 0x02;
    public static final byte TYPE_DOOR = 0x03;
    public static final byte TYPE_RADAR = 0x04;
    public static final byte TYPE_SWC_ANGLE = 0x06;

    public static boolean parseCarInfo(byte[] data, CarData out) {
        if (data == null || data.length < 20) return false;
        if (data[0] != HEADER || data[1] != TYPE_CAR_INFO) return false;

        int offset = 3; // Start offset
        if (data.length <= offset + 16) return false;

        try {
            // Instant Speed (2 bytes, big-endian)
            int speed = ((data[offset] & 0xFF) << 8) | (data[offset + 1] & 0xFF);
            if (speed != 0xFFFF) {
                out.speedKmh = speed;
            }

            // Engine RPM (2 bytes, big-endian)
            int rpm = ((data[offset + 2] & 0xFF) << 8) | (data[offset + 3] & 0xFF);
            if (rpm != 0xFFFF) {
                out.engineRpm = rpm;
            }

            // Driving Mile / Lifetime Odometer (3 bytes, big-endian)
            int odo = ((data[offset + 4] & 0xFF) << 16) | ((data[offset + 5] & 0xFF) << 8) | (data[offset + 6] & 0xFF);
            if (odo != 0xFFFFFF) {
                out.lifetimeMileageKm = odo;
            }

            // Safety Belts
            out.passengerSeatbelt = (data[offset + 9] == 1);
            out.driverSeatbelt = (data[offset + 10] == 1);

            // Handbrake / EPB
            out.handbrake = (data[offset + 13] == 1);

            // Fuel Surplus (Liters)
            int rawFuel = data[offset + 14] & 0xFF;
            if (rawFuel != 255 && rawFuel <= 100) {
                out.fuelSurplusLiters = (float) rawFuel;
            }

            // Battery Voltage (in 0.1V units, e.g. 142 = 14.2V)
            int rawVolt = data[offset + 15] & 0xFF;
            if (rawVolt != 255 && rawVolt > 50 && rawVolt < 200) {
                out.batteryVoltage = rawVolt / 10.0f;
            }

            // Instantaneous Fuel Consumption (offset + 0x29)
            if (data.length > offset + 0x29) {
                int rawInstant = data[offset + 0x29] & 0xFF;
                if (rawInstant != 255) {
                    out.instantOilL100 = rawInstant / 10.0f;
                }
            }

            // Average Fuel Consumption (offset + 0x2A)
            if (data.length > offset + 0x2A) {
                int rawAvg = data[offset + 0x2A] & 0xFF;
                if (rawAvg != 255) {
                    out.avgOilL100 = rawAvg / 10.0f;
                }
            }

            out.timestamp = System.currentTimeMillis();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean parseDoorInfo(byte[] data, DoorData out) {
        if (data == null || data.length < 4) return false;
        if (data[0] != HEADER || data[1] != TYPE_DOOR) return false;

        int offset = 3;
        int b0 = data[offset] & 0xFF;

        out.frontLeftOpen = ((b0 >> 7) & 1) == 1;
        out.frontRightOpen = ((b0 >> 6) & 1) == 1;
        out.rearLeftOpen = ((b0 >> 5) & 1) == 1;
        out.rearRightOpen = ((b0 >> 4) & 1) == 1;
        out.trunkOpen = ((b0 >> 3) & 1) == 1;
        out.hoodOpen = ((b0 >> 2) & 1) == 1;
        out.timestamp = System.currentTimeMillis();
        return true;
    }

    public static boolean parseAirInfo(byte[] data, AirData out) {
        if (data == null || data.length < 6) return false;
        if (data[0] != HEADER || data[1] != TYPE_AIR) return false;

        int offset = 3;
        int b0 = data[offset] & 0xFF;

        out.acPower = ((b0 >> 7) & 1) == 1;
        out.autoMode = ((b0 >> 5) & 1) == 1;
        out.dualSync = ((b0 >> 1) & 1) == 1;

        if (data.length > offset + 1) {
            int b1 = data[offset + 1] & 0xFF;
            out.fanSpeed = (b1 >> 4) & 0x0F;
        }

        if (data.length > offset + 3) {
            // Driver temp in 0.5C steps
            int rawDt = data[offset + 2] & 0xFF;
            if (rawDt > 0 && rawDt < 100) {
                out.driverTemp = 16.0f + (rawDt * 0.5f);
            }
            int rawPt = data[offset + 3] & 0xFF;
            if (rawPt > 0 && rawPt < 100) {
                out.passengerTemp = 16.0f + (rawPt * 0.5f);
            }
        }

        if (data.length > offset + 4) {
            int seatByte = data[offset + 4] & 0xFF;
            out.driverSeatHeat = (seatByte >> 4) & 0x03;
            out.passengerSeatHeat = seatByte & 0x03;
        }

        out.timestamp = System.currentTimeMillis();
        return true;
    }
}
