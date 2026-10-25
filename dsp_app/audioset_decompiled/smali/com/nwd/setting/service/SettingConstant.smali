.class public Lcom/nwd/setting/service/SettingConstant;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/setting/service/SettingConstant$AutoWakeup;,
        Lcom/nwd/setting/service/SettingConstant$VideoChannel;,
        Lcom/nwd/setting/service/SettingConstant$FactoryResetType;,
        Lcom/nwd/setting/service/SettingConstant$VideoSetting;,
        Lcom/nwd/setting/service/SettingConstant$Canbus_Door;,
        Lcom/nwd/setting/service/SettingConstant$Canbus;,
        Lcom/nwd/setting/service/SettingConstant$DisplayDriverUpdateState;,
        Lcom/nwd/setting/service/SettingConstant$MhlUpdateState;,
        Lcom/nwd/setting/service/SettingConstant$McuUpdateState;,
        Lcom/nwd/setting/service/SettingConstant$Radar;,
        Lcom/nwd/setting/service/SettingConstant$StreeWheelState;,
        Lcom/nwd/setting/service/SettingConstant$SystemSettingState;,
        Lcom/nwd/setting/service/SettingConstant$SettingFunctionType;,
        Lcom/nwd/setting/service/SettingConstant$DspAudioType;,
        Lcom/nwd/setting/service/SettingConstant$AudioType;
    }
.end annotation


# static fields
.field public static final ACTION_AUX_OPEN_STATE:Ljava/lang/String; = "com.nwd.action.ACTION_AUX_OPEN_STATE"

.field public static final ACTION_CANCEL_MCU_UPDATE:Ljava/lang/String; = "com.nwd.ACTION_CANCEL_MCU_UPDATE"

.field public static final ACTION_CAN_BATTERY_VOLTAGE:Ljava/lang/String; = "com.nwd.action.ACTION_CAN_BATTERY_VOLTAGE"

.field public static final ACTION_EXIT_MCU_UPDATE:Ljava/lang/String; = "com.nwd.ACTION_EXIT_MCU_UPDATE"

.field public static final ACTION_FIXED_GAIN_SWITCH:Ljava/lang/String; = "com.nwd.ACTION_FIXED_GAIN_SWITCH"

.field public static final ACTION_FORCED_CALIBRATION_RESOLUTION:Ljava/lang/String; = "com.nwd.action.ACTION_FORCED_CALIBRATION_RESOLUTION"

.field public static final ACTION_IMPORT_RESOLUTION_CONFIG:Ljava/lang/String; = "com.nwd.action.ACTION_IMPORT_RESOLUTION_CONFIG"

.field public static final ACTION_MCU_HARDWARE_ID:Ljava/lang/String; = "com.nwd.action.ACTION_MCU_HARDWARE_ID"

.field public static final ACTION_MCU_UPDATE_PROGRESS:Ljava/lang/String; = "com.nwd.ACTION_MCU_UPDATE_PROGRESS"

.field public static final ACTION_MCU_UPDATE_STATE_CHANGE:Ljava/lang/String; = "com.nwd.ACTION_MCU_UPDATE_STATE_CHANGE"

.field public static final ACTION_QUERY_CAN_BATTERY_VOLTAGE:Ljava/lang/String; = "com.nwd.action.ACTION_QUERY_CAN_BATTERY_VOLTAGE"

.field public static final ACTION_QUERY_MCU_HARDWARE_ID:Ljava/lang/String; = "com.nwd.action.ACTION_QUERY_MCU_HARDWARE_ID"

.field public static final ACTION_REINIT_DSP_DATA:Ljava/lang/String; = "com.nwd.action.ACTION_REINIT_DSP_DATA"

.field public static final ACTION_REQUEST_CAN_UPDATE:Ljava/lang/String; = "com.nwd.action.ACTION_REQUEST_CAN_UPDATE"

.field public static final ACTION_REQUEST_SHORT_MUTE:Ljava/lang/String; = "com.nwd.ACTION_REQUEST_SHORT_MUTE"

.field public static final ACTION_SETTING_SERVICE:Ljava/lang/String; = "com.nwd.setting.service.ACTION_SETTING_SERVICE"

.field public static final EXTRA_AUX_OPEN_STATE:Ljava/lang/String; = "extra_aux_open_state"

.field public static final EXTRA_FIXED_GAIN_STATE:Ljava/lang/String; = "extra_fixed_gain_state"

.field public static final EXTRA_FIXED_GAIN_VALUE:Ljava/lang/String; = "extra_fixed_gain_value"

.field public static final EXTRA_ID:Ljava/lang/String; = "extra_id"

.field public static final EXTRA_MCU_UPDATE_PATH:Ljava/lang/String; = "extra_mcu_update_path"

.field public static final EXTRA_MCU_UPDATE_PROGRESS:Ljava/lang/String; = "extra_mcu_update_progress"

.field public static final EXTRA_MCU_UPDATE_STATE:Ljava/lang/String; = "extra_mcu_update_state"

.field public static final EXTRA_RESOLUTION_MODE:Ljava/lang/String; = "extra_resolution_mode"

.field public static final EXTRA_SHORT_MUTE_TIME:Ljava/lang/String; = "extra_short_mute_time"

.field public static final EXTRA_VOLTAGE_VALUE:Ljava/lang/String; = "extra_voltage_value"

.field public static final KEY_GSENSOR_SENSITIVITY:Ljava/lang/String; = "key_gsensor_sensitivity"

.field public static final KEY_IMPORT_RESOLUTION_CONFIG:Ljava/lang/String; = "key_import_resolution_config"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
