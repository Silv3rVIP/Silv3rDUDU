.class public Lcom/nwd/dsp/uitls/DspConstant;
.super Ljava/lang/Object;
.source "DspConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/dsp/uitls/DspConstant$BIQUAD_TYPE;,
        Lcom/nwd/dsp/uitls/DspConstant$TYPE_AUDIO_IC;,
        Lcom/nwd/dsp/uitls/DspConstant$COUNT;,
        Lcom/nwd/dsp/uitls/DspConstant$FRAGMENT_CLASS;,
        Lcom/nwd/dsp/uitls/DspConstant$SELECT_TYPE;,
        Lcom/nwd/dsp/uitls/DspConstant$TYPE_EQ;,
        Lcom/nwd/dsp/uitls/DspConstant$TYPE_FILTER;,
        Lcom/nwd/dsp/uitls/DspConstant$AREA;,
        Lcom/nwd/dsp/uitls/DspConstant$BUGLE_TYPE;,
        Lcom/nwd/dsp/uitls/DspConstant$DTS_SP_DATA;,
        Lcom/nwd/dsp/uitls/DspConstant$DTS_MODE;,
        Lcom/nwd/dsp/uitls/DspConstant$DTS_TYPE;,
        Lcom/nwd/dsp/uitls/DspConstant$PHASE_VALUE;
    }
.end annotation


# static fields
.field public static AUDIOTYPE:I = 0x0

.field public static final CUSTOMIZE_EQ_PATH:Ljava/lang/String;

.field public static DEFAULTFREQUENCE:[I = null

.field public static final DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

.field public static final DEFAULT_DSPCONFIG_PATH2:Ljava/lang/String;

.field public static final DSP_DEFAULT_PATH:Ljava/lang/String;

.field public static final DSP_DEVICE_PATH_7604:Ljava/lang/String; = "/sys/devices/virtual/misc/ak7604-dsp/user_dsp_exist"

.field public static final DSP_DEVICE_PATH_7735:Ljava/lang/String; = "/sys/devices/virtual/misc/ak7735-dsp/user_dsp_exist"

.field public static final DSP_DEVICE_PATH_DSP_NAME:Ljava/lang/String; = "/sys/devices/virtual/misc/ak7604-dsp/user_dsp_name"

.field public static final DSP_DEVICE_PATH_DTS:Ljava/lang/String; = "/sys/devices/virtual/misc/ak7604-dsp/user_dts_exist"

.field public static final DSP_EQ_GAIN_MAX_PATH:Ljava/lang/String;

.field public static final DSP_FACTORYCONFIG_PATH:Ljava/lang/String;

.field public static final DSP_TYPE_SYS_NWD:Ljava/lang/String; = "sys.nwd.dsp.type"

.field public static final FEATURE_CONFIG_PATH:Ljava/lang/String;

.field public static Gain10_TWO32:[I = null

.field public static final ISPRINTLOG:Z = true

.field public static IS_SEND_END:Z = false

.field public static final KEY_DEVICE_INSTRUMENT_HEIGHT:Ljava/lang/String; = "key_instrument_height"

.field public static final KEY_DSP_4CH:Ljava/lang/String; = "sys/devices/virtual/misc/ak7604-dsp/user_dsp_4ch"

.field public static final KEY_SYS_DSP_PORT_UI2:Ljava/lang/String; = "persist.nwd.dsp.port.ui2"

.field public static final KEY_SYS_DSP_START_SHOW:Ljava/lang/String; = "persist.nwd.dsp.start.show"

.field public static final KEY_SYS_DSP_WIDE_UI:Ljava/lang/String; = "persist.nwd.dsp.wide.ui"

.field public static final KEY_SYS_DTS_HIDE:Ljava/lang/String; = "persist.nwd.dsp.force.no.dts"

.field private static final LOG:Lcom/android/utils/log/JLog;

.field public static final LOW_MEMORY:Z

.field public static final LOW_MEMORY_K2501:Z

.field public static final PRESET_EQ3_PATH:Ljava/lang/String;

.field public static final PRESET_EQ_PATH:Ljava/lang/String;

.field public static final key_dsp_double_bass:Ljava/lang/String; = "dsp_double_bass"

.field public static final key_eq_color_bg_end:Ljava/lang/String; = "eq_color_bg_end"

.field public static final key_eq_color_bg_start:Ljava/lang/String; = "eq_color_bg_start"

.field public static final key_eq_color_line:Ljava/lang/String; = "eq_color_line"

.field public static final key_seekbar_bg:Ljava/lang/String; = "seekbar_bg"

.field public static final key_seekbar_progress:Ljava/lang/String; = "seekbar_progress"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/android/utils/log/JLog;

    const/4 v1, 0x1

    const-string v2, "DspConstant"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/dsp/uitls/DspConstant;->LOG:Lcom/android/utils/log/JLog;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/eq_customize"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/dsp/uitls/DspConstant;->CUSTOMIZE_EQ_PATH:Ljava/lang/String;

    .line 158
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v2, "K2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/nwd/dsp/uitls/DspConstant;->LOW_MEMORY:Z

    .line 159
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v2, "K2501_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/nwd/dsp/uitls/DspConstant;->LOW_MEMORY_K2501:Z

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/eq"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/dsp/uitls/DspConstant;->PRESET_EQ_PATH:Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/eq3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/dsp/uitls/DspConstant;->PRESET_EQ3_PATH:Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/UartConfig.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DSP_EQ_GAIN_MAX_PATH:Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/FactoryConfig.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DSP_FACTORYCONFIG_PATH:Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/DspDefault.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DSP_DEFAULT_PATH:Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/WindowFeatureConfig.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/dsp/uitls/DspConstant;->FEATURE_CONFIG_PATH:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/dspUi/DspConfig.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/DspConfig.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH2:Ljava/lang/String;

    .line 248
    sput-boolean v1, Lcom/nwd/dsp/uitls/DspConstant;->IS_SEND_END:Z

    .line 250
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->getAudioType()I

    move-result v0

    sput v0, Lcom/nwd/dsp/uitls/DspConstant;->AUDIOTYPE:I

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 252
    fill-array-data v0, :array_0

    sput-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULTFREQUENCE:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 256
    sput-object v0, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    return-void

    :array_0
    .array-data 4
        0x14
        0x19
        0x20
        0x28
        0x32
        0x3f
        0x50
        0x64
        0x7d
        0xa0
        0xc8
        0xfa
        0x13b
        0x190
        0x1f4
        0x276
        0x320
        0x3e8
        0x4e2
        0x640
        0x7d0
        0x9c4
        0xc4e
        0xfa0
        0x1388
        0x189c
        0x1f40
        0x2710
        0x30d4
        0x3e80
        0x4650
        0x4e20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 286
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 290
    :cond_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 294
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 299
    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyName="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object v0
.end method

.method public static isShowSparkView()Z
    .locals 1

    .line 271
    sget-boolean v0, Lcom/nwd/dsp/uitls/DspConstant;->LOW_MEMORY:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/nwd/dsp/uitls/DspConstant;->LOW_MEMORY_K2501:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
