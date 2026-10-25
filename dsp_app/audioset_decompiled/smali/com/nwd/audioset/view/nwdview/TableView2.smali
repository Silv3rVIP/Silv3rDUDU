.class public Lcom/nwd/audioset/view/nwdview/TableView2;
.super Landroid/view/View;
.source "TableView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/view/nwdview/TableView2$TableViewDataListener;,
        Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;
    }
.end annotation


# static fields
.field private static final ACCELERATION_DIVIDER:I = 0x50

.field private static final ACCELERATION_DIVIDER_LOW_MENORY:I = 0x1e

.field public static final COLORS:[I

.field private static final DEBUG_DRAW_WRAP:Z = false

.field private static final EXTREME_TOUCH_OFFSET:I = 0xa

.field private static final REFFRESH_DELAY:I = 0x5

.field private static final REFFRESH_DELAY_LOW_MENORY:I = 0x19

.field private static final TAG:Ljava/lang/String; = "TableView2"

.field private static final UPDATE_DELAY:I = 0x32

.field private static final UPDATE_DELAY_LOW_MENORY:I = 0x15e

.field private static final VERTICAL_GRID_VALUE:I = 0x5

.field private static final Y_COUNT:I = 0x5

.field private static mGlobalMaxValue:I = 0x14


# instance fields
.field private mAcceleration:[F

.field private mAccelerationDivider:I

.field private mAnimProgress:F

.field private mBottomTextHeight:I

.field private mCalculateTouchOffset:F

.field private mColorLineRightOffset:I

.field private mColorfulLinearGradient:Landroid/graphics/LinearGradient;

.field private mCoordinateXInPixel:[F

.field private mCoordinateXValues:[F

.field private mCoordinateYValues:[F

.field private mCoordinatorPaint:Landroid/graphics/Paint;

.field private mCurrentQvaluePos:I

.field private mDecimalFormat:Ljava/text/DecimalFormat;

.field private mDotPaint:Landroid/graphics/Paint;

.field private mGridHeight:F

.field private mGridWidth:F

.field private mHandler:Landroid/os/Handler;

.field private mHeightPerValue:F

.field private mLastTouchX:F

.field private mLeftTextWidth:I

.field private mOneGridHeight:F

.field private mOneGridWidth:F

.field private mQvalueTempWave:[F

.field private mQvalueWave:[F

.field private mRefreshDelay:I

.field private mTableViewListener:Lcom/nwd/audioset/view/nwdview/TableView2$TableViewDataListener;

.field private mTempWave:[F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTopUnitHeight:I

.field private mTouchX:F

.field private mTouchY:F

.field private mUpdateDelay:I

.field private mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;

.field private mWave:[F

.field private mWaveValueByTouch:[F

.field private mWrapLinePaint:Landroid/graphics/Paint;

.field private mWrapPaint:Landroid/graphics/Paint;

.field private mXUnit:Ljava/lang/String;

.field private mYUnit:Ljava/lang/String;

.field tempWave:[F

.field x:I

.field y:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/16 v3, 0x80

    .line 77
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v0, v2

    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/nwd/audioset/view/nwdview/TableView2;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/nwd/audioset/view/nwdview/TableView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcom/nwd/audioset/view/nwdview/TableView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 47
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCalculateTouchOffset:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 64
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mAnimProgress:F

    .line 103
    new-instance p1, Lcom/nwd/audioset/view/nwdview/TableView2$1;

    invoke-direct {p1, p0}, Lcom/nwd/audioset/view/nwdview/TableView2$1;-><init>(Lcom/nwd/audioset/view/nwdview/TableView2;)V

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 219
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCurrentQvaluePos:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 491
    iput p2, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mLastTouchX:F

    const/16 p2, 0x8

    new-array p2, p2, [F

    .line 494
    iput-object p2, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->tempWave:[F

    .line 496
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->x:I

    const/4 p1, 0x0

    .line 497
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    .line 92
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/audioset/view/nwdview/TableView2;)[F
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mAcceleration:[F

    return-object p0
.end method

.method static synthetic access$002(Lcom/nwd/audioset/view/nwdview/TableView2;[F)[F
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mAcceleration:[F

    return-object p1
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/nwdview/TableView2;)[F
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWave:[F

    return-object p0
.end method

.method static synthetic access$200(Lcom/nwd/audioset/view/nwdview/TableView2;)Ljava/text/DecimalFormat;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mDecimalFormat:Ljava/text/DecimalFormat;

    return-object p0
.end method

.method static synthetic access$202(Lcom/nwd/audioset/view/nwdview/TableView2;Ljava/text/DecimalFormat;)Ljava/text/DecimalFormat;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mDecimalFormat:Ljava/text/DecimalFormat;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nwd/audioset/view/nwdview/TableView2;)[F
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTempWave:[F

    return-object p0
.end method

.method static synthetic access$400(Lcom/nwd/audioset/view/nwdview/TableView2;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mAccelerationDivider:I

    return p0
.end method

.method static synthetic access$502(Lcom/nwd/audioset/view/nwdview/TableView2;F)F
    .locals 0

    .line 31
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mAnimProgress:F

    return p1
.end method

.method private dp2px(F)I
    .locals 2

    .line 484
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private drawCoordinate(Landroid/graphics/Canvas;)V
    .locals 8

    .line 327
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCoordinateYValues:[F

    if-nez p1, :cond_0

    return-void

    .line 331
    :cond_0
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mGridHeight:F

    const/4 v0, 0x0

    const-string v1, "YCH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingTop()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingBottom()I

    move-result v4

    sub-int/2addr p1, v4

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mBottomTextHeight:I

    sub-int/2addr p1, v4

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTopUnitHeight:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mGridHeight:F

    new-array p1, v3, [Ljava/lang/Object;

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHeight() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",getPaddingTop() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",getPaddingBottom() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v2

    .line 333
    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mGridHeight:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr p1, v4

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mOneGridHeight:F

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr p1, v4

    .line 337
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mHeightPerValue:F

    new-array p1, v3, [Ljava/lang/Object;

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHeight()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "mGridHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mGridHeight:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mHeightPerValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mHeightPerValue:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mOneGridHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mOneGridHeight:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v2

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge p1, v4, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingLeft()I

    .line 345
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getHeight()I

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingBottom()I

    .line 346
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getRight()I

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingRight()I

    .line 352
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCoordinateYValues:[F

    aget v4, v4, p1

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0xf

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 354
    iget-object v5, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    .line 355
    iget v6, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v7, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    .line 357
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingLeft()I

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mLeftTextWidth:I

    div-int/lit8 v5, v5, 0x2

    iget-object v5, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 367
    :cond_2
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCoordinateXValues:[F

    array-length p1, p1

    .line 368
    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mGridWidth:F

    cmpl-float v0, v4, v0

    if-nez v0, :cond_3

    .line 369
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCoordinateXInPixel:[F

    .line 370
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mLeftTextWidth:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mGridWidth:F

    const/high16 v4, 0x41200000    # 10.0f

    add-int/lit8 v5, p1, -0x1

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 371
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mOneGridWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    .line 372
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCalculateTouchOffset:F

    new-array v0, v3, [Ljava/lang/Object;

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGridWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mOneGridWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",mGridHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mOneGridHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " getWidth()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    if-ge v2, p1, :cond_5

    .line 376
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mLeftTextWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mOneGridWidth:F

    int-to-float v3, v2

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    .line 377
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingTop()I

    .line 379
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getHeight()I

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingBottom()I

    .line 380
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCoordinateXInPixel:[F

    aput v0, v1, v2

    .line 383
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCoordinateXValues:[F

    aget v0, v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 385
    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 386
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getHeight()I

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingBottom()I

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mBottomTextHeight:I

    div-int/lit8 v1, v1, 0x2

    .line 387
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    if-nez v2, :cond_4

    .line 390
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mXUnit:Ljava/lang/String;

    .line 391
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingLeft()I

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mLeftTextWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private drawWrap(Landroid/graphics/Canvas;)V
    .locals 14

    .line 401
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCoordinateYValues:[F

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mColorfulLinearGradient:Landroid/graphics/LinearGradient;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 405
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getWidth()I

    move-result v2

    int-to-float v5, v2

    const/4 v6, 0x0

    sget-object v7, Lcom/nwd/audioset/view/nwdview/TableView2;->COLORS:[I

    new-array v8, v1, [F

    fill-array-data v8, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mColorfulLinearGradient:Landroid/graphics/LinearGradient;

    .line 409
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mLeftTextWidth:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTopUnitHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 410
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mAnimProgress:F

    mul-float v4, v4, v5

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mColorLineRightOffset:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 411
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mBottomTextHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 409
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 417
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 418
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 420
    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCoordinateYValues:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    .line 423
    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mLeftTextWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mOneGridWidth:F

    sub-float/2addr v4, v5

    .line 425
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mBottomTextHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mGridHeight:F

    iget-object v7, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTempWave:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    div-float/2addr v7, v3

    mul-float v6, v6, v7

    sub-float/2addr v5, v6

    .line 426
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mBottomTextHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mGridHeight:F

    iget-object v9, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTempWave:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    div-float/2addr v9, v3

    mul-float v7, v7, v9

    sub-float/2addr v6, v7

    sub-float v6, v5, v6

    add-float/2addr v5, v6

    .line 432
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 434
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mBottomTextHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 435
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 439
    :goto_0
    iget-object v7, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTempWave:[F

    array-length v7, v7

    if-ge v8, v7, :cond_4

    .line 441
    iget v7, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mLeftTextWidth:I

    int-to-float v7, v7

    iget v9, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mOneGridWidth:F

    int-to-float v11, v8

    mul-float v9, v9, v11

    add-float/2addr v7, v9

    .line 442
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v9, v11

    iget v11, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mBottomTextHeight:I

    sub-int/2addr v9, v11

    int-to-float v9, v9

    iget v11, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mGridHeight:F

    iget-object v12, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTempWave:[F

    aget v13, v12, v8

    div-float/2addr v13, v3

    mul-float v11, v11, v13

    sub-float/2addr v9, v11

    .line 446
    array-length v11, v12

    sub-int/2addr v11, v10

    if-ne v8, v11, :cond_2

    .line 447
    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mOneGridWidth:F

    add-float/2addr v4, v7

    sub-float v5, v9, v6

    add-float/2addr v5, v9

    goto :goto_1

    .line 450
    :cond_2
    array-length v11, v12

    sub-int/2addr v11, v1

    if-ne v8, v11, :cond_3

    move v6, v9

    .line 456
    :cond_3
    :goto_1
    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 457
    invoke-virtual {v2, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 464
    :cond_4
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 467
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 468
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mBottomTextHeight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 469
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 470
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWrapPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 471
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWrapPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mColorfulLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 472
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWrapPaint:Landroid/graphics/Paint;

    const/16 v3, 0x46

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 473
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWrapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 475
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWrapLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 476
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWrapLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 477
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWrapLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x3e124925
        0x3f36db6e
    .end array-data
.end method

.method private init()V
    .locals 6

    .line 117
    new-instance v0, Landroid/graphics/CornerPathEffect;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 119
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070374

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/nwd/audioset/view/nwdview/TableView2;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mBottomTextHeight:I

    .line 120
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/nwd/audioset/view/nwdview/TableView2;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mColorLineRightOffset:I

    .line 122
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070375

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/nwd/audioset/view/nwdview/TableView2;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mLeftTextWidth:I

    .line 123
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07037b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/nwd/audioset/view/nwdview/TableView2;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTopUnitHeight:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBottomTextHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mBottomTextHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mTopUnitHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTopUnitHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "YCH"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCoordinatorPaint:Landroid/graphics/Paint;

    const v4, -0x333334

    .line 127
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTextPaint:Landroid/graphics/Paint;

    const v4, -0x777778

    .line 130
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {p0, v4}, Lcom/nwd/audioset/view/nwdview/TableView2;->sp2px(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWrapPaint:Landroid/graphics/Paint;

    .line 134
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 136
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWrapLinePaint:Landroid/graphics/Paint;

    const/16 v4, 0xbe

    const/16 v5, 0xf2

    .line 137
    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWrapLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mDotPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    .line 141
    invoke-static {v1, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    sget-boolean v0, Lcom/nwd/dsp/uitls/DspConstant;->LOW_MEMORY:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    .line 144
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mRefreshDelay:I

    const/16 v0, 0x1e

    .line 145
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mAccelerationDivider:I

    const/16 v0, 0x15e

    .line 146
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mUpdateDelay:I

    goto :goto_0

    .line 148
    :cond_0
    iput v2, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mRefreshDelay:I

    const/16 v0, 0x50

    .line 149
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mAccelerationDivider:I

    const/16 v0, 0x32

    .line 150
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mUpdateDelay:I

    :goto_0
    return-void
.end method

.method private print([F)V
    .locals 5

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 555
    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 556
    aget v3, p1, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    array-length v3, p1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const-string v3, ","

    .line 558
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "print="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "YCH"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private sp2px(F)I
    .locals 2

    .line 488
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->drawCoordinate(Landroid/graphics/Canvas;)V

    .line 303
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->drawWrap(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 543
    :cond_0
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTableViewListener:Lcom/nwd/audioset/view/nwdview/TableView2$TableViewDataListener;

    if-eqz p1, :cond_9

    .line 544
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->x:I

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    float-to-int v2, v2

    invoke-interface {p1, v0, v2}, Lcom/nwd/audioset/view/nwdview/TableView2$TableViewDataListener;->setGainDataToSeekBar(II)V

    goto/16 :goto_0

    .line 503
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u539f\u59cbX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TableView2"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u539f\u59cbY: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e00\u4e2aX\u683c\u5b50\u4e3a: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 512
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->x:I

    .line 514
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    int-to-float v2, v0

    div-float/2addr p1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float p1, v2, p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 515
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    .line 517
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e00\u4e2aY\u683c\u5b50\u4e3a: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->tempWave:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 521
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bbe\u7f6e\u70b9: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->x:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->x:I

    const/4 v5, 0x7

    if-le p1, v5, :cond_2

    iput v5, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->x:I

    .line 523
    :cond_2
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->x:I

    if-gez p1, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->x:I

    .line 524
    :cond_3
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    .line 525
    :cond_4
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    const/high16 v6, 0x40800000    # 4.0f

    cmpg-float p1, p1, v6

    if-gtz p1, :cond_5

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    .line 527
    :cond_5
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    const/high16 v0, 0x41900000    # 18.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_6

    iput v2, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    .line 528
    :cond_6
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->x:I

    if-nez p1, :cond_7

    iget p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_7

    .line 529
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    .line 531
    :cond_7
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->x:I

    if-ne p1, v5, :cond_8

    iget p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    const/high16 v0, 0x418c0000    # 17.5f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_8

    .line 532
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    .line 534
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6700\u540e\u8bbe\u7f6e\u70b9: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->tempWave:[F

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->x:I

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->y:F

    aput v2, p1, v0

    .line 536
    invoke-virtual {p0, p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->setWave([F)V

    :cond_9
    :goto_0
    return v1
.end method

.method public setTableDataListener(Lcom/nwd/audioset/view/nwdview/TableView2$TableViewDataListener;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTableViewListener:Lcom/nwd/audioset/view/nwdview/TableView2$TableViewDataListener;

    return-void
.end method

.method public varargs setWave([F)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWave.mWaveLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "YCH"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWave:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 179
    :cond_0
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWave:[F

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTempWave:[F

    if-eqz v0, :cond_2

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 182
    :cond_2
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mTempWave:[F

    :cond_3
    const/4 v0, 0x0

    .line 184
    :goto_0
    array-length v1, p1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_4

    .line 185
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWave:[F

    sget v4, Lcom/nwd/audioset/view/nwdview/TableView2;->mGlobalMaxValue:I

    int-to-float v4, v4

    aget v5, p1, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mWave:[F

    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/nwdview/TableView2;->print([F)V

    .line 191
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    aget v4, p1, v1

    .line 192
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x5

    new-array v0, p1, [F

    .line 200
    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCoordinateYValues:[F

    :goto_2
    if-ge v2, p1, :cond_6

    .line 202
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCoordinateYValues:[F

    mul-int/lit8 v1, v2, 0x5

    int-to-float v1, v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 204
    :cond_6
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;

    if-eqz p1, :cond_7

    .line 205
    invoke-virtual {p1}, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->stopRunning()V

    const/4 p1, 0x0

    .line 206
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;

    .line 208
    :cond_7
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;

    if-nez p1, :cond_8

    .line 209
    new-instance p1, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;

    invoke-direct {p1, p0}, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;-><init>(Lcom/nwd/audioset/view/nwdview/TableView2;)V

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;

    .line 211
    :cond_8
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;

    invoke-virtual {p1}, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->start()V

    return-void
.end method

.method public setYMaxValue(I)V
    .locals 0

    .line 111
    sput p1, Lcom/nwd/audioset/view/nwdview/TableView2;->mGlobalMaxValue:I

    return-void
.end method

.method public varargs setupCoordinator(Ljava/lang/String;Ljava/lang/String;[F)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mXUnit:Ljava/lang/String;

    .line 167
    iput-object p2, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mYUnit:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lcom/nwd/audioset/view/nwdview/TableView2;->mCoordinateXValues:[F

    return-void
.end method

.method public showAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 310
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 311
    new-instance v1, Lcom/nwd/audioset/view/nwdview/TableView2$2;

    invoke-direct {v1, p0}, Lcom/nwd/audioset/view/nwdview/TableView2$2;-><init>(Lcom/nwd/audioset/view/nwdview/TableView2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 319
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
