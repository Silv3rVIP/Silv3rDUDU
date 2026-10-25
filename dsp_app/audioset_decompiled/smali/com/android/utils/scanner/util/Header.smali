.class public final Lcom/android/utils/scanner/util/Header;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_FRAMESIZE:I = 0x6c4

.field public static final MPEG1:I = 0x3

.field public static final MPEG2:I = 0x2

.field public static final MPEG25:I

.field private static boolIntensityStereo:Z

.field private static boolMS_Stereo:Z

.field private static boolSync:Z

.field private static floatFrameDuration:F

.field private static intBitrateIndex:I

.field private static final intBitrateTable:[[[I

.field private static intFrameCounter:I

.field private static intFrameSize:I

.field private static intLSF:I

.field private static intLayer:I

.field private static intMainDataBytes:I

.field private static intMode:I

.field private static intModeExtension:I

.field private static intPaddingBit:I

.field private static intProtectionBit:I

.field private static intSamplingFrequency:I

.field private static final intSamplingRateTable:[[I

.field private static intSideInfoSize:I

.field private static intStandardMask:I

.field private static intVersionID:I


# instance fields
.field private final b4:[B

.field private boolVBRtag:Z

.field private byteVBRToc:[B

.field private intTocFactor:I

.field private intTocNumber:I

.field private intTocPer:I

.field private iraInput:Lcom/android/utils/scanner/util/IRandomAccess;

.field private longAllFrameSize:J

.field private longFrameOffset:J

.field private longFrames:F

.field private strBitRate:Ljava/lang/String;

.field private strDuration:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [[[I

    const/4 v2, 0x3

    new-array v3, v2, [[I

    const/16 v4, 0xf

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v7, 0x1

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v0

    aput-object v3, v1, v6

    new-array v3, v2, [[I

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    aput-object v5, v3, v7

    new-array v4, v4, [I

    fill-array-data v4, :array_5

    aput-object v4, v3, v0

    aput-object v3, v1, v7

    sput-object v1, Lcom/android/utils/scanner/util/Header;->intBitrateTable:[[[I

    const/4 v1, 0x4

    new-array v3, v1, [[I

    new-array v4, v1, [I

    fill-array-data v4, :array_6

    aput-object v4, v3, v6

    new-array v4, v1, [I

    fill-array-data v4, :array_7

    aput-object v4, v3, v7

    new-array v4, v1, [I

    fill-array-data v4, :array_8

    aput-object v4, v3, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    aput-object v0, v3, v2

    sput-object v3, Lcom/android/utils/scanner/util/Header;->intSamplingRateTable:[[I

    const/high16 v0, -0x200000

    sput v0, Lcom/android/utils/scanner/util/Header;->intStandardMask:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x120
        0x140
        0x160
        0x180
        0x1a0
        0x1c0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data

    :array_6
    .array-data 4
        0x2b11
        0x2ee0
        0x1f40
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x5622
        0x5dc0
        0x3e80
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xac44
        0xbb80
        0x7d00
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/utils/scanner/util/IRandomAccess;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/utils/scanner/util/Header;->b4:[B

    iput-object p1, p0, Lcom/android/utils/scanner/util/Header;->iraInput:Lcom/android/utils/scanner/util/IRandomAccess;

    const/high16 p1, -0x200000

    sput p1, Lcom/android/utils/scanner/util/Header;->intStandardMask:I

    return-void
.end method

.method private headerCRC()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/utils/scanner/util/Header;->iraInput:Lcom/android/utils/scanner/util/IRandomAccess;

    invoke-interface {v0}, Lcom/android/utils/scanner/util/IRandomAccess;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/utils/scanner/util/Header;->iraInput:Lcom/android/utils/scanner/util/IRandomAccess;

    invoke-interface {v0}, Lcom/android/utils/scanner/util/IRandomAccess;->read()I

    move-result v0

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "crc() \u6587\u4ef6\u8bfb\u5b8c"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeInt32([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private parseHeader(I)V
    .locals 6

    shr-int/lit8 v0, p1, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    sput v0, Lcom/android/utils/scanner/util/Header;->intVersionID:I

    shr-int/lit8 v0, p1, 0x11

    rsub-int/lit8 v0, v0, 0x4

    and-int/2addr v0, v1

    sput v0, Lcom/android/utils/scanner/util/Header;->intLayer:I

    shr-int/lit8 v0, p1, 0x10

    const/4 v2, 0x1

    and-int/2addr v0, v2

    sput v0, Lcom/android/utils/scanner/util/Header;->intProtectionBit:I

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0xf

    sput v0, Lcom/android/utils/scanner/util/Header;->intBitrateIndex:I

    shr-int/lit8 v0, p1, 0xa

    and-int/2addr v0, v1

    sput v0, Lcom/android/utils/scanner/util/Header;->intSamplingFrequency:I

    shr-int/lit8 v0, p1, 0x9

    and-int/2addr v0, v2

    sput v0, Lcom/android/utils/scanner/util/Header;->intPaddingBit:I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v1

    sput v0, Lcom/android/utils/scanner/util/Header;->intMode:I

    shr-int/lit8 p1, p1, 0x4

    and-int/2addr p1, v1

    sput p1, Lcom/android/utils/scanner/util/Header;->intModeExtension:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_0

    and-int/2addr p1, v4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, Lcom/android/utils/scanner/util/Header;->boolMS_Stereo:Z

    sget p1, Lcom/android/utils/scanner/util/Header;->intMode:I

    if-ne p1, v2, :cond_1

    sget p1, Lcom/android/utils/scanner/util/Header;->intModeExtension:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    sput-boolean p1, Lcom/android/utils/scanner/util/Header;->boolIntensityStereo:Z

    sget p1, Lcom/android/utils/scanner/util/Header;->intVersionID:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    :goto_2
    sput p1, Lcom/android/utils/scanner/util/Header;->intLSF:I

    sget v0, Lcom/android/utils/scanner/util/Header;->intLayer:I

    if-eq v0, v2, :cond_8

    const v3, 0x23280

    if-eq v0, v4, :cond_7

    if-eq v0, v1, :cond_3

    goto/16 :goto_5

    :cond_3
    sget-object v0, Lcom/android/utils/scanner/util/Header;->intBitrateTable:[[[I

    aget-object v0, v0, p1

    aget-object v0, v0, v4

    sget v2, Lcom/android/utils/scanner/util/Header;->intBitrateIndex:I

    aget v0, v0, v2

    mul-int v0, v0, v3

    sput v0, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    sget-object v2, Lcom/android/utils/scanner/util/Header;->intSamplingRateTable:[[I

    sget v3, Lcom/android/utils/scanner/util/Header;->intVersionID:I

    aget-object v2, v2, v3

    sget v5, Lcom/android/utils/scanner/util/Header;->intSamplingFrequency:I

    aget v2, v2, v5

    shl-int p1, v2, p1

    div-int/2addr v0, p1

    sput v0, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    sget p1, Lcom/android/utils/scanner/util/Header;->intPaddingBit:I

    add-int/2addr v0, p1

    sput v0, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    const/16 p1, 0x11

    sget v0, Lcom/android/utils/scanner/util/Header;->intMode:I

    if-ne v3, v1, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 p1, 0x20

    goto :goto_3

    :cond_5
    if-ne v0, v1, :cond_6

    const/16 p1, 0x9

    :cond_6
    :goto_3
    sput p1, Lcom/android/utils/scanner/util/Header;->intSideInfoSize:I

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/android/utils/scanner/util/Header;->intBitrateTable:[[[I

    aget-object p1, v0, p1

    aget-object p1, p1, v2

    sget v0, Lcom/android/utils/scanner/util/Header;->intBitrateIndex:I

    aget p1, p1, v0

    mul-int p1, p1, v3

    sput p1, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    sget-object v0, Lcom/android/utils/scanner/util/Header;->intSamplingRateTable:[[I

    sget v1, Lcom/android/utils/scanner/util/Header;->intVersionID:I

    aget-object v0, v0, v1

    sget v1, Lcom/android/utils/scanner/util/Header;->intSamplingFrequency:I

    aget v0, v0, v1

    div-int/2addr p1, v0

    sput p1, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    sget v0, Lcom/android/utils/scanner/util/Header;->intPaddingBit:I

    add-int/2addr p1, v0

    goto :goto_4

    :cond_8
    sget-object v0, Lcom/android/utils/scanner/util/Header;->intBitrateTable:[[[I

    aget-object p1, v0, p1

    aget-object p1, p1, v3

    sget v0, Lcom/android/utils/scanner/util/Header;->intBitrateIndex:I

    aget p1, p1, v0

    mul-int/lit16 p1, p1, 0x2ee0

    sput p1, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    sget-object v0, Lcom/android/utils/scanner/util/Header;->intSamplingRateTable:[[I

    sget v1, Lcom/android/utils/scanner/util/Header;->intVersionID:I

    aget-object v0, v0, v1

    sget v1, Lcom/android/utils/scanner/util/Header;->intSamplingFrequency:I

    aget v0, v0, v1

    div-int/2addr p1, v0

    sput p1, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    sget v0, Lcom/android/utils/scanner/util/Header;->intPaddingBit:I

    add-int/2addr p1, v0

    shl-int/2addr p1, v4

    :goto_4
    sput p1, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    :goto_5
    sget p1, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    add-int/lit8 p1, p1, -0x4

    sget v0, Lcom/android/utils/scanner/util/Header;->intSideInfoSize:I

    sub-int/2addr p1, v0

    sput p1, Lcom/android/utils/scanner/util/Header;->intMainDataBytes:I

    sget v0, Lcom/android/utils/scanner/util/Header;->intProtectionBit:I

    if-nez v0, :cond_9

    sub-int/2addr p1, v4

    sput p1, Lcom/android/utils/scanner/util/Header;->intMainDataBytes:I

    :cond_9
    return-void
.end method

.method private parseVBR()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget v0, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    sget v1, Lcom/android/utils/scanner/util/Header;->intSideInfoSize:I

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/16 v3, 0x7c

    if-ge v0, v3, :cond_0

    return v2

    :cond_0
    new-array v3, v0, [B

    iget-object v4, p0, Lcom/android/utils/scanner/util/Header;->iraInput:Lcom/android/utils/scanner/util/IRandomAccess;

    invoke-interface {v4, v2, v3, v2, v1}, Lcom/android/utils/scanner/util/IRandomAccess;->dump(I[BII)I

    const/4 v1, 0x2

    const/4 v4, 0x2

    :goto_0
    sget v5, Lcom/android/utils/scanner/util/Header;->intSideInfoSize:I

    if-ge v4, v5, :cond_2

    aget-byte v5, v3, v4

    if-eqz v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/utils/scanner/util/Header;->iraInput:Lcom/android/utils/scanner/util/IRandomAccess;

    invoke-interface {v4, v5, v3, v2, v0}, Lcom/android/utils/scanner/util/IRandomAccess;->dump(I[BII)I

    aget-byte v4, v3, v2

    const/16 v5, 0x58

    const/16 v6, 0x6e

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0xff

    const/4 v12, 0x1

    if-ne v4, v5, :cond_3

    aget-byte v4, v3, v12

    const/16 v5, 0x69

    if-ne v4, v5, :cond_3

    aget-byte v4, v3, v1

    if-ne v4, v6, :cond_3

    aget-byte v4, v3, v10

    const/16 v5, 0x67

    if-eq v4, v5, :cond_4

    :cond_3
    aget-byte v4, v3, v2

    const/16 v5, 0x49

    if-ne v4, v5, :cond_9

    aget-byte v4, v3, v12

    if-ne v4, v6, :cond_9

    aget-byte v4, v3, v1

    const/16 v6, 0x66

    if-ne v4, v6, :cond_9

    aget-byte v4, v3, v10

    const/16 v6, 0x6f

    if-ne v4, v6, :cond_9

    :cond_4
    iput-boolean v12, p0, Lcom/android/utils/scanner/util/Header;->boolVBRtag:Z

    iget-wide v4, p0, Lcom/android/utils/scanner/util/Header;->longAllFrameSize:J

    sget v6, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    int-to-long v13, v6

    sub-long/2addr v4, v13

    iput-wide v4, p0, Lcom/android/utils/scanner/util/Header;->longAllFrameSize:J

    iget-wide v4, p0, Lcom/android/utils/scanner/util/Header;->longFrameOffset:J

    int-to-long v13, v6

    add-long/2addr v4, v13

    iput-wide v4, p0, Lcom/android/utils/scanner/util/Header;->longFrameOffset:J

    invoke-direct {p0, v3, v9}, Lcom/android/utils/scanner/util/Header;->makeInt32([BI)I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-ne v5, v12, :cond_5

    invoke-direct {p0, v3, v8}, Lcom/android/utils/scanner/util/Header;->makeInt32([BI)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/utils/scanner/util/Header;->longFrames:F

    const/16 v5, 0xc

    goto :goto_1

    :cond_5
    const/16 v5, 0x8

    :goto_1
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_6

    invoke-direct {p0, v3, v5}, Lcom/android/utils/scanner/util/Header;->makeInt32([BI)I

    move-result v6

    int-to-long v13, v6

    iput-wide v13, p0, Lcom/android/utils/scanner/util/Header;->longAllFrameSize:J

    add-int/lit8 v5, v5, 0x4

    :cond_6
    and-int/lit8 v6, v4, 0x4

    const/16 v13, 0x64

    if-eqz v6, :cond_7

    new-array v6, v13, [B

    iput-object v6, p0, Lcom/android/utils/scanner/util/Header;->byteVBRToc:[B

    invoke-static {v3, v5, v6, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x64

    :cond_7
    and-int/2addr v4, v8

    if-eqz v4, :cond_8

    invoke-direct {p0, v3, v5}, Lcom/android/utils/scanner/util/Header;->makeInt32([BI)I

    add-int/lit8 v5, v5, 0x4

    :cond_8
    iput v13, p0, Lcom/android/utils/scanner/util/Header;->intTocNumber:I

    iput v12, p0, Lcom/android/utils/scanner/util/Header;->intTocPer:I

    iput v12, p0, Lcom/android/utils/scanner/util/Header;->intTocFactor:I

    goto :goto_2

    :cond_9
    aget-byte v4, v3, v2

    const/16 v6, 0x56

    if-ne v4, v6, :cond_18

    aget-byte v4, v3, v12

    const/16 v6, 0x42

    if-ne v4, v6, :cond_18

    aget-byte v4, v3, v1

    const/16 v6, 0x52

    if-ne v4, v6, :cond_18

    aget-byte v4, v3, v10

    if-ne v4, v5, :cond_18

    aget-byte v4, v3, v8

    aget-byte v4, v3, v7

    const/16 v4, 0xa

    invoke-direct {p0, v3, v4}, Lcom/android/utils/scanner/util/Header;->makeInt32([BI)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/utils/scanner/util/Header;->longAllFrameSize:J

    const/16 v4, 0xe

    invoke-direct {p0, v3, v4}, Lcom/android/utils/scanner/util/Header;->makeInt32([BI)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/utils/scanner/util/Header;->longFrames:F

    const/16 v4, 0x12

    aget-byte v4, v3, v4

    and-int/2addr v4, v11

    const/16 v5, 0x13

    aget-byte v5, v3, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/utils/scanner/util/Header;->intTocNumber:I

    const/16 v5, 0x14

    aget-byte v5, v3, v5

    and-int/2addr v5, v11

    const/16 v6, 0x15

    aget-byte v6, v3, v6

    and-int/2addr v6, v11

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/utils/scanner/util/Header;->intTocFactor:I

    const/16 v5, 0x16

    aget-byte v5, v3, v5

    and-int/2addr v5, v11

    const/16 v6, 0x17

    aget-byte v6, v3, v6

    and-int/2addr v6, v11

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/utils/scanner/util/Header;->intTocPer:I

    mul-int v4, v4, v5

    add-int/lit8 v5, v4, 0x1a

    sget v6, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    sget v13, Lcom/android/utils/scanner/util/Header;->intSideInfoSize:I

    sub-int/2addr v6, v13

    if-ge v6, v5, :cond_a

    return v2

    :cond_a
    new-array v6, v4, [B

    iput-object v6, p0, Lcom/android/utils/scanner/util/Header;->byteVBRToc:[B

    const/16 v13, 0x1a

    invoke-static {v3, v13, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    sub-int/2addr v0, v5

    const/16 v4, 0x24

    const-string v6, "VBR"

    if-lt v0, v4, :cond_17

    aget-byte v0, v3, v5

    if-nez v0, :cond_b

    goto/16 :goto_7

    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v5, v7}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v5, v7

    aget-byte v0, v3, v5

    add-int/lit8 v0, v5, 0x1

    aget-byte v4, v3, v5

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v3, v0

    invoke-direct {p0, v3, v5}, Lcom/android/utils/scanner/util/Header;->makeInt32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    add-int/2addr v5, v9

    aget-byte v0, v3, v5

    add-int/lit8 v0, v5, 0x1

    aget-byte v0, v3, v0

    add-int/2addr v5, v1

    aget-byte v0, v3, v5

    add-int/lit8 v0, v5, 0x1

    aget-byte v0, v3, v0

    add-int/2addr v5, v1

    add-int/2addr v5, v12

    add-int/lit8 v0, v5, 0x1

    aget-byte v5, v3, v5

    and-int/2addr v5, v11

    if-eq v4, v12, :cond_f

    if-eq v4, v1, :cond_d

    if-eq v4, v8, :cond_f

    if-eq v4, v7, :cond_d

    if-nez v5, :cond_c

    iput-object v6, p0, Lcom/android/utils/scanner/util/Header;->strBitRate:Ljava/lang/String;

    goto :goto_4

    :cond_c
    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "VBR %1$dK\u4ee5\u4e0a"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_d
    new-array v4, v12, [Ljava/lang/Object;

    if-ge v5, v11, :cond_e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "ABR %1$dK"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "ABR %1$dK\u4ee5\u4e0a"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_f
    new-array v4, v12, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/utils/scanner/util/Header;->getBitrate()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "CBR %1$dK"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, p0, Lcom/android/utils/scanner/util/Header;->strBitRate:Ljava/lang/String;

    :goto_4
    add-int/2addr v0, v10

    add-int/2addr v0, v12

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    if-eqz v0, :cond_10

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    MP3 Gain: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    aget-byte v0, v3, v2

    and-int/2addr v0, v11

    shl-int/2addr v0, v8

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v3, v4

    and-int/2addr v4, v11

    or-int/2addr v0, v4

    shr-int/lit8 v4, v0, 0xb

    const/4 v5, 0x7

    and-int/2addr v4, v5

    if-eq v4, v12, :cond_14

    if-eq v4, v1, :cond_13

    if-eq v4, v10, :cond_12

    if-eq v4, v5, :cond_11

    goto :goto_6

    :cond_11
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "    surround: invalid data"

    goto :goto_5

    :cond_12
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "    surround: Ambisonic"

    goto :goto_5

    :cond_13
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "    surround: DPL2"

    goto :goto_5

    :cond_14
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "    surround: DPL"

    :goto_5
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_6
    and-int/lit16 v0, v0, 0x7ff

    if-eqz v0, :cond_15

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    surround: preset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_15
    add-int/2addr v2, v1

    invoke-direct {p0, v3, v2}, Lcom/android/utils/scanner/util/Header;->makeInt32([BI)I

    move-result v0

    if-eqz v0, :cond_16

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/utils/scanner/util/Header;->longAllFrameSize:J

    :cond_16
    return v12

    :cond_17
    :goto_7
    iput-object v6, p0, Lcom/android/utils/scanner/util/Header;->strBitRate:Ljava/lang/String;

    return v12

    :cond_18
    return v2
.end method


# virtual methods
.method public getBitrate()I
    .locals 2

    sget-object v0, Lcom/android/utils/scanner/util/Header;->intBitrateTable:[[[I

    sget v1, Lcom/android/utils/scanner/util/Header;->intLSF:I

    aget-object v0, v0, v1

    sget v1, Lcom/android/utils/scanner/util/Header;->intLayer:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    sget v1, Lcom/android/utils/scanner/util/Header;->intBitrateIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getDuration()F
    .locals 2

    sget v0, Lcom/android/utils/scanner/util/Header;->floatFrameDuration:F

    iget v1, p0, Lcom/android/utils/scanner/util/Header;->longFrames:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getFrequency()I
    .locals 2

    sget-object v0, Lcom/android/utils/scanner/util/Header;->intSamplingRateTable:[[I

    sget v1, Lcom/android/utils/scanner/util/Header;->intVersionID:I

    aget-object v0, v0, v1

    sget v1, Lcom/android/utils/scanner/util/Header;->intSamplingFrequency:I

    aget v0, v0, v1

    return v0
.end method

.method public getTrackFrames()J
    .locals 2

    iget v0, p0, Lcom/android/utils/scanner/util/Header;->longFrames:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public isMSStereo()Z
    .locals 1

    sget-boolean v0, Lcom/android/utils/scanner/util/Header;->boolMS_Stereo:Z

    return v0
.end method

.method public syncFrame()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " ------- syncFrame ----------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/scanner/util/Header;->iraInput:Lcom/android/utils/scanner/util/IRandomAccess;

    iget-object v1, p0, Lcom/android/utils/scanner/util/Header;->b4:[B

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/android/utils/scanner/util/IRandomAccess;->read([BII)I

    iget-object v0, p0, Lcom/android/utils/scanner/util/Header;->b4:[B

    aget-byte v1, v0, v3

    shl-int/lit8 v1, v1, 0x18

    const/4 v4, 0x1

    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v1, v5

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    const/4 v5, 0x3

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    sget v7, Lcom/android/utils/scanner/util/Header;->intStandardMask:I

    and-int v8, v0, v7

    if-ne v8, v7, :cond_8

    shr-int/lit8 v7, v0, 0x13

    and-int/2addr v7, v5

    if-eq v7, v4, :cond_8

    shr-int/lit8 v7, v0, 0x11

    and-int/2addr v7, v5

    if-eqz v7, :cond_8

    shr-int/lit8 v7, v0, 0xc

    const/16 v8, 0xf

    and-int/2addr v7, v8

    if-eq v7, v8, :cond_8

    if-eqz v7, :cond_8

    shr-int/lit8 v7, v0, 0xa

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    if-lez v1, :cond_1

    sput-boolean v3, Lcom/android/utils/scanner/util/Header;->boolSync:Z

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/utils/scanner/util/Header;->parseHeader(I)V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n h = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-boolean v7, Lcom/android/utils/scanner/util/Header;->boolSync:Z

    if-eqz v7, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\nboolSync = true ------- break"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const v6, 0xffff

    if-lt v1, v6, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n\u641c\u7d22 64K \u672a\u53d1\u73b0MP3\u5e27\u540e\u653e\u5f03\u3002"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v3

    :cond_3
    const/high16 v6, -0x200000

    const/high16 v7, 0x180000

    and-int/2addr v7, v0

    or-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/utils/scanner/util/Header;->iraInput:Lcom/android/utils/scanner/util/IRandomAccess;

    sget v9, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    sub-int/2addr v9, v2

    iget-object v10, p0, Lcom/android/utils/scanner/util/Header;->b4:[B

    invoke-interface {v7, v9, v10, v3, v2}, Lcom/android/utils/scanner/util/IRandomAccess;->dump(I[BII)I

    move-result v7

    if-ge v7, v2, :cond_4

    return v3

    :cond_4
    iget-object v7, p0, Lcom/android/utils/scanner/util/Header;->b4:[B

    invoke-direct {p0, v7, v3}, Lcom/android/utils/scanner/util/Header;->makeInt32([BI)I

    move-result v7

    and-int v9, v7, v6

    if-ne v9, v6, :cond_7

    shr-int/lit8 v9, v7, 0x13

    and-int/2addr v9, v5

    if-eq v9, v4, :cond_7

    shr-int/lit8 v9, v7, 0x11

    and-int/2addr v9, v5

    if-eqz v9, :cond_7

    shr-int/lit8 v9, v7, 0xc

    and-int/2addr v9, v8

    if-eq v9, v8, :cond_7

    if-eqz v9, :cond_7

    shr-int/lit8 v7, v7, 0xa

    and-int/2addr v7, v5

    if-eq v7, v5, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n cur_mask  ------- break"

    goto :goto_1

    :goto_2
    sput-boolean v3, Lcom/android/utils/scanner/util/Header;->boolSync:Z

    if-nez v3, :cond_5

    sput-boolean v4, Lcom/android/utils/scanner/util/Header;->boolSync:Z

    iget-object v0, p0, Lcom/android/utils/scanner/util/Header;->iraInput:Lcom/android/utils/scanner/util/IRandomAccess;

    invoke-interface {v0}, Lcom/android/utils/scanner/util/IRandomAccess;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/utils/scanner/util/Header;->longFrameOffset:J

    iget-object v0, p0, Lcom/android/utils/scanner/util/Header;->iraInput:Lcom/android/utils/scanner/util/IRandomAccess;

    invoke-interface {v0}, Lcom/android/utils/scanner/util/IRandomAccess;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/utils/scanner/util/Header;->longFrameOffset:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/utils/scanner/util/Header;->longAllFrameSize:J

    long-to-float v0, v0

    sget v1, Lcom/android/utils/scanner/util/Header;->intFrameSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/utils/scanner/util/Header;->longFrames:F

    invoke-direct {p0}, Lcom/android/utils/scanner/util/Header;->parseVBR()Z

    sput v6, Lcom/android/utils/scanner/util/Header;->intStandardMask:I

    const/high16 v0, 0x44900000    # 1152.0f

    invoke-virtual {p0}, Lcom/android/utils/scanner/util/Header;->getFrequency()I

    move-result v1

    sget v2, Lcom/android/utils/scanner/util/Header;->intLSF:I

    shl-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/android/utils/scanner/util/Header;->floatFrameDuration:F

    :cond_5
    sget v0, Lcom/android/utils/scanner/util/Header;->intProtectionBit:I

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/utils/scanner/util/Header;->headerCRC()V

    :cond_6
    sget v0, Lcom/android/utils/scanner/util/Header;->intFrameCounter:I

    add-int/2addr v0, v4

    sput v0, Lcom/android/utils/scanner/util/Header;->intFrameCounter:I

    return v4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x8

    iget-object v7, p0, Lcom/android/utils/scanner/util/Header;->iraInput:Lcom/android/utils/scanner/util/IRandomAccess;

    invoke-interface {v7}, Lcom/android/utils/scanner/util/IRandomAccess;->read()I

    move-result v7

    goto :goto_4

    :cond_8
    :goto_3
    iget-object v7, p0, Lcom/android/utils/scanner/util/Header;->iraInput:Lcom/android/utils/scanner/util/IRandomAccess;

    invoke-interface {v7}, Lcom/android/utils/scanner/util/IRandomAccess;->read()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9

    return v3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x8

    :goto_4
    or-int/2addr v0, v7

    goto/16 :goto_0
.end method
