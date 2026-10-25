.class public Lcom/nwd/factory/config/FactoryConfigSetting;
.super Lcom/nwd/factory/config/AbsConfigSetting;


# static fields
.field public static final KEY_ASSISTLINE:Ljava/lang/String; = "assistline"

.field public static final KEY_BACKCAR_TRACK:Ljava/lang/String; = "backcar_track"

.field private static final KEY_BACK_ASSISTLINE_ADJUST:Ljava/lang/String; = "backcar_assist_line_adjust"

.field public static final KEY_DOUBLE_MIC:Ljava/lang/String; = "key_double_mic"

.field public static final KEY_FUN:Ljava/lang/String; = "fun"

.field public static final KEY_FXP:Ljava/lang/String; = "fxp"

.field private static final KEY_LIGHT_SENSITIVE_SWITCH:Ljava/lang/String; = "key_light_sensitive_switch"

.field private static final KEY_LOGO_SETUP_SWITCH:Ljava/lang/String; = "key_logo_setup_switch"

.field public static final KEY_MIC_GAIN:Ljava/lang/String; = "key_mic_gain"

.field public static final KEY_PANEL:Ljava/lang/String; = "panel"

.field public static final KEY_QR_CODE_ACTIVATE:Ljava/lang/String; = "qr_code_activate"

.field public static final KEY_REMOTE_CONTROL:Ljava/lang/String; = "remote_control"

.field private static final KEY_THREE_LAMP_SETTING_SWITCH:Ljava/lang/String; = "three_lamp_setting"

.field public static final KEY_UART_FUN_MODE:Ljava/lang/String; = "uart_fun_mode"

.field public static final KEY_VOICE_ANALYZE:Ljava/lang/String; = "voice_analyze_display"

.field private static final KEY_VOICE_ANALYZE_ACTIVATE:Ljava/lang/String; = "voice_analyze_activate"

.field public static final KEY_WL_DVR_PACKNAME:Ljava/lang/String; = "key_wl_dvr_packname"

.field public static final KEY_XX_RADAR:Ljava/lang/String; = "key_xx_radar"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nwd/factory/config/AbsConfigSetting;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogoSetUpSwitch()Ljava/lang/String;
    .locals 2

    const-string v0, "key_logo_setup_switch"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWLDvrPackName()Ljava/lang/String;
    .locals 2

    const-string v0, "key_wl_dvr_packname"

    const-string v1, "com.nwd.dvr.nomal_gkw"

    invoke-virtual {p0, v0, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAssistLineAdjustOpen()I
    .locals 1

    const-string v0, "backcar_assist_line_adjust"

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isLightSensitiveSettingOpen()I
    .locals 1

    const-string v0, "key_light_sensitive_switch"

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isThreeLampSettingOpen()I
    .locals 1

    const-string v0, "three_lamp_setting"

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isVoiceAnalyzeActivate()I
    .locals 1

    const-string v0, "voice_analyze_activate"

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isVoiceAnalyzeOpen()I
    .locals 1

    const-string v0, "voice_analyze_display"

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onGetConfigPath()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/FactoryConfig.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nwd/factory/config/FactoryConfigSetting;->SDCARD_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/backups/FactoryConfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nwd/factory/config/FactoryConfigSetting;->CONFIG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/FactoryConfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    sget-object v0, Lcom/nwd/factory/config/FactoryConfigSetting;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-object v1
.end method

.method public reset()V
    .locals 6

    invoke-virtual {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;->onGetConfigPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "delete file: "

    if-eqz v2, :cond_0

    sget-object v2, Lcom/nwd/factory/config/FactoryConfigSetting;->CONFIG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/nwd/factory/config/FactoryConfigSetting;->LOG:Lcom/android/utils/log/JLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".bak"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nwd/factory/config/FactoryConfigSetting;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public setAssistLineAdjustOpen(I)V
    .locals 1

    const-string v0, "backcar_assist_line_adjust"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setLightSensitiveSettingOpen(I)V
    .locals 1

    const-string v0, "key_light_sensitive_switch"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setLogoSetUpSwitch(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_logo_setup_switch"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setThreeLampSettingOpen(I)V
    .locals 1

    const-string v0, "three_lamp_setting"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setVoiceAnalyzeActivate(I)V
    .locals 1

    const-string v0, "voice_analyze_activate"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setVoiceAnalyzeOpen(I)V
    .locals 1

    const-string v0, "voice_analyze_display"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    return-void
.end method
