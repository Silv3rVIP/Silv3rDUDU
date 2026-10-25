.class public final Lcom/nwd/factory/service/ActionProtocalUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/factory/service/ActionProtocalUtil$IActionProtocalCallback;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static final PANEL_AD_VALUE:B = 0x10t


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "ActionProtocalUtil"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/factory/service/ActionProtocalUtil;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final receive([BLcom/nwd/factory/service/ActionProtocalUtil$IActionProtocalCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalType([B)B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataType([B)B

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/nwd/factory/service/ActionProtocalUtil;->responseAdValue([BLcom/nwd/factory/service/ActionProtocalUtil$IActionProtocalCallback;)V

    :goto_0
    return-void
.end method

.method private static final responseAdValue([BLcom/nwd/factory/service/ActionProtocalUtil$IActionProtocalCallback;)V
    .locals 5

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataLength([B)I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    add-int v4, v0, v3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Lcom/nwd/factory/service/ActionProtocalUtil$IActionProtocalCallback;->onGetPanelAdValue([I)V

    return-void
.end method
