.class public Lcom/nwd/setting/service/MCUSystemSetting;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDayBackLight(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_back_light_day"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getGpsMix(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_other_setting_volume_mix"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getGpsVolumeType(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_other_setting_gps_setting_type"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getHandBrakeState(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string v0, "arm_hand_break_state"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final getMaxBackLight(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_back_light_max"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getNightBackLight(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_back_light_night"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getRadioArea(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_radio_area_current"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getRadioAreaFeature(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_radio_area_feature"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getSystemState(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_System_setting_state"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getVideoBrigthness(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_video_setting_brigthness"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getVideoColor(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_video_setting_color"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getVideoContrast(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_video_setting_contrast"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getVideoMode(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_video_setting_mode"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
