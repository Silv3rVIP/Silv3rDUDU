.class public Lcom/nwd/setting/service/MCUSoundSetting;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAudioState(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_audio_state"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getEQ(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "mcu_eq"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getEqual(Landroid/content/ContentResolver;)I
    .locals 1

    const-string v0, "mcu_state_equal"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getMaxBalanceFader(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "mcu_max_balance_fader"

    const/16 v1, 0xe

    invoke-static {p0, v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getMaxGain(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "mcu_max_gain_volume"

    const/16 v1, 0x14

    invoke-static {p0, v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getMaxHornVolume(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "mcu_max_horn_volume"

    const/16 v1, 0xe

    invoke-static {p0, v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getMaxTreBleTenorBassVolume(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "mcu_max_treble_tenor_bass_volume"

    const/16 v1, 0xe

    invoke-static {p0, v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getMaxVolume(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "mcu_max_volume"

    const/16 v1, 0x28

    invoke-static {p0, v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
