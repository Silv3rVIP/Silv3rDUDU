.class public Lcom/nwd/audioset/view/nwdview/PointProgressView;
.super Landroid/view/View;
.source "PointProgressView.java"


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;


# instance fields
.field private mCount:I

.field private mCurrentValue:I

.field private mDegrees:[I

.field private mFromDegree:I

.field private mHeight:I

.field private mOneDegree:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPointCenter:Landroid/graphics/Point;

.field private mPointD:Landroid/graphics/Bitmap;

.field private mPointN:Landroid/graphics/Bitmap;

.field private mRealRadius:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "PointProgressView"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mCurrentValue:I

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mWidth:I

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mCurrentValue:I

    const/4 v1, -0x1

    .line 63
    iput v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mWidth:I

    iput v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mHeight:I

    .line 33
    sget-object v2, Lcom/nwd/audioset/R$styleable;->PointProgressView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x12

    .line 34
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mCount:I

    .line 35
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mDegrees:[I

    const/4 p2, 0x1

    const/16 v2, -0x5a

    .line 36
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mFromDegree:I

    const/4 v2, 0x2

    const/16 v3, 0xc

    .line 37
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mOneDegree:I

    .line 39
    :goto_0
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mCount:I

    if-ge v0, v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mDegrees:[I

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mFromDegree:I

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mOneDegree:I

    mul-int v4, v4, v0

    add-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPointN:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v0, 0x3

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPointD:Landroid/graphics/Bitmap;

    .line 53
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPaint:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 57
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mCurrentValue:I

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mWidth:I

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mHeight:I

    return-void
.end method

.method private measureSize(I)I
    .locals 2

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPointD:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPointN:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mHeight:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mCount:I

    if-ge v0, v1, :cond_d

    .line 112
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mDegrees:[I

    aget v1, v1, v0

    :goto_1
    if-gez v1, :cond_1

    add-int/lit16 v1, v1, 0x168

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v2, 0x168

    if-le v1, v2, :cond_2

    add-int/lit16 v1, v1, -0x168

    goto :goto_2

    :cond_2
    int-to-double v3, v1

    .line 124
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_b

    if-ne v1, v2, :cond_3

    goto/16 :goto_5

    :cond_3
    const/16 v7, 0x5a

    if-lez v1, :cond_4

    if-ge v1, v7, :cond_4

    .line 134
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mRealRadius:I

    int-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v1

    .line 135
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mRealRadius:I

    int-to-double v7, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    :goto_3
    sub-double/2addr v1, v7

    goto/16 :goto_7

    :cond_4
    if-ne v1, v7, :cond_5

    .line 139
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mRealRadius:I

    add-int/2addr v1, v2

    int-to-double v5, v1

    .line 140
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    goto/16 :goto_6

    :cond_5
    const/16 v8, 0xb4

    if-le v1, v7, :cond_6

    if-ge v1, v8, :cond_6

    .line 144
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mRealRadius:I

    int-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v1

    .line 145
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mRealRadius:I

    int-to-double v7, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    :goto_4
    add-double/2addr v1, v7

    goto/16 :goto_7

    :cond_6
    if-ne v1, v8, :cond_7

    .line 149
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v5, v1

    .line 150
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mRealRadius:I

    add-int/2addr v1, v2

    goto/16 :goto_6

    :cond_7
    const/16 v7, 0x10e

    if-le v1, v8, :cond_8

    if-ge v1, v7, :cond_8

    .line 154
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mRealRadius:I

    int-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v1, v5

    .line 155
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mRealRadius:I

    int-to-double v7, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    :cond_8
    if-ne v1, v7, :cond_9

    .line 159
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mRealRadius:I

    sub-int/2addr v1, v2

    int-to-double v5, v1

    .line 160
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_6

    :cond_9
    if-le v1, v7, :cond_a

    if-ge v1, v2, :cond_a

    .line 164
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mRealRadius:I

    int-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v1, v5

    .line 165
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mRealRadius:I

    int-to-double v7, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_3

    :cond_a
    move-wide v1, v5

    goto :goto_7

    .line 129
    :cond_b
    :goto_5
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v5, v1

    .line 130
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mRealRadius:I

    sub-int/2addr v1, v2

    :goto_6
    int-to-double v1, v1

    .line 170
    :goto_7
    iget v3, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mCurrentValue:I

    if-gt v3, v0, :cond_c

    .line 172
    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPointN:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-float v4, v5

    iget-object v5, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPointN:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v5

    double-to-float v1, v1

    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 177
    :cond_c
    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPointD:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-float v4, v5

    iget-object v5, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPointD:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v5

    double-to-float v1, v1

    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    :goto_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 65
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 66
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPointD:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPointN:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->measureSize(I)I

    move-result p1

    .line 72
    invoke-direct {p0, p2}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->measureSize(I)I

    move-result p2

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 75
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mWidth:I

    .line 76
    iput p2, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mHeight:I

    .line 77
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 78
    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPointN:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mRealRadius:I

    .line 79
    new-instance v0, Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mPointCenter:Landroid/graphics/Point;

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setMeasuredDimension(II)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1, p1}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    if-gez p1, :cond_0

    .line 97
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mCount:I

    if-ge p1, v0, :cond_1

    .line 99
    :cond_0
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/PointProgressView;->mCurrentValue:I

    .line 100
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->invalidate()V

    :cond_1
    return-void
.end method
