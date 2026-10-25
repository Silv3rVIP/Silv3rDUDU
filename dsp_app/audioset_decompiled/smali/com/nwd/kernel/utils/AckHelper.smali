.class public Lcom/nwd/kernel/utils/AckHelper;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_CHECK_TIME:I = 0xbb8

.field public static final LOG:Lcom/android/utils/log/JLog;

.field private static final MSG_SEND_PROTOCAL:I

.field private static final RESPONSE_ACK_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final SEND_ACK_PROTOCAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private static instance:Lcom/nwd/kernel/utils/AckHelper;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mUartCommunication:Lcom/android/utils/uart/ICommunicator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "AckHelper"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/kernel/utils/AckHelper;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nwd/kernel/utils/AckHelper;->RESPONSE_ACK_TYPE:Ljava/util/Map;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/nwd/kernel/utils/AckHelper;->SEND_ACK_PROTOCAL:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/android/utils/uart/ICommunicator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nwd/kernel/utils/AckHelper$1;

    invoke-direct {v0, p0}, Lcom/nwd/kernel/utils/AckHelper$1;-><init>(Lcom/nwd/kernel/utils/AckHelper;)V

    iput-object v0, p0, Lcom/nwd/kernel/utils/AckHelper;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/nwd/kernel/utils/AckHelper;->mUartCommunication:Lcom/android/utils/uart/ICommunicator;

    invoke-direct {p0}, Lcom/nwd/kernel/utils/AckHelper;->initACK()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/nwd/kernel/utils/AckHelper;->SEND_ACK_PROTOCAL:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nwd/kernel/utils/AckHelper;)Lcom/android/utils/uart/ICommunicator;
    .locals 0

    iget-object p0, p0, Lcom/nwd/kernel/utils/AckHelper;->mUartCommunication:Lcom/android/utils/uart/ICommunicator;

    return-object p0
.end method

.method public static final getInstance(Lcom/android/utils/uart/ICommunicator;)Lcom/nwd/kernel/utils/AckHelper;
    .locals 1

    sget-object v0, Lcom/nwd/kernel/utils/AckHelper;->instance:Lcom/nwd/kernel/utils/AckHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nwd/kernel/utils/AckHelper;

    invoke-direct {v0, p0}, Lcom/nwd/kernel/utils/AckHelper;-><init>(Lcom/android/utils/uart/ICommunicator;)V

    sput-object v0, Lcom/nwd/kernel/utils/AckHelper;->instance:Lcom/nwd/kernel/utils/AckHelper;

    :cond_0
    sget-object p0, Lcom/nwd/kernel/utils/AckHelper;->instance:Lcom/nwd/kernel/utils/AckHelper;

    return-object p0
.end method

.method private initACK()V
    .locals 6

    sget-object v0, Lcom/nwd/kernel/utils/AckHelper;->RESPONSE_ACK_TYPE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/nwd/kernel/utils/AckHelper;->RESPONSE_ACK_TYPE:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/kernel/utils/AckHelper;->RESPONSE_ACK_TYPE:Ljava/util/Map;

    const/16 v2, 0x7b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/16 v5, 0x15

    aput-byte v5, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/kernel/utils/AckHelper;->RESPONSE_ACK_TYPE:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    new-array v3, v3, [B

    const/16 v4, 0x13

    aput-byte v4, v3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 1
        0x3t
        0xct
        0x0t
        0x5t
        0x1t
        0x19t
        0x20t
    .end array-data
.end method


# virtual methods
.method public checkHaveReceiveAck(BB)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget-object v1, Lcom/nwd/kernel/utils/AckHelper;->SEND_ACK_PROTOCAL:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/nwd/kernel/utils/AckHelper;->SEND_ACK_PROTOCAL:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalType([B)B

    move-result v1

    sget-object v2, Lcom/nwd/kernel/utils/AckHelper;->SEND_ACK_PROTOCAL:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataType([B)B

    move-result v2

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    sget-object v1, Lcom/nwd/kernel/utils/AckHelper;->SEND_ACK_PROTOCAL:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public checkNeedResponseAck(BB)V
    .locals 4

    sget-object v0, Lcom/nwd/kernel/utils/AckHelper;->RESPONSE_ACK_TYPE:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nwd/kernel/utils/AckHelper;->RESPONSE_ACK_TYPE:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-byte v2, v0, v1

    if-ne v2, p2, :cond_0

    invoke-static {p1, p2}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->generateACK(BB)[B

    move-result-object v2

    iget-object v3, p0, Lcom/nwd/kernel/utils/AckHelper;->mUartCommunication:Lcom/android/utils/uart/ICommunicator;

    invoke-static {v3, v2}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public needReceiveAck([B)V
    .locals 6

    :try_start_0
    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalType([B)B

    move-result v0

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataType([B)B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/nwd/kernel/utils/AckHelper;->SEND_ACK_PROTOCAL:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    sget-object v4, Lcom/nwd/kernel/utils/AckHelper;->SEND_ACK_PROTOCAL:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalType([B)B

    move-result v4

    sget-object v5, Lcom/nwd/kernel/utils/AckHelper;->SEND_ACK_PROTOCAL:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataType([B)B

    move-result v5

    if-ne v0, v4, :cond_0

    if-ne v1, v5, :cond_0

    sget-object v0, Lcom/nwd/kernel/utils/AckHelper;->SEND_ACK_PROTOCAL:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/nwd/kernel/utils/AckHelper;->SEND_ACK_PROTOCAL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/nwd/kernel/utils/AckHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/nwd/kernel/utils/AckHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setUartCommunication(Lcom/android/utils/uart/ICommunicator;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/kernel/utils/AckHelper;->mUartCommunication:Lcom/android/utils/uart/ICommunicator;

    return-void
.end method
