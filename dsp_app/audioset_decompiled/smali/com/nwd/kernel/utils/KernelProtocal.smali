.class public Lcom/nwd/kernel/utils/KernelProtocal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/utils/uart/IUartProtocal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/kernel/utils/KernelProtocal$IUartErrorCallback;
    }
.end annotation


# static fields
.field public static final CHECK_BAD_PROTOCAL:I = -0x2

.field public static final CHECK_COMPLETE:I = 0x1

.field public static final CHECK_UNCOMPLETE:I = -0x1

.field public static final DEBUG:Z = false

.field public static final HEADCODE:B = -0x10t

.field private static final LOG:Lcom/android/utils/log/JLog;

.field public static final TYPE_ACTION:B = 0x1t

.field public static final TYPE_ARM_UPGRADE:B = 0x6ft

.field public static final TYPE_AUDIO:B = 0xdt

.field public static final TYPE_AUX:B = 0x7t

.field public static final TYPE_BACKGROUND:B = 0xbt

.field public static final TYPE_BT:B = 0x12t

.field public static final TYPE_CAMERA:B = 0x8t

.field public static final TYPE_CANBUS:B = 0x11t

.field public static final TYPE_CDC:B = 0x9t

.field public static final TYPE_DAMB:B = 0xat

.field public static final TYPE_DISPLAY_DRIVER_UPDATE:B = 0x17t

.field public static final TYPE_DVD:B = 0x4t

.field public static final TYPE_DVR:B = 0x15t

.field public static final TYPE_FACTORY:B = 0x7bt

.field public static final TYPE_FM:B = 0x3t

.field public static final TYPE_INIT:B = 0x2t

.field public static final TYPE_IPOD:B = 0x5t

.field public static final TYPE_MCU_CONFIG_UPDATE:B = 0x18t

.field public static final TYPE_MCU_PASSTHROUGH:B = 0x20t

.field public static final TYPE_MCU_UPGRADE:B = 0x7at

.field public static final TYPE_MHL:B = 0x14t

.field public static final TYPE_MP5:B = 0x16t

.field public static final TYPE_PUBLIC:B = 0x0t

.field public static final TYPE_RADAR:B = 0xft

.field public static final TYPE_SETTING:B = 0xet

.field public static final TYPE_TPMS:B = 0xct

.field public static final TYPE_TV:B = 0x6t

.field public static final TYPE_VIRTUAL_DISK:B = 0x10t


# instance fields
.field private mCallback:Lcom/nwd/kernel/utils/KernelProtocal$IUartErrorCallback;

.field private mErrorCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "KernelProtocal"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/kernel/utils/KernelProtocal;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final byte2int([BII)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    :cond_0
    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final calCheckSum([BII)B
    .locals 2

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p2, -0x1

    if-ge p1, v1, :cond_0

    aget-byte v1, p0, p1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final calCheckSumAndWriteEndOfData([B)V
    .locals 3

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSum([BII)B

    move-result v1

    aput-byte v1, p0, v0

    return-void
.end method

.method public static final generateNullProtocal(IBB)[B
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xfa

    if-le p0, v2, :cond_0

    add-int/lit8 v2, p0, 0x5

    new-array v2, v2, [B

    aput-byte v0, v2, v1

    const/4 v1, 0x2

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p0, 0x3

    new-array v2, v2, [B

    int-to-byte p0, p0

    aput-byte p0, v2, v1

    :goto_0
    const/16 p0, -0x10

    aput-byte p0, v2, v0

    invoke-static {p1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->setProtocalType(B[B)V

    invoke-static {p2, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->setProtocalDataType(B[B)V

    return-object v2
.end method

.method public static final getProtocalDataLength([B)I
    .locals 0

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalLength([B)I

    move-result p0

    add-int/lit8 p0, p0, -0x3

    return p0
.end method

.method public static final getProtocalDataStartOffset([B)B
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public static final getProtocalDataType([B)B
    .locals 1

    const/4 v0, 0x3

    aget-byte p0, p0, v0

    return p0
.end method

.method public static final getProtocalLength([B)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/nwd/kernel/utils/KernelProtocal;->byte2int([BII)I

    move-result p0

    return p0
.end method

.method public static final getProtocalType([B)B
    .locals 1

    const/4 v0, 0x2

    aget-byte p0, p0, v0

    return p0
.end method

.method public static final getString([BII)Ljava/lang/String;
    .locals 3

    aget-byte v0, p0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string v0, "GBK"

    goto :goto_0

    :cond_0
    const-string v0, "UTF-8"

    goto :goto_0

    :cond_1
    const-string v0, "UTF16-BE"

    goto :goto_0

    :cond_2
    const-string v0, "UTF16-LE"

    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/2addr p1, v1

    sub-int/2addr p2, v1

    invoke-direct {v2, p0, p1, p2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v2, ""

    :goto_1
    return-object v2
.end method

.method public static final int2byte(I[BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final setProtocalDataType(B[B)V
    .locals 1

    const/4 v0, 0x3

    aput-byte p0, p1, v0

    return-void
.end method

.method public static final setProtocalType(B[B)V
    .locals 1

    const/4 v0, 0x2

    aput-byte p0, p1, v0

    return-void
.end method


# virtual methods
.method public final checkCompleteProtocal([BII)I
    .locals 6

    aget-byte v0, p1, p2

    const/4 v1, -0x2

    const/16 v2, -0x10

    if-ne v0, v2, :cond_7

    const/4 v0, 0x6

    if-lt p3, v0, :cond_6

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalLength([B)I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    const/16 v5, 0xfa

    if-le v0, v5, :cond_0

    goto :goto_1

    :cond_0
    if-gt v0, v5, :cond_2

    add-int/lit8 v5, p3, -0x3

    if-ne v0, v5, :cond_2

    add-int v0, p2, p3

    sub-int/2addr v0, v4

    aget-byte v0, p1, v0

    invoke-static {p1, p2, p3}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSum([BII)B

    move-result p1

    if-ne v0, p1, :cond_1

    iput v3, p0, Lcom/nwd/kernel/utils/KernelProtocal;->mErrorCount:I

    return v4

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x3

    if-gt v0, p1, :cond_6

    iget p1, p0, Lcom/nwd/kernel/utils/KernelProtocal;->mErrorCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/nwd/kernel/utils/KernelProtocal;->mErrorCount:I

    if-lt p1, v2, :cond_3

    iget-object p1, p0, Lcom/nwd/kernel/utils/KernelProtocal;->mCallback:Lcom/nwd/kernel/utils/KernelProtocal$IUartErrorCallback;

    if-eqz p1, :cond_3

    :goto_0
    iput v3, p0, Lcom/nwd/kernel/utils/KernelProtocal;->mErrorCount:I

    invoke-interface {p1}, Lcom/nwd/kernel/utils/KernelProtocal$IUartErrorCallback;->notifyProtocalError()V

    return v4

    :cond_3
    return v1

    :cond_4
    :goto_1
    iget p1, p0, Lcom/nwd/kernel/utils/KernelProtocal;->mErrorCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/nwd/kernel/utils/KernelProtocal;->mErrorCount:I

    if-lt p1, v2, :cond_5

    iget-object p1, p0, Lcom/nwd/kernel/utils/KernelProtocal;->mCallback:Lcom/nwd/kernel/utils/KernelProtocal$IUartErrorCallback;

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    const/4 p1, -0x1

    return p1

    :cond_7
    return v1
.end method

.method public setErrorCallback(Lcom/nwd/kernel/utils/KernelProtocal$IUartErrorCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/kernel/utils/KernelProtocal;->mCallback:Lcom/nwd/kernel/utils/KernelProtocal$IUartErrorCallback;

    return-void
.end method
