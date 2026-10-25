.class public Lcom/nwd/dsp/uitls/DspAlgorithm;
.super Ljava/lang/Object;
.source "DspAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;
    }
.end annotation


# static fields
.field private static final BALANCE_REDUCE:I = 0x4

.field private static final FAD_REDUCE:I = 0x4

.field private static FREQUENCY:[I = null

.field private static HEAD:[I = null

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static final MAX_BALANCE:I = 0xe

.field private static final MIN_BALANCE:I = 0x0

.field private static final SPEAK_MUTE:I = 0xff

.field private static m680GainTemp:I

.field private static m680QTemp:F

.field private static m750GainTemp:I

.field private static m750QTemp:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "DspAlgorithm"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/dsp/uitls/DspAlgorithm;->LOG:Lcom/android/utils/log/JLog;

    const/16 v0, 0xe

    new-array v1, v0, [I

    .line 21
    fill-array-data v1, :array_0

    sput-object v1, Lcom/nwd/dsp/uitls/DspAlgorithm;->FREQUENCY:[I

    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_1

    sput-object v0, Lcom/nwd/dsp/uitls/DspAlgorithm;->HEAD:[I

    const/4 v0, 0x6

    .line 31
    sput v0, Lcom/nwd/dsp/uitls/DspAlgorithm;->m680GainTemp:I

    .line 32
    sput v0, Lcom/nwd/dsp/uitls/DspAlgorithm;->m750GainTemp:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    sput v0, Lcom/nwd/dsp/uitls/DspAlgorithm;->m680QTemp:F

    .line 34
    sput v0, Lcom/nwd/dsp/uitls/DspAlgorithm;->m750QTemp:F

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x40
        0x7d
        0xfa
        0x17c
        0x1f4
        0x2a8
        0x2ee
        0x3e8
        0x7d0
        0xfa0
        0x1770
        0x1f40
        0x3e80
    .end array-data

    :array_1
    .array-data 4
        -0x7b867b82
        -0x7b7c7b78
        -0x7b727b6e
        -0x7b687b64
        -0x7b5e7b5a
        -0x7b547b50
        -0x7b407b3c
        -0x7b407b3c
        -0x7b367b32
        -0x7b2c7b28
        -0x7b227b1e
        -0x7b187b14
        -0x7b0e7b0a
        -0x7b046c00
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Calc_Biquad(ILcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;IFII)[J
    .locals 33

    move/from16 v0, p4

    const/4 v1, 0x5

    new-array v1, v1, [J

    move/from16 v2, p0

    int-to-double v2, v2

    move/from16 v4, p2

    int-to-double v4, v4

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    .line 173
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v2

    .line 174
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move/from16 v10, p3

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 175
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v10, v12

    div-double v14, v8, v14

    .line 176
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    int-to-double v12, v0

    move-object/from16 v18, v1

    neg-int v1, v0

    move-wide/from16 v19, v4

    int-to-double v4, v1

    const-wide/high16 v21, 0x4034000000000000L    # 20.0

    move-wide/from16 v23, v2

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    if-lez v0, :cond_0

    .line 182
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v12, v21

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v4, v21

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    :goto_0
    sub-double v3, v3, v25

    .line 189
    sget-object v5, Lcom/nwd/dsp/uitls/DspAlgorithm$1;->$SwitchMap$com$nwd$dsp$uitls$DspAlgorithm$BIQUAD_TYPE:[I

    invoke-virtual/range {p1 .. p1}, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->ordinal()I

    move-result v27

    aget v5, v5, v27

    const-wide/high16 v27, -0x4000000000000000L    # -2.0

    const-wide/16 v29, 0x0

    packed-switch v5, :pswitch_data_0

    move-wide/from16 v0, v29

    move-wide v2, v0

    move-wide v4, v2

    move-wide v6, v4

    move-wide v14, v6

    goto/16 :goto_4

    .line 328
    :pswitch_0
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v12, v12, v21

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 329
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v10

    add-double v4, v0, v25

    sub-double v6, v0, v25

    mul-double v10, v6, v16

    add-double v12, v4, v10

    mul-double v2, v2, v8

    add-double v8, v12, v2

    mul-double v8, v8, v0

    mul-double v27, v27, v0

    mul-double v16, v16, v4

    add-double v14, v6, v16

    mul-double v27, v27, v14

    sub-double/2addr v12, v2

    mul-double v0, v0, v12

    sub-double/2addr v4, v10

    add-double v10, v4, v2

    sub-double v6, v6, v16

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v12

    sub-double/2addr v4, v2

    div-double v29, v8, v10

    div-double v2, v27, v10

    goto :goto_1

    .line 308
    :pswitch_1
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v12, v12, v21

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 309
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v10

    add-double v4, v0, v25

    sub-double v6, v0, v25

    mul-double v10, v6, v16

    sub-double v12, v4, v10

    mul-double v2, v2, v8

    add-double v8, v12, v2

    mul-double v8, v8, v0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v0

    mul-double v16, v16, v4

    sub-double v19, v6, v16

    mul-double v14, v14, v19

    sub-double/2addr v12, v2

    mul-double v0, v0, v12

    add-double/2addr v4, v10

    add-double v10, v4, v2

    add-double v6, v6, v16

    mul-double v6, v6, v27

    sub-double/2addr v4, v2

    div-double v29, v8, v10

    div-double v2, v14, v10

    :goto_1
    div-double/2addr v0, v10

    div-double/2addr v6, v10

    div-double/2addr v4, v10

    move-wide/from16 v14, v29

    move-wide/from16 v31, v0

    move-wide v0, v6

    move-wide v6, v2

    goto :goto_2

    :pswitch_2
    mul-double v16, v16, v27

    add-double v0, v14, v25

    sub-double v2, v25, v14

    div-double v29, v25, v0

    div-double v4, v16, v0

    div-double v0, v2, v0

    move-wide v6, v4

    move-wide/from16 v2, v29

    move-wide v14, v2

    move-wide v4, v0

    move-wide v0, v6

    goto/16 :goto_4

    :pswitch_3
    neg-double v0, v14

    add-double v2, v14, v25

    mul-double v16, v16, v27

    sub-double v25, v25, v14

    div-double/2addr v14, v2

    div-double v29, v29, v2

    div-double/2addr v0, v2

    div-double v4, v16, v2

    div-double v2, v25, v2

    move-wide/from16 v6, v29

    move-wide/from16 v31, v0

    move-wide v0, v4

    move-wide v4, v2

    :goto_2
    move-wide/from16 v2, v31

    goto/16 :goto_4

    .line 267
    :pswitch_4
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sub-double v0, v0, v25

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sub-double v2, v25, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v6, v2, v4

    neg-double v2, v2

    div-double/2addr v2, v4

    move-wide v14, v6

    move-wide/from16 v4, v29

    move-wide v6, v2

    move-wide v2, v4

    goto/16 :goto_4

    :pswitch_5
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double v0, v16, v25

    div-double v2, v0, v4

    neg-double v0, v0

    goto :goto_3

    .line 243
    :pswitch_6
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sub-double v0, v0, v25

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    add-double v25, v0, v25

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v25, v25, v2

    move-wide/from16 v6, v25

    move-wide v14, v6

    move-wide/from16 v2, v29

    move-wide v4, v2

    goto/16 :goto_4

    :pswitch_7
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double v0, v25, v16

    div-double v2, v0, v2

    :goto_3
    add-double v4, v14, v25

    mul-double v16, v16, v27

    sub-double v25, v25, v14

    div-double v29, v2, v4

    div-double/2addr v0, v4

    div-double v2, v16, v4

    div-double v4, v25, v4

    move-wide v6, v0

    move-wide v0, v2

    move-wide/from16 v2, v29

    move-wide v14, v2

    goto :goto_4

    :pswitch_8
    const-wide v1, 0x400921fb54442d18L    # Math.PI

    .line 193
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v23, v1

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v19, v1

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v7, v23

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    mul-double v5, v5, v1

    .line 195
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v5, v23

    .line 197
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double v1, v5, v10

    add-double v7, v1, v25

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v7, v11

    .line 199
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v11, v11, v9

    add-double v11, v11, v27

    sub-double v13, v25, v1

    .line 201
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    add-double/2addr v13, v15

    add-double v3, v3, v25

    mul-double v1, v1, v3

    add-double v3, v1, v25

    .line 203
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    add-double/2addr v3, v15

    sub-double v25, v25, v1

    .line 207
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double v25, v25, v1

    if-gez v0, :cond_1

    div-double v29, v7, v3

    div-double v0, v11, v3

    div-double v5, v13, v3

    div-double v2, v25, v3

    move-wide/from16 v14, v29

    move-wide/from16 v31, v2

    move-wide v2, v5

    move-wide v6, v0

    move-wide/from16 v4, v31

    goto :goto_4

    :cond_1
    div-double v29, v3, v7

    div-double v0, v11, v7

    div-double v2, v25, v7

    div-double v4, v13, v7

    move-wide v6, v0

    move-wide/from16 v14, v29

    :goto_4
    const/4 v8, 0x0

    neg-double v4, v4

    const/4 v9, 0x1

    .line 348
    invoke-static {v4, v5, v9}, Lcom/nwd/dsp/uitls/DspAlgorithm;->ak7602_double2doublecoefficient(DI)J

    move-result-wide v4

    aput-wide v4, v18, v8

    neg-double v0, v0

    .line 349
    invoke-static {v0, v1, v9}, Lcom/nwd/dsp/uitls/DspAlgorithm;->ak7602_double2doublecoefficient(DI)J

    move-result-wide v0

    aput-wide v0, v18, v9

    .line 350
    invoke-static {v2, v3, v9}, Lcom/nwd/dsp/uitls/DspAlgorithm;->ak7602_double2doublecoefficient(DI)J

    move-result-wide v0

    const/4 v2, 0x2

    aput-wide v0, v18, v2

    const/4 v0, 0x3

    .line 351
    invoke-static {v6, v7, v9}, Lcom/nwd/dsp/uitls/DspAlgorithm;->ak7602_double2doublecoefficient(DI)J

    move-result-wide v3

    aput-wide v3, v18, v0

    const/4 v0, 0x4

    move/from16 v1, p5

    if-ne v1, v9, :cond_2

    .line 355
    invoke-static {v14, v15, v2}, Lcom/nwd/dsp/uitls/DspAlgorithm;->ak7602_double2doublecoefficient(DI)J

    move-result-wide v1

    aput-wide v1, v18, v0

    goto :goto_5

    .line 359
    :cond_2
    invoke-static {v14, v15, v9}, Lcom/nwd/dsp/uitls/DspAlgorithm;->ak7602_double2doublecoefficient(DI)J

    move-result-wide v1

    aput-wide v1, v18, v0

    :goto_5
    return-object v18

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method public static ak7602_double2doublecoefficient(DI)J
    .locals 6

    const-wide/high16 v0, 0x41a0000000000000L    # 1.34217728E8

    mul-double p0, p0, v0

    neg-int p2, p2

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 53
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double p0, p0, v0

    const-wide v0, 0x419ffffffc000000L    # 1.34217727E8

    .line 54
    invoke-static {v0, v1, p0, p1}, Lcom/nwd/dsp/uitls/DspAlgorithm;->min(DD)D

    move-result-wide p0

    const-wide/high16 v0, -0x3e60000000000000L    # -1.34217728E8

    .line 55
    invoke-static {v0, v1, p0, p1}, Lcom/nwd/dsp/uitls/DspAlgorithm;->max(DD)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpg-double p2, p0, v0

    if-gez p2, :cond_0

    const-wide/high16 v0, 0x41b0000000000000L    # 2.68435456E8

    add-double/2addr p0, v0

    :cond_0
    move-wide v0, p0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x41b0000000000000L    # 2.68435456E8

    .line 60
    invoke-static/range {v0 .. v5}, Lcom/nwd/dsp/uitls/DspAlgorithm;->sat(DDD)D

    move-result-wide p0

    double-to-long p0, p0

    const-wide/16 v0, -0x1

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static getEqI2cData(IFI)[B
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x1e

    if-gt p2, v1, :cond_6

    if-gez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-lez v1, :cond_6

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p1, v1

    add-int/lit8 p2, p2, -0xf

    .line 81
    div-int/lit8 p2, p2, 0x2

    const/4 v1, 0x6

    if-le p2, v1, :cond_2

    const/4 p2, 0x6

    .line 90
    :cond_2
    sget-object v1, Lcom/nwd/dsp/uitls/DspAlgorithm;->FREQUENCY:[I

    aget v2, v1, p0

    const/16 v3, 0x2a8

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_3

    .line 92
    sput p2, Lcom/nwd/dsp/uitls/DspAlgorithm;->m680GainTemp:I

    .line 93
    sput p1, Lcom/nwd/dsp/uitls/DspAlgorithm;->m680QTemp:F

    .line 94
    sget v1, Lcom/nwd/dsp/uitls/DspAlgorithm;->m750GainTemp:I

    add-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    .line 95
    sget v1, Lcom/nwd/dsp/uitls/DspAlgorithm;->m750QTemp:F

    add-float/2addr p1, v1

    div-float/2addr p1, v4

    goto :goto_0

    .line 97
    :cond_3
    aget v1, v1, p0

    const/16 v2, 0x2ee

    if-ne v1, v2, :cond_4

    .line 99
    sput p2, Lcom/nwd/dsp/uitls/DspAlgorithm;->m750GainTemp:I

    .line 100
    sput p1, Lcom/nwd/dsp/uitls/DspAlgorithm;->m750QTemp:F

    .line 101
    sget v1, Lcom/nwd/dsp/uitls/DspAlgorithm;->m680GainTemp:I

    add-int/2addr v1, p2

    div-int/lit8 p2, v1, 0x2

    .line 102
    sget v1, Lcom/nwd/dsp/uitls/DspAlgorithm;->m680QTemp:F

    add-float/2addr v1, p1

    div-float p1, v1, v4

    :cond_4
    :goto_0
    move v4, p1

    move v5, p2

    const v1, 0xbb80

    .line 105
    sget-object v2, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_EQ:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    sget-object p1, Lcom/nwd/dsp/uitls/DspAlgorithm;->FREQUENCY:[I

    aget v3, p1, p0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/nwd/dsp/uitls/DspAlgorithm;->Calc_Biquad(ILcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;IFII)[J

    move-result-object p1

    if-eqz p1, :cond_6

    .line 108
    array-length p2, p1

    const/4 v0, 0x4

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 110
    sget-object v1, Lcom/nwd/dsp/uitls/DspAlgorithm;->HEAD:[I

    aget p0, v1, p0

    invoke-static {p0}, Lcom/nwd/dsp/uitls/DspAlgorithm;->int2Bytes(I)[B

    move-result-object p0

    .line 111
    sget-object v1, Lcom/nwd/dsp/uitls/DspAlgorithm;->LOG:Lcom/android/utils/log/JLog;

    const-string v2, "----------------------"

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/nwd/dsp/uitls/DspAlgorithm;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v1, p0}, Lcom/android/utils/log/JLog;->print([B)V

    const/4 v1, 0x0

    .line 113
    invoke-static {p0, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x0

    .line 114
    :goto_1
    array-length v3, p1

    if-ge p0, v3, :cond_5

    .line 116
    aget-wide v3, p1, p0

    long-to-int v4, v3

    invoke-static {v4}, Lcom/nwd/dsp/uitls/DspAlgorithm;->int2Bytes(I)[B

    move-result-object v3

    .line 117
    sget-object v4, Lcom/nwd/dsp/uitls/DspAlgorithm;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v4, v3}, Lcom/android/utils/log/JLog;->print([B)V

    mul-int/lit8 v4, p0, 0x4

    add-int/2addr v4, v0

    .line 118
    invoke-static {v3, v1, p2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 120
    :cond_5
    sget-object p0, Lcom/nwd/dsp/uitls/DspAlgorithm;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    move-object v0, p2

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static getSoundFieldData(II)[B
    .locals 12

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v2, 0xe

    if-le p0, v2, :cond_0

    const/16 p0, 0xe

    :cond_0
    if-le p1, v2, :cond_1

    const/16 p1, 0xe

    :cond_1
    const/4 v3, 0x0

    const/16 v4, 0xff

    if-lt p0, v2, :cond_2

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/16 v8, 0xff

    goto :goto_1

    :cond_2
    if-gtz p0, :cond_3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/16 v7, 0xff

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-lt p1, v2, :cond_4

    const/16 v5, 0xff

    const/16 v6, 0xff

    goto :goto_2

    :cond_4
    if-gtz p1, :cond_5

    const/16 v7, 0xff

    const/16 v8, 0xff

    :cond_5
    :goto_2
    const-string v2, "AudioGainLF="

    const/4 v9, 0x7

    if-lt p0, v9, :cond_7

    if-eq v6, v4, :cond_6

    add-int/lit8 v10, p0, -0x7

    mul-int/lit8 v10, v10, 0x4

    and-int/2addr v10, v4

    add-int/2addr v6, v10

    .line 408
    sget-object v10, Lcom/nwd/dsp/uitls/DspAlgorithm;->LOG:Lcom/android/utils/log/JLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_6
    if-eq v8, v4, :cond_9

    sub-int/2addr p0, v9

    mul-int/lit8 p0, p0, 0x4

    and-int/2addr p0, v4

    add-int/2addr v8, p0

    .line 414
    sget-object p0, Lcom/nwd/dsp/uitls/DspAlgorithm;->LOG:Lcom/android/utils/log/JLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AudioGainLR="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-eq v5, v4, :cond_8

    rsub-int/lit8 v10, p0, 0x7

    mul-int/lit8 v10, v10, 0x4

    and-int/2addr v10, v4

    add-int/2addr v5, v10

    :cond_8
    if-eq v7, v4, :cond_9

    rsub-int/lit8 p0, p0, 0x7

    mul-int/lit8 p0, p0, 0x4

    and-int/2addr p0, v4

    add-int/2addr v7, p0

    :cond_9
    :goto_3
    if-lt p1, v9, :cond_b

    if-eq v6, v4, :cond_a

    add-int/lit8 p0, p1, -0x7

    mul-int/lit8 p0, p0, 0x4

    and-int/2addr p0, v4

    add-int/2addr v6, p0

    .line 437
    sget-object p0, Lcom/nwd/dsp/uitls/DspAlgorithm;->LOG:Lcom/android/utils/log/JLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_a
    if-eq v5, v4, :cond_d

    sub-int/2addr p1, v9

    mul-int/lit8 p1, p1, 0x4

    and-int/lit16 p0, p1, 0xff

    add-int/2addr v5, p0

    .line 443
    sget-object p0, Lcom/nwd/dsp/uitls/DspAlgorithm;->LOG:Lcom/android/utils/log/JLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AudioGainRF="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    if-eq v8, v4, :cond_c

    rsub-int/lit8 p0, p1, 0x7

    mul-int/lit8 p0, p0, 0x4

    and-int/2addr p0, v4

    add-int/2addr v8, p0

    :cond_c
    if-eq v7, v4, :cond_d

    sub-int/2addr v9, p1

    mul-int/lit8 v9, v9, 0x4

    and-int/lit16 p0, v9, 0xff

    add-int/2addr v7, p0

    :cond_d
    :goto_4
    and-int/lit16 p0, v6, 0xff

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    const/4 p0, 0x1

    and-int/lit16 p1, v5, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, p0

    const/4 p0, 0x2

    and-int/lit16 p1, v8, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, p0

    const/4 p0, 0x3

    and-int/lit16 p1, v7, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, p0

    return-object v1
.end method

.method public static int2Bytes(I)[B
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v4, v3, 0x8

    rsub-int/lit8 v4, v4, 0x20

    shr-int v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 131
    aput-byte v4, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static max(DD)D
    .locals 1

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    return-wide p0
.end method

.method public static min(DD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    return-wide p0
.end method

.method public static sat(DDD)D
    .locals 0

    .line 48
    invoke-static {p0, p1, p4, p5}, Lcom/nwd/dsp/uitls/DspAlgorithm;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Lcom/nwd/dsp/uitls/DspAlgorithm;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method
