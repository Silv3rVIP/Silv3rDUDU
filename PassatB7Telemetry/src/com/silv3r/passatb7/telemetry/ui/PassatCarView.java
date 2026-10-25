package com.silv3r.passatb7.telemetry.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;

import com.silv3r.passatb7.telemetry.can.model.DoorData;

public class PassatCarView extends View {
    private final Paint mBodyPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint mGlassPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint mDoorOpenPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint mWarningPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint mWheelPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint mTextPaint = new Paint(Paint.ANTI_ALIAS_FLAG);

    private DoorData mDoorData = new DoorData();

    public PassatCarView(Context context) {
        super(context);
        init();
    }

    public PassatCarView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public PassatCarView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        mBodyPaint.setColor(Color.parseColor("#1C2634"));
        mBodyPaint.setStyle(Paint.Style.FILL);

        mGlassPaint.setColor(Color.parseColor("#0F172A"));
        mGlassPaint.setStyle(Paint.Style.FILL);

        mDoorOpenPaint.setColor(Color.parseColor("#E61E28"));
        mDoorOpenPaint.setStyle(Paint.Style.STROKE);
        mDoorOpenPaint.setStrokeWidth(5f);

        mWarningPaint.setColor(Color.parseColor("#E61E28"));
        mWarningPaint.setStyle(Paint.Style.FILL);

        mWheelPaint.setColor(Color.parseColor("#0A0D12"));
        mWheelPaint.setStyle(Paint.Style.FILL);

        mTextPaint.setColor(Color.WHITE);
        mTextPaint.setTextSize(20f);
        mTextPaint.setTextAlign(Paint.Align.CENTER);
        mTextPaint.setFakeBoldText(true);
    }

    public void updateDoors(DoorData doorData) {
        if (doorData != null) {
            this.mDoorData = doorData;
            invalidate();
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        int w = getWidth();
        int h = getHeight();
        if (w <= 0 || h <= 0) return;

        float cx = w / 2f;
        float cy = h / 2f;

        // Scale factors: Passat B7 Sedan dimensions (proportions: length ~2.3x width)
        float carWidth = Math.min(w * 0.42f, 150f);
        float carLength = carWidth * 2.3f;

        float left = cx - carWidth / 2f;
        float right = cx + carWidth / 2f;
        float top = cy - carLength / 2f;
        float bottom = cy + carLength / 2f;

        // Draw 4 Wheels
        float wheelW = carWidth * 0.16f;
        float wheelH = carLength * 0.14f;
        // Front wheels
        canvas.drawRoundRect(new RectF(left - wheelW * 0.6f, top + carLength * 0.18f, left + wheelW * 0.4f, top + carLength * 0.18f + wheelH), 4, 4, mWheelPaint);
        canvas.drawRoundRect(new RectF(right - wheelW * 0.4f, top + carLength * 0.18f, right + wheelW * 0.6f, top + carLength * 0.18f + wheelH), 4, 4, mWheelPaint);
        // Rear wheels
        canvas.drawRoundRect(new RectF(left - wheelW * 0.6f, bottom - carLength * 0.32f, left + wheelW * 0.4f, bottom - carLength * 0.32f + wheelH), 4, 4, mWheelPaint);
        canvas.drawRoundRect(new RectF(right - wheelW * 0.4f, bottom - carLength * 0.32f, right + wheelW * 0.6f, bottom - carLength * 0.32f + wheelH), 4, 4, mWheelPaint);

        // Draw Passat B7 Sedan Main Body Outline
        Path bodyPath = new Path();
        bodyPath.moveTo(cx - carWidth * 0.35f, top);
        // Front bumper curve
        bodyPath.quadTo(cx, top - 6, cx + carWidth * 0.35f, top);
        // Right front fender & hood
        bodyPath.lineTo(right, top + carLength * 0.25f);
        // Right cabin
        bodyPath.lineTo(right + 2, bottom - carLength * 0.30f);
        // Right trunk / rear sedan deck
        bodyPath.lineTo(right - carWidth * 0.1f, bottom);
        // Rear bumper
        bodyPath.quadTo(cx, bottom + 4, left + carWidth * 0.1f, bottom);
        // Left trunk / rear sedan deck
        bodyPath.lineTo(left - 2, bottom - carLength * 0.30f);
        // Left cabin
        bodyPath.lineTo(left, top + carLength * 0.25f);
        bodyPath.close();

        // Stroke highlight
        mBodyPaint.setColor(Color.parseColor("#1E293B"));
        canvas.drawPath(bodyPath, mBodyPaint);

        Paint strokePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        strokePaint.setStyle(Paint.Style.STROKE);
        strokePaint.setStrokeWidth(2.5f);
        strokePaint.setColor(Color.parseColor("#0084DE"));
        canvas.drawPath(bodyPath, strokePaint);

        // Cabin Glass (Windshield, side windows, rear windshield)
        Path glassPath = new Path();
        float glassTop = top + carLength * 0.28f;
        float glassBottom = bottom - carLength * 0.32f;
        float glassW = carWidth * 0.76f;
        RectF glassRect = new RectF(cx - glassW / 2f, glassTop, cx + glassW / 2f, glassBottom);
        canvas.drawRoundRect(glassRect, 14, 14, mGlassPaint);

        // Draw Doors or Door Ajar Alerts
        float doorTopFL = top + carLength * 0.30f;
        float doorBottomFL = top + carLength * 0.50f;
        float doorTopRL = top + carLength * 0.52f;
        float doorBottomRL = bottom - carLength * 0.32f;

        // Front Left Door
        if (mDoorData.frontLeftOpen) {
            canvas.drawLine(left, doorTopFL, left - 24, doorBottomFL, mDoorOpenPaint);
            canvas.drawCircle(left - 24, doorBottomFL, 5, mWarningPaint);
        } else {
            strokePaint.setColor(Color.parseColor("#334155"));
            canvas.drawLine(left, doorTopFL, left, doorBottomFL, strokePaint);
        }

        // Front Right Door
        if (mDoorData.frontRightOpen) {
            canvas.drawLine(right, doorTopFL, right + 24, doorBottomFL, mDoorOpenPaint);
            canvas.drawCircle(right + 24, doorBottomFL, 5, mWarningPaint);
        } else {
            strokePaint.setColor(Color.parseColor("#334155"));
            canvas.drawLine(right, doorTopFL, right, doorBottomFL, strokePaint);
        }

        // Rear Left Door
        if (mDoorData.rearLeftOpen) {
            canvas.drawLine(left, doorTopRL, left - 20, doorBottomRL, mDoorOpenPaint);
            canvas.drawCircle(left - 20, doorBottomRL, 5, mWarningPaint);
        } else {
            strokePaint.setColor(Color.parseColor("#334155"));
            canvas.drawLine(left, doorTopRL, left, doorBottomRL, strokePaint);
        }

        // Rear Right Door
        if (mDoorData.rearRightOpen) {
            canvas.drawLine(right, doorTopRL, right + 20, doorBottomRL, mDoorOpenPaint);
            canvas.drawCircle(right + 20, doorBottomRL, 5, mWarningPaint);
        } else {
            strokePaint.setColor(Color.parseColor("#334155"));
            canvas.drawLine(right, doorTopRL, right, doorBottomRL, strokePaint);
        }

        // Hood Ajar Alert
        if (mDoorData.hoodOpen) {
            RectF hoodRect = new RectF(cx - carWidth * 0.35f, top, cx + carWidth * 0.35f, top + carLength * 0.22f);
            canvas.drawRoundRect(hoodRect, 6, 6, mWarningPaint);
            canvas.drawText("HOOD", cx, top + carLength * 0.14f, mTextPaint);
        }

        // Trunk (Boot) Ajar Alert
        if (mDoorData.trunkOpen) {
            RectF trunkRect = new RectF(cx - carWidth * 0.32f, bottom - carLength * 0.22f, cx + carWidth * 0.32f, bottom);
            canvas.drawRoundRect(trunkRect, 6, 6, mWarningPaint);
            canvas.drawText("TRUNK", cx, bottom - carLength * 0.08f, mTextPaint);
        }
    }
}
