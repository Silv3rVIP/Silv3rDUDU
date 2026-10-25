.class public Lcom/nwd/audioset/view/nwdview/SparkManager;
.super Ljava/lang/Object;
.source "SparkManager.java"


# static fields
.field private static final BLUR_SIZE:F = 5.0f

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static final PER_SPEED_SEC:F = 1.0f

.field private static final SPARK_RADIUS:F = 2.0f


# instance fields
.field private X:I

.field private Y:I

.field private c1:Landroid/graphics/Point;

.field private c2:Landroid/graphics/Point;

.field private end:Landroid/graphics/Point;

.field public isActive:Z

.field private mCurDistance:F

.field private mDistance:F

.field private mDistanceRange:I

.field private mHeight:I

.field private mRandom:Ljava/util/Random;

.field private mSparkPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private radius:F

.field private start:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "TableView"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/audioset/view/nwdview/SparkManager;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->radius:F

    .line 30
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mDistance:F

    .line 33
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mCurDistance:F

    .line 45
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mRandom:Ljava/util/Random;

    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->start:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->end:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->c1:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->c2:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->isActive:Z

    .line 56
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/SparkManager;->setSparkPaint()V

    return-void
.end method

.method private CalculateBezierPoint(FLandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float v1, p1, p1

    mul-float v2, v0, v0

    mul-float v3, v2, v0

    mul-float v4, v1, p1

    .line 215
    new-instance v5, Landroid/graphics/Point;

    iget v6, p2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float p2, p2, v3

    float-to-int p2, p2

    invoke-direct {v5, v6, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 216
    iget p2, v5, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v2, v2, v3

    mul-float v2, v2, p1

    iget p1, p3, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    mul-float p1, p1, v2

    add-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, v5, Landroid/graphics/Point;->x:I

    .line 217
    iget p1, v5, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget p2, p3, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float v2, v2, p2

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, v5, Landroid/graphics/Point;->y:I

    .line 218
    iget p1, v5, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    mul-float v0, v0, v3

    mul-float v0, v0, v1

    iget p2, p4, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v5, Landroid/graphics/Point;->x:I

    .line 219
    iget p1, v5, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget p2, p4, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float v0, v0, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, v5, Landroid/graphics/Point;->y:I

    .line 220
    iget p1, v5, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p2, p5, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    mul-float p2, p2, v4

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v5, Landroid/graphics/Point;->x:I

    .line 221
    iget p1, v5, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget p2, p5, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float v4, v4, p2

    add-float/2addr p1, v4

    float-to-int p1, p1

    iput p1, v5, Landroid/graphics/Point;->y:I

    return-object v5
.end method

.method private getRandom(II)I
    .locals 0

    if-eqz p2, :cond_0

    .line 182
    iget-object p2, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mRandom:Ljava/util/Random;

    div-int/lit8 p1, p1, 0x4

    invoke-virtual {p2, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    goto :goto_0

    .line 179
    :cond_0
    iget-object p2, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mRandom:Ljava/util/Random;

    invoke-virtual {p2, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private getRandomPNValue(I)I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 p1, p1, 0x0

    :goto_0
    return p1
.end method

.method private getRandomPoint(III)Landroid/graphics/Point;
    .locals 3

    if-gtz p3, :cond_0

    const/4 p3, 0x1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, p3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    mul-int p3, p3, p3

    mul-int v1, v0, v0

    sub-int/2addr p3, v1

    int-to-double v1, p3

    .line 162
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int p3, v1

    .line 164
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/nwdview/SparkManager;->getRandomPNValue(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 165
    invoke-direct {p0, p3}, Lcom/nwd/audioset/view/nwdview/SparkManager;->getRandomPNValue(I)I

    move-result p3

    add-int/2addr p2, p3

    .line 167
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p3
.end method

.method private setSparkPaint()V
    .locals 4

    .line 231
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mSparkPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 233
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 238
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mSparkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 239
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mSparkPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mSparkPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {v1, v3, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method

.method private updateSparkPath()V
    .locals 6

    .line 133
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mCurDistance:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mCurDistance:F

    .line 135
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mDistance:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    const/4 v5, 0x0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    cmpl-float v4, v0, v5

    if-eqz v4, :cond_0

    div-float/2addr v2, v3

    div-float/2addr v0, v2

    mul-float v0, v0, v3

    .line 137
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->radius:F

    goto :goto_0

    .line 140
    :cond_0
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mCurDistance:F

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mDistance:F

    div-float v4, v2, v3

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    cmpg-float v4, v0, v2

    if-gez v4, :cond_1

    div-float/2addr v2, v3

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    mul-float v0, v0, v3

    sub-float/2addr v3, v0

    .line 142
    iput v3, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->radius:F

    goto :goto_0

    .line 145
    :cond_1
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mCurDistance:F

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mDistance:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 147
    iput v5, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mCurDistance:F

    .line 148
    iput v5, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mDistance:F

    .line 149
    iput v5, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->radius:F

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public drawSpark(Landroid/graphics/Canvas;II[I)[I
    .locals 17

    move-object/from16 v6, p0

    move/from16 v0, p2

    .line 68
    iput v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->X:I

    move/from16 v0, p3

    .line 69
    iput v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->Y:I

    const/4 v7, 0x0

    .line 70
    aget v0, p4, v7

    int-to-float v0, v0

    iput v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mCurDistance:F

    const/4 v8, 0x1

    .line 71
    aget v1, p4, v8

    int-to-float v1, v1

    iput v1, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mDistance:F

    .line 73
    iget v2, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mWidth:I

    div-int/lit8 v2, v2, 0x14

    iput v2, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mDistanceRange:I

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 75
    iget-boolean v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->isActive:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mRandom:Ljava/util/Random;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-direct {v6, v2, v0}, Lcom/nwd/audioset/view/nwdview/SparkManager;->getRandom(II)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v0, v0

    iput v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mDistance:F

    const/4 v0, 0x0

    .line 78
    iput v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mCurDistance:F

    .line 80
    new-instance v0, Landroid/graphics/Point;

    iget v1, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->X:I

    iget v2, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->Y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->start:Landroid/graphics/Point;

    .line 81
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->start:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mDistance:F

    float-to-int v2, v2

    invoke-direct {v6, v0, v1, v2}, Lcom/nwd/audioset/view/nwdview/SparkManager;->getRandomPoint(III)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->end:Landroid/graphics/Point;

    .line 82
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->start:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->start:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mRandom:Ljava/util/Random;

    iget v3, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mWidth:I

    div-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-direct {v6, v0, v1, v2}, Lcom/nwd/audioset/view/nwdview/SparkManager;->getRandomPoint(III)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->c1:Landroid/graphics/Point;

    .line 83
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->end:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->end:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mRandom:Ljava/util/Random;

    iget v3, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mWidth:I

    div-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-direct {v6, v0, v1, v2}, Lcom/nwd/audioset/view/nwdview/SparkManager;->getRandomPoint(III)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->c2:Landroid/graphics/Point;

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->start:Landroid/graphics/Point;

    aget v1, p4, v16

    aget v2, p4, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 89
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->end:Landroid/graphics/Point;

    aget v1, p4, v14

    aget v2, p4, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 90
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->c1:Landroid/graphics/Point;

    aget v1, p4, v12

    aget v2, p4, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 91
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->c2:Landroid/graphics/Point;

    aget v1, p4, v10

    aget v2, p4, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 95
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/nwd/audioset/view/nwdview/SparkManager;->updateSparkPath()V

    .line 97
    iget v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mCurDistance:F

    iget v1, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mDistance:F

    div-float v1, v0, v1

    iget-object v2, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->start:Landroid/graphics/Point;

    iget-object v3, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->c1:Landroid/graphics/Point;

    iget-object v4, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->c2:Landroid/graphics/Point;

    iget-object v5, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->end:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nwd/audioset/view/nwdview/SparkManager;->CalculateBezierPoint(FLandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 99
    iget-object v1, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mSparkPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    iget-object v3, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mRandom:Ljava/util/Random;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v4

    iget-object v5, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mRandom:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v9, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mRandom:Ljava/util/Random;

    invoke-virtual {v9, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/2addr v9, v4

    invoke-static {v2, v3, v5, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->radius:F

    iget-object v3, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mSparkPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 105
    iget v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mCurDistance:F

    iget v1, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->mDistance:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    .line 107
    aput v7, p4, v7

    .line 108
    aput v7, p4, v8

    goto :goto_1

    :cond_1
    float-to-int v0, v0

    .line 113
    aput v0, p4, v7

    float-to-int v0, v1

    .line 114
    aput v0, p4, v8

    .line 115
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->start:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    aput v0, p4, v16

    .line 116
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->start:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    aput v0, p4, v15

    .line 117
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->end:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    aput v0, p4, v14

    .line 118
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->end:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    aput v0, p4, v13

    .line 119
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->c1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    aput v0, p4, v12

    .line 120
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->c1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    aput v0, p4, v11

    .line 121
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->c2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    aput v0, p4, v10

    .line 122
    iget-object v0, v6, Lcom/nwd/audioset/view/nwdview/SparkManager;->c2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/16 v1, 0x9

    aput v0, p4, v1

    :goto_1
    return-object p4
.end method

.method public setSize(II)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mWidth:I

    .line 63
    iput p2, p0, Lcom/nwd/audioset/view/nwdview/SparkManager;->mHeight:I

    return-void
.end method
