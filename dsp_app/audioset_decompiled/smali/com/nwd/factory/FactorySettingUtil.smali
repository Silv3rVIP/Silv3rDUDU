.class public Lcom/nwd/factory/FactorySettingUtil;
.super Ljava/lang/Object;


# static fields
.field private static final ACTION_CLEAN_LAUNCHER_DATA:Ljava/lang/String; = "com.nwd.android.ACTION_CLEAN_DATA"

.field public static final ACTION_INIT_FACTORY_SETTING_SUCCESS:Ljava/lang/String; = "com.nwd.ACTION_INIT_FACTORY_SETTING_SUCCESS"

.field private static final DATA_LEN:I = 0x10

.field public static final DEBUG:Z = true

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static final mSettingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nwd/factory/IFactorySetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "FactorySettingUtil"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nwd/factory/FactorySettingUtil;->mSettingList:Ljava/util/List;

    invoke-static {}, Lcom/nwd/factory/FeatureSettingUtil;->getInstance()Lcom/nwd/factory/FeatureSettingUtil;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nwd/factory/FactorySettingUtil;->mSettingList:Ljava/util/List;

    invoke-static {}, Lcom/nwd/factory/ButtonSettingUtil;->getInstance()Lcom/nwd/factory/ButtonSettingUtil;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nwd/factory/FactorySettingUtil;->mSettingList:Ljava/util/List;

    invoke-static {}, Lcom/nwd/factory/can/MCUCanFactoryUtil;->getInstance()Lcom/nwd/factory/can/MCUCanFactoryUtil;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nwd/factory/FactorySettingUtil;->mSettingList:Ljava/util/List;

    invoke-static {}, Lcom/nwd/factory/BackcarSettingUtil;->getInstance()Lcom/nwd/factory/BackcarSettingUtil;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nwd/factory/FactorySettingUtil;->mSettingList:Ljava/util/List;

    invoke-static {}, Lcom/nwd/factory/RadioSettingUtil;->getInstance()Lcom/nwd/factory/RadioSettingUtil;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nwd/factory/FactorySettingUtil;->mSettingList:Ljava/util/List;

    invoke-static {}, Lcom/nwd/factory/SteerwheelSettingUtil;->getInstance()Lcom/nwd/factory/SteerwheelSettingUtil;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static emuSendDataToMcu(Landroid/content/Context;[B)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    const-string v1, "protocal"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print([B)V

    return-void
.end method

.method public static final emuSendE2PRoomDataToMcu(Landroid/content/Context;)V
    .locals 7

    invoke-static {p0}, Lcom/nwd/factory/FactorySettingUtil;->getDefaultFun(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultFun="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    const/16 v2, 0x9

    const/4 v6, 0x4

    aput-byte v2, v1, v6

    const/4 v6, 0x5

    aput-byte v5, v1, v6

    const/4 v6, 0x6

    aput-byte v5, v1, v6

    const/4 v6, 0x7

    aput-byte v3, v1, v6

    const/16 v6, 0x8

    aput-byte v4, v1, v6

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    aput-byte v5, v1, v2

    const/16 v2, 0xb

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    aput-byte v5, v1, v2

    invoke-static {p0}, Lcom/nwd/factory/FactorySettingUtil;->getRDSDefault(Landroid/content/Context;)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v4, 0xd

    aput-byte v2, v1, v4

    const/16 v2, 0xe

    aput-byte v5, v1, v2

    const/16 v2, 0xf

    aput-byte v3, v1, v2

    invoke-static {v1}, Lcom/nwd/kernel/source/protocal/InitProtocalUtil;->generateEepromInfo([B)[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nwd/factory/FactorySettingUtil;->emuSendDataToMcu(Landroid/content/Context;[B)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "factory_feature"

    invoke-static {p0, v1, v0}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static final getDefaultFun(Landroid/content/Context;)I
    .locals 8

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const p0, 0xd018

    goto :goto_0

    :cond_0
    const p0, 0xd008

    :goto_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "default_fun"

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nwd/factory/config/AbsConfigSetting;->CONFIG_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/app/FactoryConfig.ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    :cond_1
    sget-object v2, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string v3, "FactoryConfig.ini is error so read /system/config/app/FactoryConfig.ini"

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/config/app/FactoryConfig.ini"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default_fun="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "no find default_fun"

    goto :goto_1

    :goto_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "no find FactoryConfig.ini"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return p0
.end method

.method public static final getDoubleMic(Landroid/content/Context;)I
    .locals 3

    new-instance p0, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    const-string v0, "key_double_mic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;->release()V

    sget-object p0, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDoubleMic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v0
.end method

.method public static final getMicGain(Landroid/content/Context;)I
    .locals 3

    new-instance p0, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    const-string v0, "key_mic_gain"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;->release()V

    sget-object p0, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMicGain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v0
.end method

.method public static final getQRCodeActivate(Landroid/content/Context;)I
    .locals 2

    new-instance p0, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    const-string v0, "qr_code_activate"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;->release()V

    return v0
.end method

.method public static final getRDSDefault(Landroid/content/Context;)I
    .locals 5

    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    const-string v0, "rds_open"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nwd/factory/config/AbsConfigSetting;->CONFIG_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/app/FactoryConfig.ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0"

    invoke-virtual {p0, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object p0, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rds_open="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v1
.end method

.method public static final getUIStylePassword(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "ui_style_password"

    invoke-static {p0, v1}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    sget-object p0, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUIStylePassword(), e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x5

    invoke-virtual {v1, p0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;I)V

    return v0
.end method

.method public static final getUartFunMode(Landroid/content/Context;)I
    .locals 2

    new-instance p0, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    const-string v0, "uart_fun_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;->release()V

    return v0
.end method

.method static final initFactorySetting(Landroid/content/Context;[B)V
    .locals 3

    sget-object v0, Lcom/nwd/factory/FactorySettingUtil;->mSettingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nwd/factory/IFactorySetting;

    invoke-interface {v2, p0, p1, v1}, Lcom/nwd/factory/IFactorySetting;->initFactorySetting(Landroid/content/Context;[BI)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isHaveGsensor()Z
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/bst/ACC/chip_id"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    sget-object v0, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHaveGsensor="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v2
.end method

.method public static final isHaveXXRadar(Landroid/content/Context;)I
    .locals 7

    const-string p0, "key_xx_radar"

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nwd/factory/config/AbsConfigSetting;->SDCARD_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nwd/factory/config/AbsConfigSetting;->SDCARD_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/backups/FactoryConfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nwd/factory/config/AbsConfigSetting;->CONFIG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/FactoryConfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "0"

    invoke-virtual {v1, p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    move v2, p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_1
    sget-object p0, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHaveXXRadar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v2
.end method

.method public static final isThreeLampSettingSwitchOpen(Landroid/content/Context;)I
    .locals 0

    new-instance p0, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    invoke-virtual {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;->isThreeLampSettingOpen()I

    move-result p0

    return p0
.end method

.method public static final isVoiceAnalyzeActivate(Landroid/content/Context;)I
    .locals 1

    new-instance p0, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    invoke-virtual {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;->isVoiceAnalyzeActivate()I

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;->release()V

    return v0
.end method

.method public static final isVoiceAnalyzeOpen(Landroid/content/Context;)I
    .locals 1

    new-instance p0, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    invoke-virtual {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;->isVoiceAnalyzeOpen()I

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/factory/config/FactoryConfigSetting;->release()V

    return v0
.end method

.method public static final requestRefreshLauncher(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.android.ACTION_CLEAN_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static final resetIfNeed(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/nwd/factory/FactorySettingUtil;->mSettingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/factory/IFactorySetting;

    invoke-interface {v1, p0}, Lcom/nwd/factory/IFactorySetting;->resetIfNeed(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final saveDate2Mcu(Landroid/content/Context;Lcom/nwd/kernel/aidl/IKernelFeature;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v0, 0x10

    new-array v0, v0, [B

    sget-object v1, Lcom/nwd/factory/FactorySettingUtil;->mSettingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nwd/factory/IFactorySetting;

    invoke-interface {v3, p0, v0, v2}, Lcom/nwd/factory/IFactorySetting;->saveFactorySetting(Landroid/content/ContentResolver;[BI)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/nwd/kernel/source/protocal/InitProtocalUtil;->generateEepromInfo([B)[B

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/nwd/kernel/aidl/IKernelFeature;->request([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static final saveFactorySetting(Landroid/content/Context;Lcom/nwd/kernel/aidl/IKernelFeature;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/nwd/factory/FactorySettingUtil;->saveDate2Mcu(Landroid/content/Context;Lcom/nwd/kernel/aidl/IKernelFeature;)V

    :cond_0
    return-void
.end method

.method public static final sendFactoryResetEx(Landroid/content/Context;I)V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/16 v1, -0x10

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x4

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/4 v3, 0x2

    const/16 v4, 0x7b

    aput-byte v4, v0, v3

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput-byte v4, v0, v3

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x5

    aput-byte p1, v0, v1

    const/4 p1, 0x6

    aput-byte v2, v0, p1

    invoke-static {p0, v0}, Lcom/nwd/factory/FactorySettingUtil;->emuSendDataToMcu(Landroid/content/Context;[B)V

    return-void
.end method

.method public static final sendFixedGain(Landroid/content/Context;II)V
    .locals 3

    const/4 v0, 0x5

    const/16 v1, 0xd

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p2, p2

    aput-byte p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "protocal"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final sendMaxVolGain(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    if-gez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_0
    int-to-byte p1, p1

    aput-byte p1, v0, v1

    :goto_0
    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "protocal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setMicGain(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMicGain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setMicGain"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final setUIStylePassword(Landroid/content/Context;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ui_style_password"

    invoke-static {p0, v0, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/nwd/factory/FactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUIStylePassword(), e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
