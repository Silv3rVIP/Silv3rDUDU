.class public Lcom/nwd/dsp/uitls/AudioProtocalUtil;
.super Ljava/lang/Object;
.source "AudioProtocalUtil.java"


# static fields
.field private static final DATA_DSP_32PART_PARAM:B = 0x7t

.field private static final DATA_DSP_ALL_32PART_PARAM:B = -0xft

.field private static final DATA_DSP_ALL_OTHER_PARAM:B = -0xet

.field private static final DATA_DSP_BASS_ENHANCE:B = 0x1bt

.field private static final DATA_DSP_DELAY_TIME:B = 0xbt

.field private static final DATA_DSP_DENGXIANG:B = 0x1t

.field private static final DATA_DSP_DTS:B = 0x1et

.field private static final DATA_DSP_HLPF:B = 0xdt

.field private static final DATA_DSP_PHASE:B = 0x9t

.field private static final DATA_DSP_ROUN3D:B = 0x1ct

.field private static final DATA_DSP_SITE:B = -0x7t

.field private static final DATA_DSP_VALUE:B = 0xat

.field private static final TAG:Ljava/lang/String; = "dsp3-AudioProtocalUtil"

.field static final runner:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 329
    new-instance v0, Lcom/nwd/dsp/uitls/AudioProtocalUtil$1;

    invoke-direct {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil$1;-><init>()V

    sput-object v0, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->runner:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send32EQData([I[I[I)V
    .locals 6

    .line 235
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "T60_XC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "standard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->isOpenDengxiang()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x19

    const/4 v2, 0x7

    .line 238
    :try_start_0
    aput v0, p2, v2

    const/16 v2, 0x1a

    .line 239
    aput v0, p2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 241
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "send32EQData T60_XC_S2H603 set gain[7]=%s gain[26]=%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dsp"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x4

    const/16 v2, 0xd

    const/16 v3, -0xf

    invoke-static {v0, v2, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    .line 246
    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    .line 249
    array-length v3, p0

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 251
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 252
    sget v3, Lcom/nwd/dsp/uitls/DspConstant;->AUDIOTYPE:I

    const/4 v4, 0x6

    const-string v5, "ych"

    if-ne v3, v4, :cond_1

    .line 253
    aget v3, p1, v1

    if-nez v3, :cond_2

    const-string v3, "Q\u503c\u7b49\u4e8e07735"

    .line 254
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x14

    .line 255
    aput v3, p1, v1

    goto :goto_2

    .line 258
    :cond_1
    aget v3, p1, v1

    if-nez v3, :cond_2

    const-string v3, "Q\u503c\u7b49\u4e8e0"

    .line 259
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xa

    .line 260
    aput v3, p1, v1

    :cond_2
    :goto_2
    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v4, v1, 0x5

    add-int/2addr v3, v4

    .line 263
    aget v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v4

    .line 264
    aget v5, p0, v1

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v2, 0x3

    add-int/2addr v3, v4

    .line 265
    aget v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v4

    .line 266
    aget v5, p1, v1

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v2, 0x5

    add-int/2addr v3, v4

    .line 267
    aget v4, p2, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 269
    :cond_3
    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    return-void
.end method

.method public static sendAreayData(III)V
    .locals 3

    const/16 v0, 0x9

    const/16 v1, 0xd

    const/16 v2, 0x1b

    .line 142
    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p0, p0

    .line 144
    aput-byte p0, v0, v1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x190

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x12c

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xfa

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xc8

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x96

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x64

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x3c

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x28

    :goto_0
    add-int/lit8 p0, v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    .line 172
    aput-byte v2, v0, p0

    add-int/lit8 p0, v1, 0x2

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 173
    aput-byte p1, v0, p0

    add-int/lit8 p0, v1, 0x3

    const/16 p1, 0x14

    .line 174
    aput-byte p1, v0, p0

    add-int/lit8 p0, v1, 0x4

    const/4 p1, 0x0

    .line 175
    aput-byte p1, v0, p0

    add-int/lit8 v1, v1, 0x5

    int-to-byte p0, p2

    .line 176
    aput-byte p0, v0, v1

    .line 178
    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sendBugleData(II)V
    .locals 3

    if-ltz p0, :cond_2

    const/4 v0, 0x6

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0xf

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    const/16 v1, 0xd

    const/16 v2, 0xa

    .line 102
    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p0, p0

    .line 104
    aput-byte p0, v0, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte p0, p1

    .line 105
    aput-byte p0, v0, v1

    .line 106
    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static sendBugleDataMute(I)V
    .locals 3

    if-ltz p0, :cond_1

    const/4 v0, 0x6

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    const/16 v1, 0xd

    const/16 v2, 0xa

    .line 112
    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p0, p0

    .line 114
    aput-byte p0, v0, v1

    add-int/lit8 v1, v1, 0x1

    const/16 p0, 0xf

    .line 115
    aput-byte p0, v0, v1

    .line 116
    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendBugleOppData(IZ)V
    .locals 3

    if-ltz p0, :cond_1

    const/4 v0, 0x6

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    const/16 v1, 0xd

    const/16 v2, 0x9

    .line 122
    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p0, p0

    .line 124
    aput-byte p0, v0, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte p0, p1

    .line 125
    aput-byte p0, v0, v1

    .line 126
    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendDelayData(II)V
    .locals 3

    if-ltz p0, :cond_2

    const/4 v0, 0x6

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    const/16 v1, 0xc8

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    const/16 v2, 0xb

    .line 132
    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p0, p0

    .line 134
    aput-byte p0, v0, v1

    add-int/lit8 p0, v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    .line 135
    aput-byte v2, v0, p0

    add-int/lit8 v1, v1, 0x2

    shr-int/lit8 p0, p1, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 136
    aput-byte p0, v0, v1

    .line 137
    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static sendDengxiangData(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x5

    const/16 v2, 0xd

    .line 274
    invoke-static {v1, v2, v0}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v1

    .line 275
    invoke-static {v1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    const/16 v3, 0x11

    .line 276
    aput-byte v3, v1, v2

    add-int/2addr v2, v0

    int-to-byte p0, p0

    .line 277
    aput-byte p0, v1, v2

    .line 278
    invoke-static {v1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    return-void
.end method

.method public static sendDtsBassGrow(III)V
    .locals 4

    const/4 v0, 0x1

    if-lt p0, v0, :cond_3

    const/4 v0, 0x3

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_3

    const/16 v1, 0xa

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_3

    const/4 v1, 0x7

    if-le p2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0xd

    const/16 v3, 0x1e

    .line 504
    invoke-static {v1, v2, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v1

    .line 505
    invoke-static {v1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    const/4 v3, 0x5

    .line 506
    aput-byte v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    int-to-byte p0, p0

    .line 507
    aput-byte p0, v1, v3

    add-int/lit8 p0, v2, 0x2

    int-to-byte p1, p1

    .line 508
    aput-byte p1, v1, p0

    add-int/2addr v2, v0

    int-to-byte p0, p2

    .line 509
    aput-byte p0, v1, v2

    .line 510
    invoke-static {v1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static sendDtsFunctionSwitch(I)V
    .locals 4

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    const/16 v2, 0xd

    const/16 v3, 0x1e

    .line 518
    invoke-static {v1, v2, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v1

    .line 519
    invoke-static {v1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    const/4 v3, 0x6

    .line 520
    aput-byte v3, v1, v2

    add-int/2addr v2, v0

    int-to-byte p0, p0

    .line 521
    aput-byte p0, v1, v2

    .line 522
    invoke-static {v1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendDtsSceneModeData(I)V
    .locals 4

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/4 v1, 0x3

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    const/16 v2, 0xd

    const/16 v3, 0x1e

    .line 446
    invoke-static {v1, v2, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v1

    .line 447
    invoke-static {v1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    .line 448
    aput-byte v0, v1, v2

    add-int/2addr v2, v0

    int-to-byte p0, p0

    .line 449
    aput-byte p0, v1, v2

    .line 450
    invoke-static {v1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendDtsSoundFocus(II)V
    .locals 4

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const/4 v0, 0x3

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    const/16 v1, 0xa

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    const/16 v2, 0xd

    const/16 v3, 0x1e

    .line 472
    invoke-static {v1, v2, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v1

    .line 473
    invoke-static {v1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    .line 474
    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    int-to-byte p0, p0

    .line 475
    aput-byte p0, v1, v0

    add-int/lit8 v2, v2, 0x2

    int-to-byte p0, p1

    .line 476
    aput-byte p0, v1, v2

    .line 477
    invoke-static {v1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static sendDtsSurroundMode(II)V
    .locals 4

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    const/16 v1, 0xa

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    const/16 v2, 0xd

    const/16 v3, 0x1e

    .line 487
    invoke-static {v1, v2, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v1

    .line 488
    invoke-static {v1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    const/4 v3, 0x4

    .line 489
    aput-byte v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    int-to-byte p0, p0

    .line 490
    aput-byte p0, v1, v3

    add-int/2addr v2, v0

    int-to-byte p0, p1

    .line 491
    aput-byte p0, v1, v2

    .line 492
    invoke-static {v1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static sendDtsVirtualMiddle(I)V
    .locals 4

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    const/16 v2, 0xd

    const/16 v3, 0x1e

    .line 458
    invoke-static {v1, v2, v3}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v1

    .line 459
    invoke-static {v1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v2

    const/4 v3, 0x2

    .line 460
    aput-byte v3, v1, v2

    add-int/2addr v2, v0

    int-to-byte p0, p0

    .line 461
    aput-byte p0, v1, v2

    .line 462
    invoke-static {v1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendHpfData(III)V
    .locals 4

    const/16 v0, 0xd

    const/16 v1, 0x9

    .line 183
    invoke-static {v1, v0, v0}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p0, p0

    .line 185
    aput-byte p0, v0, v1

    .line 186
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result p0

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u9ad8\u901a\u9891\u7387\u4e3a:  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \u9891\u7387qValue="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [qValue&0xFF]="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", [qValue>>8&0xFF]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "dsp3-AudioProtocalUtil"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, v1, 0x1

    const/4 v3, 0x1

    .line 189
    aput-byte v3, v0, p1

    add-int/lit8 p1, v1, 0x2

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    .line 190
    aput-byte v3, v0, p1

    add-int/lit8 p1, v1, 0x3

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 191
    aput-byte p0, v0, p1

    add-int/lit8 p0, v1, 0x4

    .line 192
    aput-byte v2, v0, p0

    add-int/lit8 v1, v1, 0x5

    .line 193
    aput-byte p2, v0, v1

    .line 195
    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    return-void
.end method

.method public static sendLpfData(III)V
    .locals 3

    const/16 v0, 0xd

    const/16 v1, 0x9

    .line 201
    invoke-static {v1, v0, v0}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p0, p0

    .line 203
    aput-byte p0, v0, v1

    .line 204
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result p0

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f4e\u901a\u9891\u7387\u4e3a:  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", qValue="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "dsp3-AudioProtocalUtil"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, v1, 0x1

    const/4 v2, 0x0

    .line 206
    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x2

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    .line 207
    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x3

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 208
    aput-byte p0, v0, p1

    add-int/lit8 p0, v1, 0x4

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    .line 209
    aput-byte p1, v0, p0

    add-int/lit8 v1, v1, 0x5

    shr-int/lit8 p0, p2, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 210
    aput-byte p0, v0, v1

    .line 212
    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    return-void
.end method

.method public static sendOneEQData(IIII)V
    .locals 3

    if-nez p3, :cond_0

    const/16 p3, 0xa

    :cond_0
    const/16 v0, 0x9

    const/16 v1, 0xd

    const/4 v2, 0x7

    .line 88
    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p0, p0

    .line 90
    aput-byte p0, v0, v1

    add-int/lit8 p0, v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    .line 91
    aput-byte v2, v0, p0

    add-int/lit8 p0, v1, 0x2

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 92
    aput-byte p1, v0, p0

    add-int/lit8 p0, v1, 0x3

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    .line 93
    aput-byte p1, v0, p0

    add-int/lit8 p0, v1, 0x4

    shr-int/lit8 p1, p3, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 94
    aput-byte p1, v0, p0

    add-int/lit8 v1, v1, 0x5

    int-to-byte p0, p2

    .line 95
    aput-byte p0, v0, v1

    .line 96
    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    return-void
.end method

.method public static sendOtherAll([B)V
    .locals 4

    .line 286
    array-length v0, p0

    add-int/lit8 v0, v0, 0x3

    const/16 v1, 0xd

    const/16 v2, -0xe

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    .line 287
    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    .line 288
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    return-void
.end method

.method public static sendRound3DDate(Z)V
    .locals 3

    const/4 v0, 0x6

    const/16 v1, 0xd

    const/16 v2, 0x1c

    .line 218
    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p0, p0

    .line 220
    aput-byte p0, v0, v1

    add-int/lit8 p0, v1, 0x1

    const/16 v2, 0x2c

    .line 221
    aput-byte v2, v0, p0

    add-int/lit8 v1, v1, 0x2

    const/4 p0, 0x1

    .line 222
    aput-byte p0, v0, v1

    .line 223
    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    return-void
.end method

.method public static sendSiteData(II)V
    .locals 3

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v1, 0xe

    if-le p1, v1, :cond_1

    const/16 p1, 0xe

    :cond_1
    if-gtz p0, :cond_2

    const/4 p0, 0x0

    :cond_2
    if-le p0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, p0

    :goto_0
    const/4 p0, 0x5

    const/16 v0, 0xd

    const/4 v2, -0x7

    .line 73
    invoke-static {p0, v0, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object p0

    .line 74
    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    int-to-byte v1, v1

    .line 75
    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte p1, p1

    .line 76
    aput-byte p1, p0, v0

    .line 77
    invoke-static {p0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToCPU([B)V

    return-void
.end method

.method public static declared-synchronized writeDataToCPU([B)V
    .locals 7

    const-class v0, Lcom/nwd/dsp/uitls/AudioProtocalUtil;

    monitor-enter v0

    .line 294
    :try_start_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 295
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    .line 297
    invoke-static {p0}, Lcom/nwd/dsp/uitls/DspUtils;->byteToStr([B)Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {p0}, Lcom/nwd/dsp/uitls/DspUtils;->printByteData([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    const/4 v2, 0x1

    :try_start_2
    const-string v3, "setDSP_ak7604_status"

    .line 303
    const-class v4, Landroid/os/Hardware;

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, p0

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, p0

    invoke-static {v4, v3, v5, v6}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 305
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "dsp3-AudioProtocalUtil"

    new-array v4, v2, [Ljava/lang/Object;

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u53cd\u5c04\u5931\u8d25,\u53bb\u627e\u539f\u56e0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, p0

    invoke-static {v1, v4}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "dsp3-AudioProtocalUtil"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "\u53cd\u5c04\u62a5\u9519"

    aput-object v4, v2, p0

    .line 311
    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized writeDataToMCU(II)V
    .locals 4

    const-class v0, Lcom/nwd/dsp/uitls/AudioProtocalUtil;

    monitor-enter v0

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v2, 0xe

    if-le p1, v2, :cond_1

    const/16 p1, 0xe

    :cond_1
    if-gtz p0, :cond_2

    const/4 p0, 0x0

    :cond_2
    if-le p0, v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, p0

    :goto_0
    :try_start_0
    const-string p0, "dsp3-AudioProtocalUtil"

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u504732\u6bb5Eq\u53d1\u9001\u58f0\u573a\u6570\u636e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  b="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nwd/setting/service/SettingFeature;

    const/16 v1, 0xc

    invoke-interface {p0, v1, v2}, Lcom/nwd/setting/service/SettingFeature;->setAudioParam(II)V

    .line 390
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nwd/setting/service/SettingFeature;

    const/16 v1, 0xd

    invoke-interface {p0, v1, p1}, Lcom/nwd/setting/service/SettingFeature;->setAudioParam(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 393
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "dsp3-AudioProtocalUtil"

    const-string p1, "\u504732\u6bb5\u53d1\u9001\u58f0\u573aMCU\u6570\u636e\u62a5\u9519 "

    .line 394
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized writeDataToMCU(Ljava/lang/String;)V
    .locals 8

    const-class v0, Lcom/nwd/dsp/uitls/AudioProtocalUtil;

    monitor-enter v0

    const/4 v1, -0x1

    .line 405
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "customize"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "standard"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string v2, "customizetwo"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "classic"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "rock"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v2, "jazz"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "pop"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x1

    goto :goto_1

    .line 424
    :pswitch_1
    monitor-exit v0

    return-void

    :pswitch_2
    const/4 v3, 0x5

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x3

    goto :goto_1

    :pswitch_4
    const/4 v3, 0x2

    :goto_1
    :pswitch_5
    :try_start_1
    const-string p0, "dsp3-AudioProtocalUtil"

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001\u504732\u6a21\u5f0f\u6570\u636e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :try_start_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nwd/setting/service/SettingFeature;

    invoke-interface {p0, v6, v3}, Lcom/nwd/setting/service/SettingFeature;->setAudioParam(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_3
    const-string v1, "dsp3-AudioProtocalUtil"

    const-string v2, "\u504732\u6bb5\u53d1\u9001\u6a21\u5f0fMCU\u6570\u636e\u62a5\u9519 "

    .line 432
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 437
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x1b251 -> :sswitch_6
        0x31aab7 -> :sswitch_5
        0x357f65 -> :sswitch_4
        0x32e13892 -> :sswitch_3
        0x3cf62b29 -> :sswitch_2
        0x4e3d1ebd -> :sswitch_1
        0x600e8c43 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized writeDataToMCU(Z)V
    .locals 4

    const-class v0, Lcom/nwd/dsp/uitls/AudioProtocalUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "dsp3-AudioProtocalUtil"

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001\u504732\u7b49\u54cd\u6570\u636e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/setting/service/SettingFeature;

    const/16 v2, 0x11

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v1, v2, p0}, Lcom/nwd/setting/service/SettingFeature;->setAudioParam(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 365
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "dsp3-AudioProtocalUtil"

    const-string v1, "\u504732\u6bb5\u53d1\u9001\u7b49\u54cdMCU\u6570\u636e\u62a5\u9519 "

    .line 366
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized writeDataToMCU([I)V
    .locals 2

    const-class v0, Lcom/nwd/dsp/uitls/AudioProtocalUtil;

    monitor-enter v0

    .line 319
    :try_start_0
    invoke-static {p0}, Lcom/nwd/dsp/uitls/DspUtils;->eq32To10([I)[I

    move-result-object p0

    sput-object p0, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    .line 321
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getSinglePool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sget-object v1, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->runner:Ljava/lang/Runnable;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized writeDataToMCU10eq([I)V
    .locals 2

    const-class v0, Lcom/nwd/dsp/uitls/AudioProtocalUtil;

    monitor-enter v0

    .line 325
    :try_start_0
    sput-object p0, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    .line 327
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getSinglePool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sget-object v1, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->runner:Ljava/lang/Runnable;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
