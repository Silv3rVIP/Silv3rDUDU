.class public Lcom/nwd/factory/service/FactorySettingProtocalUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;
    }
.end annotation


# static fields
.field public static final AMP_VALUE:B = 0x19t

.field public static final AUDIO_ALL_GAIN:B = 0x2t

.field public static final AUDIO_FUN_GAIN:B = 0x3t

.field public static final CARAUDIO_CHANNEL_VALUE:B = 0x11t

.field public static final CARAUX_SWITCH_VALUE:B = 0x12t

.field private static final DATATYPE_PUBLIC_ACK:B = 0xft

.field public static final DTV_MODULE_STYLE:B = 0x6t

.field public static final DVR_MODULE_STYLE:B = 0x4t

.field public static final HBS_FACTROY_DATA:B = 0x0t

.field public static final LOG:Lcom/android/utils/log/JLog;

.field public static final MCU_DEFAULT_VALUE:B = 0x14t

.field public static final PANEL_STUDY_ALL_STATE:B = 0x18t

.field public static final PANEL_STUDY_KEY:B = 0x16t

.field public static final PANEL_STUDY_STEP:B = 0x17t

.field public static final PANEL_VALUE:B = 0xat

.field public static final RADIO_ANTENNA_STATE:B = 0x1at

.field public static final RADIO_LIGHTSENSITIVITY_VALUE:B = 0xbt

.field public static final RADIO_MODULE_STYLE:B = 0x7t

.field public static final RADIO_SENSITIVITY_VALUE:B = 0x8t

.field public static final REMOTE_CONTROL_VALUE:B = 0xft

.field public static final SPEAKER_SWITCH_VALUE:B = 0x13t

.field public static final STEERWHEEL_VALUE:B = 0x9t

.field public static final TURBINE_STATE_VALUE:B = 0xct

.field public static final TV_MODULE_STYLE:B = 0x1t


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "FactorySettingProtocalUtils"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HexToByte(Ljava/lang/String;)[B
    .locals 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "HexToByte Error"

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "0123456789ABCDEF"

    const-string v1, "0123456789abcdef"

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    new-array v3, p0, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p0, :cond_3

    mul-int/lit8 v5, v4, 0x2

    aget-char v6, v2, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    aget-char v6, v2, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    goto :goto_1

    :cond_1
    aget-char v6, v2, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    :goto_1
    mul-int/lit8 v6, v6, 0x10

    add-int/lit8 v5, v5, 0x1

    aget-char v8, v2, v5

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v7, :cond_2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    goto :goto_2

    :cond_2
    aget-char v5, v2, v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    :goto_2
    add-int/2addr v6, v5

    and-int/lit16 v5, v6, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public static final SendMcuAmpAntennaState(Landroid/content/Context;II)V
    .locals 5

    const/16 v0, 0x7b

    const/4 v1, 0x4

    const/16 v2, 0x1a

    invoke-static {v1, v0, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v2

    invoke-static {v2}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v3

    int-to-byte p2, p2

    aput-byte p2, v2, v3

    invoke-static {v2}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance p2, Landroid/content/Intent;

    const-string v3, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "protocal"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p2, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p2, v2}, Lcom/android/utils/log/JLog;->print([B)V

    const/16 p2, 0x19

    invoke-static {v1, v0, p2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object p2

    invoke-static {p2}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    invoke-static {p2}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p0, p2}, Lcom/android/utils/log/JLog;->print([B)V

    return-void
.end method

.method public static enableAss(Landroid/content/Context;I)V
    .locals 3

    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x1b

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "protocal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static enableSleepPowerOff(Landroid/content/Context;I)V
    .locals 9

    const/4 v0, 0x5

    const/16 v1, 0x7b

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->isNewEnableSleepPowerOff()Z

    move-result v3

    const/16 v4, 0x48

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v3, :cond_5

    if-le p1, v7, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    add-int/lit8 v0, v2, 0x1

    aput-byte v8, v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    aput-byte v4, v1, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x30

    aput-byte v4, v1, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x18

    aput-byte v4, v1, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, 0x1

    aput-byte v7, v1, v0

    goto :goto_2

    :cond_5
    if-le p1, v7, :cond_8

    if-ne p1, v6, :cond_6

    const/16 v4, 0x24

    goto :goto_1

    :cond_6
    if-ne p1, v5, :cond_7

    goto :goto_1

    :cond_7
    if-ne p1, v0, :cond_9

    const/16 v4, 0x78

    goto :goto_1

    :cond_8
    move v8, p1

    :cond_9
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "cpu_max_working_time"

    invoke-static {v0, v3, v4}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    move v3, v8

    :goto_2
    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableSleepPowerOff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    int-to-byte p1, v3

    aput-byte p1, v1, v2

    invoke-static {v1}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "protocal"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final generateACK(BB)[B
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    aput-byte p0, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public static getFileData(Ljava/lang/String;I)[B
    .locals 8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    new-array p0, p0, [B

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    new-instance p1, Ljava/io/InputStreamReader;

    const-string v0, "utf-8"

    invoke-direct {p1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v1

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_1

    :try_start_1
    invoke-static {v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->HexToByte(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_0

    :try_start_2
    sget-object v1, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v1, p0}, Lcom/android/utils/log/JLog;->print([B)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    :cond_1
    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    move-object v3, v4

    goto :goto_0

    :cond_6
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    sget-object p1, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p1, p0}, Lcom/android/utils/log/JLog;->print([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object v1, p0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, p0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-object v1
.end method

.method public static getMcuType()I
    .locals 5

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v2, "getMcuType"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    sget-object v2, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMcuType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMcuType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v1
.end method

.method public static isNewEnableSleepPowerOff()Z
    .locals 2

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static final reboot(Lcom/nwd/kernel/aidl/IKernelFeature;)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final receive([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 5

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalType([B)B

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->receiveAudio([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataType([B)B

    move-result v1

    sget-object v2, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "datatype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseRadioAntennaState([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseAmp([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responsePanelStudyAllState([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responsePanelStudyStep([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseSpeakerSwitch([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :pswitch_5
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseCarAuxSwitch([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseCarAudioChannel([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :pswitch_7
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseRadioLightSensitivity([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :pswitch_8
    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataLength([B)I

    move-result p1

    new-array v0, p1, [B

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    invoke-static {p0, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v2}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->saveDatatoFile([BI)V

    goto :goto_0

    :pswitch_9
    invoke-interface {p1, v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetAck(BB)V

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataLength([B)I

    move-result p1

    new-array v0, p1, [B

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    invoke-static {p0, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->saveDatatoFile([BI)V

    goto :goto_0

    :pswitch_a
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseRadioSensitivity([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :pswitch_b
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseRadioModuleStyle([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :pswitch_c
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseDTvModuleStyle([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseDVRModuleStyle([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseTvModuleStyle([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseHbsData([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final receiveAudio([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataType([B)B

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseGainValue([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->responseAllGainValue([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    :goto_0
    return-void
.end method

.method public static final reset(Lcom/nwd/kernel/aidl/IKernelFeature;)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method private static final responseAllGainValue([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 4

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataLength([B)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v0

    aget-byte v2, p0, v2

    invoke-interface {p1, v3, v2}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetAudioGain(II)V

    move v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final responseAmp([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetAmp(I)V

    return-void
.end method

.method private static final responseCarAudioChannel([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetCarAudioChannel(I)V

    return-void
.end method

.method private static final responseCarAuxSwitch([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetCarAuxState(I)V

    return-void
.end method

.method private static final responseDTvModuleStyle([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTv module style = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetDTvModuleStyle(B)V

    return-void
.end method

.method private static final responseDVRModuleStyle([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tv module style = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetDVRModuleStyle(B)V

    return-void
.end method

.method private static final responseGainValue([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte p0, p0, v0

    invoke-interface {p1, v1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetAudioGain(II)V

    return-void
.end method

.method private static final responseHbsData([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 4

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataLength([B)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1, v2}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetHbsFactoryInfo([B)V

    return-void
.end method

.method private static final responsePanelStudyAllState([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 4

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataLength([B)I

    move-result v0

    new-array v1, v0, [B

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetPanelStudyAllState([B)V

    return-void
.end method

.method private static final responsePanelStudyStep([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetPanelStudyStep(I)V

    return-void
.end method

.method private static final responseRadioAntennaState([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetRadioAntennaState(I)V

    return-void
.end method

.method private static final responseRadioLightSensitivity([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Radio lightsensitivity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetRadioLightSensitivity(B)V

    return-void
.end method

.method private static final responseRadioModuleStyle([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Radio module style = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetRadioModuleStyle(B)V

    return-void
.end method

.method private static final responseRadioSensitivity([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataLength([B)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-byte v1, p0, v0

    add-int/2addr v0, v2

    aget-byte p0, p0, v0

    invoke-interface {p1, v1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetRadioSensitivity(BB)V

    goto :goto_0

    :cond_0
    aget-byte p0, p0, v0

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetRadioSensitivity(BB)V

    :goto_0
    sget-object p1, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Radio sensitivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static final responseSpeakerSwitch([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetSpeakerState(I)V

    return-void
.end method

.method private static final responseTvModuleStyle([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tv module style = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;->onGetTvModuleStyle(B)V

    return-void
.end method

.method public static final save(Lcom/nwd/kernel/aidl/IKernelFeature;)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method private static saveDatatoFile([BI)V
    .locals 4

    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print([B)V

    sget-object v0, Lcom/nwd/kernel/utils/KernelConstant;->EXTERNAL_DEVICE_PATHS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    sget-object v2, Lcom/nwd/kernel/utils/KernelConstant;->EXTERNAL_DEVICE_PATHS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/nwd/kernel/utils/KernelConstant;->EXTERNAL_DEVICE_PATHS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/nwd/kernel/utils/KernelConstant;->EXTERNAL_DEVICE_PATHS:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, ".txt"

    const-string v2, "yyyyMMddhhmmss"

    if-nez p1, :cond_2

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65b9\u5411\u76d8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/fxp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/fxp/"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9762\u677f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/panel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/panel/"

    goto :goto_2

    :cond_3
    :goto_3
    sget-object p1, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public static final sendAck(Lcom/nwd/kernel/aidl/IKernelFeature;II)V
    .locals 0

    int-to-byte p1, p1

    int-to-byte p2, p2

    invoke-static {p1, p2}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->generateACK(BB)[B

    move-result-object p1

    invoke-static {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final sendHbsData(Lcom/nwd/kernel/aidl/IKernelFeature;[B)V
    .locals 4

    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x7b

    invoke-static {v0, v2, v1}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final sendPanelStudyKey(Lcom/nwd/kernel/aidl/IKernelFeature;I)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method private static final sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V
    .locals 0

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    :try_start_0
    invoke-interface {p1, p0}, Lcom/nwd/kernel/aidl/IKernelFeature;->request([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static final setAmpState(Lcom/nwd/kernel/aidl/IKernelFeature;I)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final setAreaIndex(Lcom/nwd/kernel/aidl/IKernelFeature;B)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0xe

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final setCarAudioChannel(Lcom/nwd/kernel/aidl/IKernelFeature;I)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final setCarAuxSwitch(Lcom/nwd/kernel/aidl/IKernelFeature;I)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final setDTvModuleStyle(Lcom/nwd/kernel/aidl/IKernelFeature;B)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final setDVRModuleStyle(Lcom/nwd/kernel/aidl/IKernelFeature;B)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0x7b

    invoke-static {v0, v1, v0}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static setFxpTolerance(Landroid/content/Context;I)V
    .locals 3

    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFxpTolerance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "protocal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final setFxpType(Lcom/nwd/kernel/aidl/IKernelFeature;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1, v2}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->getFileData(Ljava/lang/String;I)[B

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFxpType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    array-length p1, v0

    add-int/lit8 p1, p1, 0x3

    const/16 v1, 0x7b

    const/16 v3, 0x9

    invoke-static {p1, v1, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object p1

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    array-length v3, v0

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    const-wide/16 p0, 0x1f4

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final setFxpTypeEx(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/fxp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1, v2}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->getFileData(Ljava/lang/String;I)[B

    move-result-object v0

    :cond_1
    sget-object v1, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFxpTypeEx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    array-length p1, v0

    add-int/lit8 p1, p1, 0x3

    const/16 v1, 0x7b

    const/16 v3, 0x9

    invoke-static {p1, v1, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object p1

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    array-length v3, v0

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "protocal"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print([B)V

    :cond_2
    return-void
.end method

.method public static final setGainValue(Lcom/nwd/kernel/aidl/IKernelFeature;II)V
    .locals 3

    const/4 v0, 0x5

    const/16 v1, 0xd

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final setHbsFactorySetting(Landroid/content/Context;Lcom/nwd/kernel/aidl/IKernelFeature;)V
    .locals 4

    invoke-static {p0}, Lcom/nwd/factory/HbsFactorySettingUtil;->getHbsFactorySettingData(Landroid/content/Context;)[B

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {v0, v2, v1}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    array-length v3, p0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static setIpsDelayTime(Landroid/content/Context;I)V
    .locals 3

    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIpsDelayTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    div-int/lit8 p1, p1, 0x64

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "protocal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setLowVoltageTime(Landroid/content/Context;I)V
    .locals 3

    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLowVoltageTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    div-int/lit8 p1, p1, 0x64

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "protocal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final setMcuDefaultValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->getFileData(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v1, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMcuDefaultValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    new-instance p1, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {p1}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    const/4 v1, -0x1

    const-string v2, "default_radio_area"

    invoke-virtual {p1, v2, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v1, :cond_0

    int-to-byte v1, v2

    aput-byte v1, v0, v3

    sget-object v1, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update default radio area "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->release()V

    array-length p1, v0

    add-int/2addr p1, v3

    const/16 v1, 0x7b

    const/16 v2, 0x14

    invoke-static {p1, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object p1

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "protocal"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print([B)V

    :cond_1
    return-void
.end method

.method public static final setMcuDefaultValue(Lcom/android/utils/uart/UartCommunication;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->getFileData(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v1, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMcuDefaultValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    :try_start_0
    array-length p1, v0

    add-int/lit8 p1, p1, 0x3

    const/16 v1, 0x7b

    const/16 v2, 0x14

    invoke-static {p1, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object p1

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    invoke-virtual {p0, p1}, Lcom/android/utils/uart/UartCommunication;->writeData([B)V

    sget-object p0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final setPanelType(Lcom/nwd/kernel/aidl/IKernelFeature;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x96

    const/4 v5, 0x1

    cmp-long v6, v0, v3

    if-lez v6, :cond_0

    invoke-static {p1, v5}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->getFileData(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v2}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->getFileData(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->getMcuType()I

    move-result v1

    if-ne v1, v5, :cond_2

    const/16 v1, 0xd

    new-array v3, v1, [B

    const/16 v4, 0x66

    invoke-static {v0, v4, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    sget-object v1, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPanelType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    array-length p1, v0

    add-int/lit8 p1, p1, 0x3

    const/16 v1, 0x7b

    const/16 v3, 0xa

    invoke-static {p1, v1, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object p1

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    array-length v3, v0

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    sget-object p0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print([B)V

    const-wide/16 p0, 0x1f4

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public static final setPanelTypeEx(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/panel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x96

    const/4 v2, 0x1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    invoke-static {p1, v2}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->getFileData(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->getFileData(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_0
    move-object v1, v0

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->getMcuType()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/16 v0, 0xd

    new-array v2, v0, [B

    const/16 v4, 0x66

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    :cond_2
    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPanelTypeEx="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    array-length p1, v1

    add-int/lit8 p1, p1, 0x3

    const/16 v0, 0x7b

    const/16 v2, 0xa

    invoke-static {p1, v0, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object p1

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    array-length v2, v1

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "protocal"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print([B)V

    :cond_3
    return-void
.end method

.method public static final setRadioAntennaState(Lcom/nwd/kernel/aidl/IKernelFeature;I)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x1a

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final setRadioLightSensitivity(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    if-lez p1, :cond_0

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    or-int/lit16 p1, p1, 0x80

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

.method public static final setRadioLightSensitivity(Lcom/nwd/kernel/aidl/IKernelFeature;B)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final setRadioModuleStyle(Lcom/nwd/kernel/aidl/IKernelFeature;B)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final setRadioSensitivity(Landroid/content/Context;II)V
    .locals 3

    const/4 v0, 0x5

    const/16 v1, 0x7b

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    if-lez p2, :cond_0

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    :goto_0
    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "protocal"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final setRadioSensitivity(Lcom/nwd/kernel/aidl/IKernelFeature;BB)V
    .locals 3

    const/4 v0, 0x5

    const/16 v1, 0x7b

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput-byte p2, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final setRemoteControlType(Lcom/nwd/kernel/aidl/IKernelFeature;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->getFileData(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v1, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteControlType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    array-length p1, v0

    add-int/lit8 p1, p1, 0x3

    const/16 v1, 0x7b

    const/16 v2, 0xf

    invoke-static {p1, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object p1

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    sget-object p0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print([B)V

    const-wide/16 p0, 0x1f4

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final setRemoteTypeEx(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/remote_control/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->getFileData(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v1, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteTypeEx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    array-length p1, v0

    add-int/lit8 p1, p1, 0x3

    const/16 v1, 0x7b

    const/16 v2, 0xf

    invoke-static {p1, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object p1

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "protocal"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print([B)V

    :cond_1
    return-void
.end method

.method public static final setSpeakerSwitch(Lcom/nwd/kernel/aidl/IKernelFeature;I)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final setTurbineState(Lcom/nwd/kernel/aidl/IKernelFeature;I)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static setTvAudioChannel(Landroid/content/Context;I)V
    .locals 3

    sget-object v0, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTvAudioChannel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x22

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "protocal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final setTvModuleStyle(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.nwd.action.EMU_SEND_DATA_TO_MCU"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "protocal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final setTvModuleStyle(Lcom/nwd/kernel/aidl/IKernelFeature;B)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final startAudioQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public static final startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput-byte p1, v0, v1

    invoke-static {v0, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendProtocal([BLcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method
