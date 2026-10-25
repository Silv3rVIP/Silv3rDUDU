.class public Lcom/nwd/factory/BackcarSettingUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nwd/factory/IFactorySetting;
.implements Lcom/nwd/factory/IExAndImport;


# static fields
.field private static final ATTR_BACKCAR_ASSIST_LINE_SWITCH:Ljava/lang/String; = "backcar_assist_line_switch"

.field private static final ATTR_BACKCAR_TRACK_SWITCH:Ljava/lang/String; = "backcar_track_switch"

.field private static final ATTR_BACKCAR_VIDEO_TYPE:Ljava/lang/String; = "backcar_video_type"

.field public static BACKCAR_AUTO_SWITCH_FRONT:Ljava/lang/String; = null

.field public static BACKCAR_AUTO_SWITCH_FRONT_FUN:Ljava/lang/String; = null

.field public static BACKCAR_DELAY_EXIT_TIME:Ljava/lang/String; = null

.field private static HD_CAMERA_ARRAY:[Ljava/lang/String; = null

.field private static HD_QUALCOMM_CAMERA_ARRAY:[Ljava/lang/String; = null

.field private static final KEY_PROPERTIES_HD_BACKCAR:Ljava/lang/String; = "persist.sys.nwd.hacamera.ctrl"

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static final TAG_BACKCAR_SETTING:Ljava/lang/String; = "backcar_setting"

.field private static instance:Lcom/nwd/factory/BackcarSettingUtil;

.field private static mbCanControl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/utils/log/JLog;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string v3, "BackcarSettingUtil"

    invoke-direct {v0, v3, v2, v1}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/factory/BackcarSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nwd/factory/BackcarSettingUtil;->mbCanControl:Z

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "none"

    aput-object v4, v3, v0

    const-string v5, "pr1000"

    aput-object v5, v3, v2

    const-string v5, "nvp6114"

    const/4 v6, 0x2

    aput-object v5, v3, v6

    const-string v5, "nvp6124"

    aput-object v5, v3, v1

    const-string v5, "nvp-two"

    const/4 v7, 0x4

    aput-object v5, v3, v7

    const-string v5, "pr2000"

    const/4 v8, 0x5

    aput-object v5, v3, v8

    sput-object v3, Lcom/nwd/factory/BackcarSettingUtil;->HD_CAMERA_ARRAY:[Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    aput-object v4, v3, v0

    aput-object v5, v3, v2

    const-string v0, "Mipi-25Z"

    aput-object v0, v3, v6

    const-string v0, "tp2850"

    aput-object v0, v3, v1

    sput-object v3, Lcom/nwd/factory/BackcarSettingUtil;->HD_QUALCOMM_CAMERA_ARRAY:[Ljava/lang/String;

    const-string v0, "backcar_auto_switch_front"

    sput-object v0, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_AUTO_SWITCH_FRONT:Ljava/lang/String;

    const-string v0, "backcar_delay_exit_time"

    sput-object v0, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_DELAY_EXIT_TIME:Ljava/lang/String;

    const-string v0, "backcar_auto_switch_front_fun"

    sput-object v0, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_AUTO_SWITCH_FRONT_FUN:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBackcarAssistLineAdjust(Landroid/content/Context;)I
    .locals 0

    new-instance p0, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    invoke-virtual {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;->isAssistLineAdjustOpen()I

    move-result p0

    return p0
.end method

.method public static final getBackcarAssistLineSwitch(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "factory_backcar_assist_line_switch"

    invoke-static {p0, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getBackcarRadar(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "factory_backcar_radar_switch"

    invoke-static {p0, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getBackcarTrackSwitch(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "factory_backcar_track_switch"

    invoke-static {p0, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getBackcarVideoType(Landroid/content/Context;)I
    .locals 4

    const-string p0, "persist.sys.nwd.hacamera.ctrl"

    const-string v0, "none"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/BackcarSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHDBackcar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/nwd/factory/BackcarSettingUtil;->HD_CAMERA_ARRAY:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/nwd/factory/BackcarSettingUtil;->HD_QUALCOMM_CAMERA_ARRAY:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    move v1, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    sget-object p0, Lcom/nwd/factory/BackcarSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackcarVideoType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v1
.end method

.method public static getBakcarDelayExitTime(Landroid/content/Context;)I
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_DELAY_EXIT_TIME:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v1, v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/nwd/kernel/utils/KernelConstant;->UART_CONFIG:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    sget-object v3, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_DELAY_EXIT_TIME:Ljava/lang/String;

    const-string v4, "5"

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-static {p0, v0}, Lcom/nwd/factory/BackcarSettingUtil;->setBakcarDelayExitTime(Landroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move v0, v1

    :catch_1
    :goto_0
    move v1, v0

    :cond_0
    sget-object p0, Lcom/nwd/factory/BackcarSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBakcarDelayExitTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v1
.end method

.method public static final getBootMenuType(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "boot_menu_type"

    invoke-static {p0, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getInstance()Lcom/nwd/factory/BackcarSettingUtil;
    .locals 1

    sget-object v0, Lcom/nwd/factory/BackcarSettingUtil;->instance:Lcom/nwd/factory/BackcarSettingUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nwd/factory/BackcarSettingUtil;

    invoke-direct {v0}, Lcom/nwd/factory/BackcarSettingUtil;-><init>()V

    sput-object v0, Lcom/nwd/factory/BackcarSettingUtil;->instance:Lcom/nwd/factory/BackcarSettingUtil;

    :cond_0
    sget-object v0, Lcom/nwd/factory/BackcarSettingUtil;->instance:Lcom/nwd/factory/BackcarSettingUtil;

    return-object v0
.end method

.method public static isBakcarAutoSwitchFront(Landroid/content/Context;)Z
    .locals 10

    const-string v0, "0"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_AUTO_SWITCH_FRONT:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/nwd/kernel/source/SettingTableKey;->getStringValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v5, 0x10000

    const-string v6, "1"

    const-string v7, "2"

    if-eqz v4, :cond_4

    :try_start_1
    invoke-static {p0}, Lcom/nwd/factory/BackcarSettingUtil;->isBakcarSwitchFrontFun(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/nwd/kernel/utils/KernelConstant;->UART_CONFIG:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    sget-object v8, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_AUTO_SWITCH_FRONT:Ljava/lang/String;

    invoke-virtual {v3, v8, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_AUTO_SWITCH_FRONT:Ljava/lang/String;

    invoke-static {p0, v0, v6}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_AUTO_SWITCH_FRONT:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_AUTO_SWITCH_FRONT:Ljava/lang/String;

    invoke-static {v0, v3, v7}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :catch_0
    :cond_2
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_AUTO_SWITCH_FRONT:Ljava/lang/String;

    invoke-static {v0, v3, v7}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v5}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz p0, :cond_2

    :catch_1
    :goto_1
    sget-object p0, Lcom/nwd/factory/BackcarSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBakcarAutoSwitchFront="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v1
.end method

.method public static isBakcarSwitchFrontFun(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lcom/nwd/factory/BackcarSettingUtil;->getBakcarDelayExitTime(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_AUTO_SWITCH_FRONT_FUN:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getStringValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/nwd/kernel/utils/KernelConstant;->UART_CONFIG:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    sget-object v2, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_AUTO_SWITCH_FRONT_FUN:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :catch_0
    :cond_2
    sget-object p0, Lcom/nwd/factory/BackcarSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBakcarAutoSwitchFront="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v1
.end method

.method public static isCanControl(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "backcar_can_control"

    invoke-static {p0, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static loadCurSetting(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {v0}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    const-string v1, "backcar_track"

    invoke-virtual {v0, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "assistline"

    invoke-virtual {v0, v2}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/nwd/factory/BackcarSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFactorySetting,backcarTrackSwitch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",assistLineSwitch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backcar_can_control"

    invoke-static {v2, v3}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/nwd/factory/BackcarSettingUtil;->mbCanControl:Z

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "factory_backcar_track_switch"

    invoke-static {v2, v4, v1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_1
    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "factory_backcar_assist_line_switch"

    invoke-static {p0, v1, v0}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public static sendBackcarSettingBroadcast(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.action_update_backcar_setup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static final setBackcarAssistLineSwitch(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "factory_backcar_assist_line_switch"

    invoke-static {v0, v1, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/nwd/factory/BackcarSettingUtil;->sendBackcarSettingBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method public static final setBackcarAssistLineSwitchNew(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "factory_backcar_assist_line_switch"

    invoke-static {v0, v1, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/nwd/factory/BackcarSettingUtil;->sendBackcarSettingBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method public static final setBackcarCanControl(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "backcar_can_control"

    invoke-static {p0, v0, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static final setBackcarRadar(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "factory_backcar_radar_switch"

    invoke-static {p0, v0, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static final setBackcarTrackSwitch(Landroid/content/Context;I)V
    .locals 2

    sget-boolean v0, Lcom/nwd/factory/BackcarSettingUtil;->mbCanControl:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "backcar_can_control"

    invoke-static {v0, v1}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/nwd/factory/BackcarSettingUtil;->mbCanControl:Z

    :cond_1
    sget-boolean v0, Lcom/nwd/factory/BackcarSettingUtil;->mbCanControl:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "factory_backcar_track_switch"

    invoke-static {v0, v1, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/nwd/factory/BackcarSettingUtil;->sendBackcarSettingBroadcast(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static final setBackcarTrackSwitchNew(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "factory_backcar_track_switch"

    invoke-static {v0, v1, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/nwd/factory/BackcarSettingUtil;->sendBackcarSettingBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method public static final setBackcarVideoType(Landroid/content/Context;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_SET_SYSTEM_PROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_prop_name"

    const-string v2, "persist.sys.nwd.hacamera.ctrl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/nwd/factory/service/FactorySettingManager;->getCorrectHDBackcarType(I)I

    move-result p1

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    if-ltz p1, :cond_1

    sget-object v1, Lcom/nwd/factory/BackcarSettingUtil;->HD_CAMERA_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge p1, v2, :cond_1

    aget-object p1, v1, p1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    sget-object v1, Lcom/nwd/factory/BackcarSettingUtil;->HD_QUALCOMM_CAMERA_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge p1, v2, :cond_1

    aget-object p1, v1, p1

    goto :goto_0

    :cond_1
    const-string p1, "none"

    :goto_0
    const-string v1, "extra_prop_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/nwd/factory/BackcarSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHDBackcar="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setBakcarAutoSwitchFront(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_AUTO_SWITCH_FRONT:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/nwd/factory/BackcarSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBakcarAutoSwitchFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static setBakcarDelayExitTime(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/BackcarSettingUtil;->BACKCAR_DELAY_EXIT_TIME:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    sget-object p0, Lcom/nwd/factory/BackcarSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBakcarDelayExitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static final setBootMenuType(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "boot_menu_type"

    invoke-static {p0, v0, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public initFactorySetting(Landroid/content/Context;[BI)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    aget-byte p2, p2, p3

    const-string p3, "factory_backcar_length"

    invoke-static {p1, p3, p2}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method public loadCurrentConfig(Ljava/util/Map;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/nwd/factory/BackcarSettingUtil;->getBackcarVideoType(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "backcar_video_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/nwd/factory/BackcarSettingUtil;->getBackcarTrackSwitch(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "backcar_track_switch"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/nwd/factory/BackcarSettingUtil;->getBackcarAssistLineSwitch(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "backcar_assist_line_switch"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public loadTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "backcar_setting"

    return-object v0
.end method

.method public resetIfNeed(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public saveFactorySetting(Landroid/content/ContentResolver;[BI)I
    .locals 5

    const-string v0, "factory_backcar_video_type"

    invoke-static {p1, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const-string v1, "factory_backcar_track_switch"

    invoke-static {p1, v1}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const-string v2, "factory_backcar_assist_line_switch"

    invoke-static {p1, v2}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-static {v2, p2, p3, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->int2byte(I[BII)V

    add-int/lit8 v4, p3, 0x1

    invoke-static {v0, p2, v4, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->int2byte(I[BII)V

    add-int/lit8 v0, p3, 0x2

    invoke-static {v1, p2, v0, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->int2byte(I[BII)V

    add-int/2addr p3, v2

    invoke-static {p1, p2, p3, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->int2byte(I[BII)V

    const/4 p1, 0x4

    return p1
.end method

.method public setConfig(Ljava/util/Map;Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    :try_start_0
    const-string v0, "backcar_video_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/nwd/factory/BackcarSettingUtil;->setBackcarVideoType(Landroid/content/Context;I)V

    const-string v1, "backcar_track_switch"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2, v1}, Lcom/nwd/factory/BackcarSettingUtil;->setBackcarTrackSwitch(Landroid/content/Context;I)V

    const-string v2, "backcar_assist_line_switch"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/nwd/factory/BackcarSettingUtil;->setBackcarAssistLineSwitch(Landroid/content/Context;I)V

    sget-object p2, Lcom/nwd/factory/BackcarSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set backcar video type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",track switch = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",assistLineSwitch = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    sget-object p2, Lcom/nwd/factory/BackcarSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "unsuccess to set video type"

    invoke-virtual {p2, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :goto_0
    return p1
.end method
