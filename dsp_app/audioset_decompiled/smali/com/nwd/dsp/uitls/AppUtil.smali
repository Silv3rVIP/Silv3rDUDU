.class public Lcom/nwd/dsp/uitls/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# static fields
.field public static final PLAT_K2401:Ljava/lang/String; = "K2401"

.field public static final PLAT_N70:Ljava/lang/String; = "N70"

.field public static final PLAT_T60:Ljava/lang/String; = "T60"

.field public static final PLAT_T60_XC_S2H603:Ljava/lang/String; = "T60_XC"

.field private static final TAG:Ljava/lang/String; = "dsp3-AppUtil"

.field private static instance:Lcom/nwd/dsp/uitls/AppUtil;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HFrequency(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 124
    invoke-static {p0}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result p0

    const/16 v0, 0x3e7

    if-ge p0, v0, :cond_0

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    .line 130
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "0.#"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v0, p0

    .line 131
    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static QValue(I)I
    .locals 1

    const/16 v0, 0xa

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x1e

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x1a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x16

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x12

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x0

    :goto_0
    :pswitch_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static QgetValue(I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const/16 v1, 0xa

    if-eq p0, v1, :cond_5

    const/16 v1, 0xe

    if-eq p0, v1, :cond_4

    const/16 v1, 0x12

    if-eq p0, v1, :cond_3

    const/16 v1, 0x16

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_0
    return v0
.end method

.method public static area(I)Ljava/lang/String;
    .locals 2

    const-string v0, "area_one"

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "area_four"

    goto :goto_0

    :cond_1
    const-string v0, "area_three"

    goto :goto_0

    :cond_2
    const-string v0, "area_two"

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static areaHFValue(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_four()I

    move-result p0

    goto :goto_0

    .line 203
    :cond_1
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_three()I

    move-result p0

    goto :goto_0

    .line 200
    :cond_2
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_two()I

    move-result p0

    goto :goto_0

    .line 197
    :cond_3
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_one()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static areaHQValue(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_four_qvalue()I

    move-result p0

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_three_qvalue()I

    move-result p0

    goto :goto_0

    .line 220
    :cond_2
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_two_qvalue()I

    move-result p0

    goto :goto_0

    .line 217
    :cond_3
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_one_qvalue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static areaLFValue(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_four()I

    move-result p0

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_three()I

    move-result p0

    goto :goto_0

    .line 240
    :cond_2
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_two()I

    move-result p0

    goto :goto_0

    .line 237
    :cond_3
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_one()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static areaLQValue(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_four_qvalue()I

    move-result p0

    goto :goto_0

    .line 263
    :cond_1
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_three_qvalue()I

    move-result p0

    goto :goto_0

    .line 260
    :cond_2
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_two_qvalue()I

    move-result p0

    goto :goto_0

    .line 257
    :cond_3
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_one_qvalue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static bassFrequency(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x190

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x12c

    goto :goto_0

    :pswitch_2
    const/16 p0, 0xfa

    goto :goto_0

    :pswitch_3
    const/16 p0, 0xc8

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x96

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x64

    goto :goto_0

    :pswitch_6
    const/16 p0, 0x3c

    goto :goto_0

    :pswitch_7
    const/16 p0, 0x28

    :goto_0
    return p0

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

.method public static disposeGValue([I)[Ljava/lang/String;
    .locals 3

    .line 106
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 112
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 113
    aget v2, p0, v1

    add-int/lit8 v2, v2, -0xc

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static disposeQValue([I)[Ljava/lang/String;
    .locals 4

    .line 95
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 96
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 97
    aget v2, p0, v1

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->floatToFormat([F)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static floatToFormat([F)[Ljava/lang/String;
    .locals 3

    .line 64
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 65
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 66
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static floatToFormat([I)[Ljava/lang/String;
    .locals 7

    .line 72
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 73
    new-instance v1, Ljava/text/DecimalFormat;

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v3, "0.#"

    invoke-direct {v1, v3, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 74
    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    const/4 v2, 0x0

    .line 75
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 77
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 78
    aget v3, p0, v2

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_0

    .line 80
    aget v3, p0, v2

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "k"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static floatToInt([F)[I
    .locals 3

    .line 55
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 56
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 57
    aget v2, p0, v1

    float-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static frequenceToReal(I)I
    .locals 2

    const/16 v0, 0x4e20

    const/16 v1, 0x14

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x14

    goto/16 :goto_0

    :pswitch_1
    const/16 v0, 0x4650

    goto/16 :goto_0

    :pswitch_2
    const/16 v0, 0x3e80

    goto/16 :goto_0

    :pswitch_3
    const/16 v0, 0x30d4

    goto/16 :goto_0

    :pswitch_4
    const/16 v0, 0x2710

    goto/16 :goto_0

    :pswitch_5
    const/16 v0, 0x1f40

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x189c

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x1388

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xfa0

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xc1c

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x9c4

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x7d0

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x640

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x4b0

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x3e8

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x320

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x276

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x1f4

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x190

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x13b

    goto :goto_0

    :pswitch_14
    const/16 v0, 0xfa

    goto :goto_0

    :pswitch_15
    const/16 v0, 0xc8

    goto :goto_0

    :pswitch_16
    const/16 v0, 0xa0

    goto :goto_0

    :pswitch_17
    const/16 v0, 0x7d

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x64

    goto :goto_0

    :pswitch_19
    const/16 v0, 0x50

    goto :goto_0

    :pswitch_1a
    const/16 v0, 0x3f

    goto :goto_0

    :pswitch_1b
    const/16 v0, 0x32

    goto :goto_0

    :pswitch_1c
    const/16 v0, 0x28

    goto :goto_0

    :pswitch_1d
    const/16 v0, 0x20

    goto :goto_0

    :pswitch_1e
    const/16 v0, 0x19

    :goto_0
    :pswitch_1f
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public static getInstance()Lcom/nwd/dsp/uitls/AppUtil;
    .locals 1

    .line 39
    sget-object v0, Lcom/nwd/dsp/uitls/AppUtil;->instance:Lcom/nwd/dsp/uitls/AppUtil;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/nwd/dsp/uitls/AppUtil;

    invoke-direct {v0}, Lcom/nwd/dsp/uitls/AppUtil;-><init>()V

    sput-object v0, Lcom/nwd/dsp/uitls/AppUtil;->instance:Lcom/nwd/dsp/uitls/AppUtil;

    .line 42
    :cond_0
    sget-object v0, Lcom/nwd/dsp/uitls/AppUtil;->instance:Lcom/nwd/dsp/uitls/AppUtil;

    return-object v0
.end method

.method public static iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 452
    :try_start_0
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v3, 0x10100a7

    const v4, 0x10100a1

    new-array v5, v1, [I

    aput v3, v5, v0

    .line 455
    invoke-virtual {v2, v5, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v1, [I

    aput v4, v3, v0

    .line 456
    invoke-virtual {v2, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v1, [I

    const v3, -0x10100a7

    aput v3, p2, v0

    .line 457
    invoke-virtual {v2, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 458
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-array p1, v1, [Ljava/lang/Object;

    .line 460
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iamgeSetSrc errror="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "dsp3-AppUtil"

    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static intToFloat([I)[F
    .locals 3

    .line 46
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 47
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 48
    aget v2, p0, v1

    int-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static intToStr([I)[Ljava/lang/String;
    .locals 0

    .line 90
    invoke-static {p0}, Lcom/nwd/dsp/uitls/AppUtil;->floatToFormat([I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isN65OrN61()Z
    .locals 2

    .line 502
    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isT57()Z
    .locals 2

    .line 506
    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 468
    :try_start_0
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v3, 0x10100a7

    const v4, 0x10100a1

    new-array v5, v1, [I

    aput v3, v5, v0

    .line 471
    invoke-virtual {v2, v5, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v1, [I

    aput v4, v3, v0

    .line 472
    invoke-virtual {v2, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v1, [I

    const v3, -0x10100a7

    aput v3, p2, v0

    .line 473
    invoke-virtual {v2, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 474
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-array p1, v1, [Ljava/lang/Object;

    .line 476
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewSetBG errror="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "dsp3-AppUtil"

    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 484
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v2, 0x10100a7

    const v3, 0x10100a1

    const v4, 0x101009e

    new-array v5, v0, [I

    aput v2, v5, p3

    .line 488
    invoke-virtual {v1, v5, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v0, [I

    aput v3, v2, p3

    .line 489
    invoke-virtual {v1, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v0, [I

    aput v4, v2, p3

    .line 490
    invoke-virtual {v1, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v0, [I

    const v2, -0x10100a7

    aput v2, p2, p3

    .line 491
    invoke-virtual {v1, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 492
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-array p1, v0, [Ljava/lang/Object;

    .line 494
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "viewSetBG errror="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "dsp3-AppUtil"

    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
