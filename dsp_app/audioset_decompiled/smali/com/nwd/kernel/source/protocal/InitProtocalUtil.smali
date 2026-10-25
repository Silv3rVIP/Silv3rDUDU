.class public Lcom/nwd/kernel/source/protocal/InitProtocalUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/kernel/source/protocal/InitProtocalUtil$InitProtocalCallback;
    }
.end annotation


# static fields
.field private static final DATATYPE_INIT_EEPROM:B = 0x1t

.field private static final DATATYPE_INIT_PUBLIC:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final generateEepromInfo([B)[B
    .locals 4

    const/16 v0, 0x21

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    return-object v0
.end method

.method private static final initEEPROMInfo([BLcom/nwd/kernel/source/protocal/InitProtocalUtil$InitProtocalCallback;)V
    .locals 4

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataLength([B)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1, v2}, Lcom/nwd/kernel/source/protocal/InitProtocalUtil$InitProtocalCallback;->onGetEepromData([B)V

    return-void
.end method

.method private static final initPublicInfo(Landroid/content/ContentResolver;[BLcom/nwd/kernel/source/protocal/InitProtocalUtil$InitProtocalCallback;)V
    .locals 1

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/nwd/kernel/source/MCUSettings;->initAllPublicSetting(Landroid/content/ContentResolver;[BI)V

    invoke-interface {p2}, Lcom/nwd/kernel/source/protocal/InitProtocalUtil$InitProtocalCallback;->onInitPublicFinish()V

    return-void
.end method

.method public static final receive([BLcom/nwd/kernel/source/protocal/InitProtocalUtil$InitProtocalCallback;Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataType([B)B

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/nwd/kernel/source/protocal/InitProtocalUtil;->initEEPROMInfo([BLcom/nwd/kernel/source/protocal/InitProtocalUtil$InitProtocalCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lcom/nwd/kernel/source/protocal/InitProtocalUtil;->initPublicInfo(Landroid/content/ContentResolver;[BLcom/nwd/kernel/source/protocal/InitProtocalUtil$InitProtocalCallback;)V

    :goto_0
    return-void
.end method
