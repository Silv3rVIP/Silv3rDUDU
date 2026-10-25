package com.silv3r.passatb7.telemetry;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;

import com.silv3r.passatb7.telemetry.db.DatabaseHelper;
import com.silv3r.passatb7.telemetry.db.TripLog;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public class TripHistoryActivity extends Activity {
    private DatabaseHelper mDb;
    private ListView mListView;
    private TripAdapter mAdapter;
    private List<TripLog> mTrips;

    private TextView mTvTotalTrips;
    private TextView mTvTotalKm;
    private TextView mTvTotalFuel;
    private TextView mTvAvgConsumption;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_trip_history);

        mDb = DatabaseHelper.getInstance(this);

        mListView = findViewById(R.id.list_trips);
        mTvTotalTrips = findViewById(R.id.tv_total_trips);
        mTvTotalKm = findViewById(R.id.tv_total_km);
        mTvTotalFuel = findViewById(R.id.tv_total_fuel);
        mTvAvgConsumption = findViewById(R.id.tv_avg_consumption);

        Button btnBack = findViewById(R.id.btn_back);
        if (btnBack != null) {
            btnBack.setOnClickListener(v -> finish());
        }

        Button btnClear = findViewById(R.id.btn_clear);
        if (btnClear != null) {
            btnClear.setOnClickListener(v -> {
                mDb.clearAllTrips();
                loadTrips();
            });
        }

        loadTrips();
    }

    private void loadTrips() {
        mTrips = mDb.getAllTrips();

        float totalKm = 0f;
        float totalFuel = 0f;
        for (TripLog t : mTrips) {
            totalKm += t.distanceKm;
            totalFuel += t.fuelUsedLiters;
        }

        mTvTotalTrips.setText("TRIPS: " + mTrips.size());
        mTvTotalKm.setText(String.format(Locale.US, "TOTAL: %.1f km", totalKm));
        mTvTotalFuel.setText(String.format(Locale.US, "FUEL: %.1f L", totalFuel));
        if (totalKm > 1f) {
            mTvAvgConsumption.setText(String.format(Locale.US, "AVG: %.1f L/100", (totalFuel / totalKm) * 100f));
        } else {
            mTvAvgConsumption.setText("AVG: -- L/100");
        }

        mAdapter = new TripAdapter();
        mListView.setAdapter(mAdapter);
    }

    private class TripAdapter extends BaseAdapter {
        private final SimpleDateFormat mDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault());

        @Override
        public int getCount() {
            return mTrips != null ? mTrips.size() : 0;
        }

        @Override
        public Object getItem(int position) {
            return mTrips.get(position);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = LayoutInflater.from(TripHistoryActivity.this).inflate(R.layout.item_trip, parent, false);
            }

            TripLog trip = mTrips.get(position);

            TextView tvDate = convertView.findViewById(R.id.item_trip_date);
            TextView tvDuration = convertView.findViewById(R.id.item_trip_duration);
            TextView tvDist = convertView.findViewById(R.id.item_trip_dist);
            TextView tvSpeed = convertView.findViewById(R.id.item_trip_speed);
            TextView tvCons = convertView.findViewById(R.id.item_trip_consumption);
            TextView tvFuel = convertView.findViewById(R.id.item_trip_fuel_used);

            tvDate.setText(mDateFormat.format(new Date(trip.startTime)));
            tvDuration.setText("Duration: " + trip.getDurationMinutes() + " mins (Idle: " + (trip.idleDurationSec / 60) + "m)");
            tvDist.setText(String.format(Locale.US, "%.1f km", trip.distanceKm));
            tvSpeed.setText("Avg: " + trip.avgSpeedKmh + " | Max: " + trip.maxSpeedKmh + " km/h");
            tvCons.setText(String.format(Locale.US, "%.1f L/100km", trip.avgConsumptionL100));
            tvFuel.setText(String.format(Locale.US, "Used: %.2f L", trip.fuelUsedLiters));

            return convertView;
        }
    }
}
