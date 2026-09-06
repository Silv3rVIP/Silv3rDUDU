package com.dudu.ledbridge;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;

public class BootReceiver extends BroadcastReceiver {
    private static final String TAG = "DuduLedBoot";

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent == null || intent.getAction() == null) return;
        String action = intent.getAction();
        Log.d(TAG, "BootReceiver received action: " + action);

        Intent serviceIntent = new Intent(context, LedBleService.class);
        serviceIntent.setAction(action);
        if (intent.getExtras() != null) {
            serviceIntent.putExtras(intent.getExtras());
        }

        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                context.startForegroundService(serviceIntent);
            } else {
                context.startService(serviceIntent);
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed starting LedBleService from receiver", e);
        }
    }
}
