.class public Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;
    }
.end annotation


# static fields
.field public static final DATATYPE_AUTO_TIME_WAKE:B = 0x20t

.field public static final DATATYPE_AUTO_WAKE_ENABLE:B = 0x21t

.field public static final DATATYPE_IAP_VERSION:B = 0x24t

.field private static final DATATYPE_MCU_TIME:B = 0x10t

.field private static final DATATYPE_PUBLIC_ACK:B = 0xft

.field public static final DATATYPE_PUBLIC_BACKCARSTATUS:B = 0x5t

.field public static final DATATYPE_PUBLIC_BOOTCOMPLETE:B = 0x0t

.field public static final DATATYPE_PUBLIC_CURRENT_CONTROLLER:B = 0xct

.field public static final DATATYPE_PUBLIC_DEVICESTATUS:B = 0x3t

.field public static final DATATYPE_PUBLIC_DVD_VERSION:B = 0x14t

.field private static final DATATYPE_PUBLIC_HAND_BRAKE:B = 0x4t

.field private static final DATATYPE_PUBLIC_LIGHT:B = 0x6t

.field public static final DATATYPE_PUBLIC_MCU_VERSION:B = 0x1t

.field private static final DATATYPE_PUBLIC_VIDEO_SINGAL:B = 0x7t

.field public static final DATATYPE_SOFTWARE_MODE:B = 0x1dt

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static final MCU_VIDEO_STATE:B = 0x11t

.field private static final OS_SLEEP_STATE:B = 0x16t

.field private static final OS_VOLUME_STATE:B = 0x18t

.field private static final QUERY_INFO:B = 0x13t

.field public static final VOLTAGE_DETECT:B = 0x19t


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const/4 v1, 0x3

    const-string v2, "PublicProtocalUtil"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZII)V

    sput-object v0, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDeviceStatus([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/nwd/kernel/utils/KernelProtocal;->byte2int([BII)I

    move-result v2

    add-int/2addr v0, v1

    invoke-static {p0, v0, v1}, Lcom/nwd/kernel/utils/KernelProtocal;->byte2int([BII)I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v2

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetDeviceState(I)V

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

.method private static final getDVDVersion([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 4

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataLength([B)I

    move-result v1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "iso-8859-1"

    invoke-direct {v2, p0, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v2, ""

    :goto_0
    invoke-interface {p1, v2}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetDVDVersion(Ljava/lang/String;)V

    sget-object p0, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dvd version = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static final getIAPVersion([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 4

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataLength([B)I

    move-result v1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "iso-8859-1"

    invoke-direct {v2, p0, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v2, ""

    :goto_0
    sget-object p0, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iap version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetIAPVersion(Ljava/lang/String;)V

    return-void
.end method

.method private static final getMCUBackCarState([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetBackcarState(B)V

    return-void
.end method

.method private static final getMCUBrakeState([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetHandBrakeState(B)V

    sget-object p1, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hand break state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static final getMCULightState([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetLightState(B)V

    return-void
.end method

.method private static final getMCUState([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 4

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte p0, p0, v0

    sget-object v0, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcu state change,now state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",default source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-interface {p1, v1, p0}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetMcuState(BB)V

    return-void
.end method

.method private static final getMCUVersion([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 4

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataLength([B)I

    move-result v1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "iso-8859-1"

    invoke-direct {v2, p0, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v2, ""

    :goto_0
    sget-object p0, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcu version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetMcuVersion(Ljava/lang/String;)V

    return-void
.end method

.method private static final getMCUVideoSingal([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetVideoSingal(B)V

    return-void
.end method

.method public static final queryInfo(Lcom/android/utils/uart/UartCommunication;II)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V

    return-void
.end method

.method public static final receive([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataType([B)B

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_9

    const/16 v1, 0xc

    if-eq v0, v1, :cond_8

    const/16 v1, 0x14

    if-eq v0, v1, :cond_7

    const/16 v1, 0x16

    if-eq v0, v1, :cond_6

    const/16 v1, 0x19

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x24

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->responseMcuTimeProtocal([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->responseAck([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->getIAPVersion([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->responseAutoTimeWake([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->responseMcuSoftwareMode([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_5
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->responseVoltageDetect([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_6
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->responseOsSleep([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_7
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->getDVDVersion([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_8
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->responseCurrentController([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_9
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->getMCUVideoSingal([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_a
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->getMCULightState([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_b
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->getMCUBackCarState([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_c
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->getMCUBrakeState([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_d
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->checkDeviceStatus([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_e
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->getMCUVersion([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    goto :goto_0

    :cond_f
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->getMCUState([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V

    :goto_0
    return-void
.end method

.method public static final requestBootComplete(Lcom/android/utils/uart/UartCommunication;B)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v1, v0, v0}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    aput-byte p1, v0, v1

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V

    return-void
.end method

.method public static final requestEnableAutoTimeWake(Lcom/android/utils/uart/UartCommunication;I)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V

    return-void
.end method

.method public static final requestMcuVersion(Lcom/android/utils/uart/UartCommunication;)V
    .locals 3

    sget-object v0, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "requestMcuVersion"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/16 v2, 0x13

    invoke-static {v1, v0, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    add-int/2addr v2, v0

    aput-byte v0, v1, v2

    invoke-static {p0, v1}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V

    return-void
.end method

.method public static final requestSendOsSleepState(Lcom/android/utils/uart/UartCommunication;BLcom/nwd/kernel/utils/AckHelper;)V
    .locals 3

    sget-object v0, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send os sleep state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    aput-byte p1, v0, v1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/nwd/kernel/utils/AckHelper;->needReceiveAck([B)V

    :cond_0
    invoke-static {p0, v0}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V

    return-void
.end method

.method public static final requestSendOsVolumeState(Lcom/android/utils/uart/UartCommunication;ILcom/nwd/kernel/utils/AckHelper;)V
    .locals 3

    sget-object v0, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send os volume state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x18

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/nwd/kernel/utils/AckHelper;->needReceiveAck([B)V

    :cond_0
    invoke-static {p0, v0}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V

    return-void
.end method

.method public static final requestSetCanTranslateVideo2MCU(Lcom/android/utils/uart/UartCommunication;Z)V
    .locals 3

    sget-object v0, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetCanTranslateVideo2MCU = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V

    return-void
.end method

.method private static final responseAck([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 4

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte p0, p0, v0

    sget-object v0, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseAck,type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",datatype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-interface {p1, v1, p0}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetAck(BB)V

    return-void
.end method

.method private static final responseAutoTimeWake([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetAutoTimeWake(B)V

    return-void
.end method

.method private static final responseCurrentController([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetCurrentControl(B)V

    return-void
.end method

.method private static final responseMcuSoftwareMode([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetSoftwareMode(B)V

    return-void
.end method

.method private static final responseMcuTimeProtocal([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 9

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte v2, p0, v0

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p0, v1

    add-int/lit8 v1, v0, 0x2

    aget-byte v4, p0, v1

    add-int/lit8 v1, v0, 0x3

    aget-byte v5, p0, v1

    add-int/lit8 v1, v0, 0x4

    aget-byte v6, p0, v1

    add-int/lit8 v1, v0, 0x5

    aget-byte v7, p0, v1

    add-int/lit8 v0, v0, 0x6

    aget-byte p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v8, 0x0

    :goto_0
    sget-object p0, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",12/24 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetMcuTime(BBBBBBZ)V

    return-void
.end method

.method private static final responseOsSleep([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    sget-object v0, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "os sleep state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetOsSleepState(B)V

    return-void
.end method

.method private static final responseVoltageDetect([BLcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil$PublicProtocalCallback;->onGetVoltageDetect(B)V

    return-void
.end method

.method public static final sendACK(Lcom/android/utils/uart/UartCommunication;BB)V
    .locals 0

    invoke-static {p1, p2}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->generateACK(BB)[B

    move-result-object p1

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    invoke-static {p0, p1}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V

    return-void
.end method
