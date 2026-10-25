.class public Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;
    }
.end annotation


# static fields
.field private static final DATATYPE_ACTION_BACKLIGHT_SWITCH:B = 0x5t

.field private static final DATATYPE_ACTION_BEEP:B = 0x4t

.field private static final DATATYPE_ACTION_CHANGE_SOURCE:B = 0x3t

.field public static final DATATYPE_ACTION_DEVICE_ROTATE:B = 0x13t

.field private static final DATATYPE_ACTION_KEYSTATUS:B = 0x1t

.field private static final DATATYPE_ACTION_MUTE:B = 0x2t

.field public static final DATATYPE_ACTION_REQUEST_BACK_ANDROID:B = 0x6t

.field private static final DATATYPE_ACTION_REQUEST_POP_SOURCE:B = 0x7t

.field private static final DATATYPE_ACTION_REQUEST_RESET:B = 0x8t

.field private static final DATATYPE_ACTION_TOUCH_COORDINATE:B = 0x0t

.field private static final DATATYPE_ACTION_VOLUME_STATE:B = 0x2t

.field private static final LOG:Lcom/android/utils/log/JLog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "ActionProtocalUtil"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final generateARMVolumeState(I)[B
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    return-object v0
.end method

.method public static final generateTouchCoordinate(BII)[B
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    aput-byte p0, v0, v1

    add-int/lit8 p0, v1, 0x1

    const/4 v2, 0x2

    invoke-static {p1, v0, p0, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->int2byte(I[BII)V

    add-int/lit8 v1, v1, 0x3

    invoke-static {p2, v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->int2byte(I[BII)V

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    return-object v0
.end method

.method public static final receive([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataType([B)B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->responseDeviceRotateState([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->responsePopSource([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->responseRequestBackAndroid([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->responseBackLightSwitch([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->responseChangeSourceStatus([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V

    goto :goto_0

    :cond_5
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->responseMuteState([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V

    goto :goto_0

    :cond_6
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->responseKeyStatus([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V

    :goto_0
    return-void
.end method

.method public static final requestChangeSource(Lcom/android/utils/uart/UartCommunication;BBLcom/nwd/kernel/utils/AckHelper;)[B
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v2

    invoke-static {v2}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v3

    aput-byte p2, v2, v3

    add-int/2addr v3, v1

    aput-byte p1, v2, v3

    if-eqz p3, :cond_0

    invoke-virtual {p3, v1, v0}, Lcom/nwd/kernel/utils/AckHelper;->checkHaveReceiveAck(BB)V

    invoke-virtual {p3, v2}, Lcom/nwd/kernel/utils/AckHelper;->needReceiveAck([B)V

    :cond_0
    invoke-static {p0, v2}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V

    return-object v2
.end method

.method public static final requestDeviceRotate(Lcom/android/utils/uart/UartCommunication;B)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    aput-byte p1, v0, v1

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V

    return-void
.end method

.method public static final requestReset(Lcom/android/utils/uart/UartCommunication;I)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V

    return-void
.end method

.method public static final requestSendKey(Lcom/android/utils/uart/UartCommunication;BB)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-static {v1, v0, v0}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    aput-byte p2, v1, v2

    add-int/2addr v2, v0

    aput-byte p1, v1, v2

    invoke-static {p0, v1}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V

    return-void
.end method

.method private static final responseBackLightSwitch([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V
    .locals 4

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    sget-object v1, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "back light switch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;->notifyBackLightSwitch(B)V

    return-void
.end method

.method private static responseChangeSourceStatus([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V
    .locals 5

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte v1, p0, v0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    add-int/lit8 v0, v0, 0x2

    aget-byte p0, p0, v0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object p0, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseChangeSourceStatus#sourceType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",sourceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",isSuccess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-interface {p1, v1, v2, v0}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;->notifyChangeSourceStatus(BBZ)V

    return-void
.end method

.method private static final responseDeviceRotateState([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;->notifyDeviceRotateState(B)V

    return-void
.end method

.method private static responseKeyStatus([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V
    .locals 5

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte v1, p0, v0

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    aget-byte p0, p0, v0

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget v0, Lcom/nwd/kernel/utils/NwdConfig;->mSpecialFxp:I

    const/4 v4, 0x2

    if-ne v0, v3, :cond_1

    if-ne v1, v4, :cond_1

    const/16 v0, 0xa

    if-ne v2, v0, :cond_1

    invoke-static {}, Lcom/nwd/factory/service/HardwareUtils;->getExt360ViewState()I

    move-result v0

    if-eq v0, v3, :cond_1

    const/4 v2, 0x2

    :cond_1
    sget-object v0, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseKeyStatus#keyType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",keyValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",isLongClick="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-interface {p1, v1, v2, p0}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;->notifyKeyPress(BBZ)V

    return-void
.end method

.method private static responseMuteState([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;->notifyMuteState(B)V

    return-void
.end method

.method private static final responsePopSource([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V
    .locals 4

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    sget-object v1, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcu request pop source,state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    aget-byte p0, p0, v0

    invoke-interface {p1, p0}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;->notifyPopSource(B)V

    return-void
.end method

.method private static final responseRequestBackAndroid([BLcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;)V
    .locals 0

    sget-object p0, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string p1, "mcu request change source to android"

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method
