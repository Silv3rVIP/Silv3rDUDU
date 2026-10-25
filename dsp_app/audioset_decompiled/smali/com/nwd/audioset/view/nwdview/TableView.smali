.class public Lcom/nwd/audioset/view/nwdview/TableView;
.super Landroid/view/View;
.source "TableView.java"

# interfaces
.implements Lcom/nwd/audioset/listener/TopLevelTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;,
        Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;
    }
.end annotation


# static fields
.field private static final ACCELERATION_DIVIDER:I = 0x50

.field private static final ACCELERATION_DIVIDER_LOW_MENORY:I = 0x1e

.field public static COLORS:[I = null

.field public static COLORS_POSITION:[F = null

.field private static final DEBUG_DRAW_WRAP:Z = false

.field private static final EXTREME_TOUCH_OFFSET:I = 0xa

.field public static final QValueCOLORS:[I

.field private static final REFFRESH_DELAY:I = 0x5

.field private static final REFFRESH_DELAY_LOW_MENORY:I = 0xa

.field private static final TAG:Ljava/lang/String; = "TableView"

.field private static final UPDATE_DELAY:I = 0x32

.field private static final UPDATE_DELAY_LOW_MENORY:I = 0xc8

.field private static final VERTICAL_GRID_VALUE:I = 0x5

.field private static final Y_COUNT:I = 0x6

.field private static mGlobalMaxValue:I = 0x18


# instance fields
.field private color_line:Ljava/lang/String;

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

.field private mSparkView:Lcom/nwd/audioset/view/nwdview/SparkView;

.field private mTableViewListener:Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;

.field private mTableViewListener1:Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;

.field private mTempWave:[F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTopUnitHeight:I

.field private mTouchX:F

.field private mTouchY:F

.field private mUpdateDelay:I

.field private mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;

.field private mWave:[F

.field private mWaveValueByTouch:[F

.field private mWrapLinePaint:Landroid/graphics/Paint;

.field private mWrapPaint:Landroid/graphics/Paint;

.field private mXUnit:Ljava/lang/String;

.field private mYUnit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/16 v2, 0x80

    const/16 v3, 0xff

    const/4 v4, 0x0

    .line 80
    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v1, v4

    invoke-static {v4, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x1

    aput v5, v1, v6

    .line 81
    invoke-static {v4, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v7, 0x2

    aput v5, v1, v7

    invoke-static {v4, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v8, 0x3

    aput v5, v1, v8

    invoke-static {v3, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v9, 0x4

    aput v5, v1, v9

    .line 82
    invoke-static {v3, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v10, 0x5

    aput v5, v1, v10

    invoke-static {v3, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v11, 0x6

    aput v5, v1, v11

    sput-object v1, Lcom/nwd/audioset/view/nwdview/TableView;->COLORS:[I

    new-array v1, v0, [I

    .line 83
    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v1, v4

    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v1, v6

    .line 84
    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v1, v7

    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v1, v8

    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v1, v9

    .line 85
    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v1, v10

    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v11

    sput-object v1, Lcom/nwd/audioset/view/nwdview/TableView;->QValueCOLORS:[I

    new-array v0, v0, [F

    .line 86
    fill-array-data v0, :array_0

    sput-object v0, Lcom/nwd/audioset/view/nwdview/TableView;->COLORS_POSITION:[F

    return-void

    :array_0
    .array-data 4
        0x3e124925
        0x3e924925
        0x3edb6db7
        0x3f124925
        0x3f36db6e
        0x3f5b6db7
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/nwd/audioset/view/nwdview/TableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lcom/nwd/audioset/view/nwdview/TableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 48
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCalculateTouchOffset:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 65
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mAnimProgress:F

    const-string p1, "#0070C5"

    .line 78
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->color_line:Ljava/lang/String;

    .line 118
    new-instance p1, Lcom/nwd/audioset/view/nwdview/TableView$1;

    invoke-direct {p1, p0}, Lcom/nwd/audioset/view/nwdview/TableView$1;-><init>(Lcom/nwd/audioset/view/nwdview/TableView;)V

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 238
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCurrentQvaluePos:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 616
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLastTouchX:F

    .line 99
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/audioset/view/nwdview/TableView;)[F
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mAcceleration:[F

    return-object p0
.end method

.method static synthetic access$002(Lcom/nwd/audioset/view/nwdview/TableView;[F)[F
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mAcceleration:[F

    return-object p1
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/nwdview/TableView;)[F
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWave:[F

    return-object p0
.end method

.method static synthetic access$200(Lcom/nwd/audioset/view/nwdview/TableView;)Ljava/text/DecimalFormat;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mDecimalFormat:Ljava/text/DecimalFormat;

    return-object p0
.end method

.method static synthetic access$202(Lcom/nwd/audioset/view/nwdview/TableView;Ljava/text/DecimalFormat;)Ljava/text/DecimalFormat;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mDecimalFormat:Ljava/text/DecimalFormat;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nwd/audioset/view/nwdview/TableView;)[F
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTempWave:[F

    return-object p0
.end method

.method static synthetic access$400(Lcom/nwd/audioset/view/nwdview/TableView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mAccelerationDivider:I

    return p0
.end method

.method static synthetic access$500(Lcom/nwd/audioset/view/nwdview/TableView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mUpdateDelay:I

    return p0
.end method

.method static synthetic access$600(Lcom/nwd/audioset/view/nwdview/TableView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mRefreshDelay:I

    return p0
.end method

.method static synthetic access$702(Lcom/nwd/audioset/view/nwdview/TableView;F)F
    .locals 0

    .line 32
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mAnimProgress:F

    return p1
.end method

.method private dp2px(F)I
    .locals 2

    .line 609
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getResources()Landroid/content/res/Resources;

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

    .line 346
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateYValues:[F

    if-nez p1, :cond_0

    return-void

    .line 350
    :cond_0
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mGridHeight:F

    const/4 v0, 0x0

    const-string v1, "YCH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingTop()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr p1, v4

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mBottomTextHeight:I

    sub-int/2addr p1, v4

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTopUnitHeight:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mGridHeight:F

    new-array p1, v3, [Ljava/lang/Object;

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHeight() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",getPaddingTop() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",getPaddingBottom() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v2

    .line 352
    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mGridHeight:F

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr p1, v4

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mOneGridHeight:F

    div-float/2addr p1, v4

    .line 356
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mHeightPerValue:F

    new-array p1, v3, [Ljava/lang/Object;

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHeight()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "mGridHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mGridHeight:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mHeightPerValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mHeightPerValue:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mOneGridHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mOneGridHeight:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v2

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v4, 0x6

    if-ge p1, v4, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingLeft()I

    .line 364
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getHeight()I

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingBottom()I

    .line 365
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getRight()I

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingRight()I

    .line 371
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateYValues:[F

    aget v4, v4, p1

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0xf

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 373
    iget-object v5, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    .line 374
    iget v6, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v7, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    .line 376
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingLeft()I

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLeftTextWidth:I

    div-int/lit8 v5, v5, 0x2

    iget-object v5, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 386
    :cond_2
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateXValues:[F

    array-length p1, p1

    .line 387
    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mGridWidth:F

    cmpl-float v0, v4, v0

    if-nez v0, :cond_3

    .line 388
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateXInPixel:[F

    .line 389
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLeftTextWidth:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mGridWidth:F

    const/high16 v4, 0x41200000    # 10.0f

    add-int/lit8 v5, p1, -0x1

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 390
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mOneGridWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    .line 391
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCalculateTouchOffset:F

    new-array v0, v3, [Ljava/lang/Object;

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGridWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mOneGridWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",mGridHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mOneGridHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " getWidth()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    if-ge v2, p1, :cond_5

    .line 395
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLeftTextWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mOneGridWidth:F

    int-to-float v3, v2

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    .line 396
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingTop()I

    .line 398
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getHeight()I

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingBottom()I

    .line 399
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateXInPixel:[F

    aput v0, v1, v2

    .line 402
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateXValues:[F

    aget v0, v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 404
    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 405
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getHeight()I

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingBottom()I

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mBottomTextHeight:I

    div-int/lit8 v1, v1, 0x2

    .line 406
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    if-nez v2, :cond_4

    .line 409
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mXUnit:Ljava/lang/String;

    .line 410
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingLeft()I

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLeftTextWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private drawWrap(Landroid/graphics/Canvas;)V
    .locals 14

    .line 420
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateYValues:[F

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mColorfulLinearGradient:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_1

    .line 424
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    const/4 v5, 0x0

    sget-object v6, Lcom/nwd/audioset/view/nwdview/TableView;->COLORS:[I

    sget-object v7, Lcom/nwd/audioset/view/nwdview/TableView;->COLORS_POSITION:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mColorfulLinearGradient:Landroid/graphics/LinearGradient;

    .line 428
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLeftTextWidth:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTopUnitHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 429
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mAnimProgress:F

    mul-float v3, v3, v4

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mColorLineRightOffset:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 430
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mBottomTextHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 428
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 436
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 437
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 439
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateYValues:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    .line 442
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v4, 0x780

    const/high16 v5, 0x40000000    # 2.0f

    if-lt v3, v4, :cond_2

    .line 444
    iget v3, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLeftTextWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mOneGridWidth:F

    div-float/2addr v4, v5

    goto :goto_0

    .line 447
    :cond_2
    iget v3, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLeftTextWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mOneGridWidth:F

    :goto_0
    sub-float/2addr v3, v4

    .line 450
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mBottomTextHeight:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mGridHeight:F

    iget-object v7, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTempWave:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    div-float/2addr v7, v2

    mul-float v6, v6, v7

    sub-float/2addr v4, v6

    .line 451
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mBottomTextHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mGridHeight:F

    iget-object v9, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTempWave:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    div-float/2addr v9, v2

    mul-float v7, v7, v9

    sub-float/2addr v6, v7

    sub-float v6, v4, v6

    add-float/2addr v4, v6

    .line 457
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 459
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mBottomTextHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 460
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 464
    :goto_1
    iget-object v7, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTempWave:[F

    array-length v7, v7

    if-ge v8, v7, :cond_5

    .line 466
    iget v7, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLeftTextWidth:I

    int-to-float v7, v7

    iget v9, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mOneGridWidth:F

    int-to-float v11, v8

    mul-float v9, v9, v11

    add-float/2addr v7, v9

    .line 467
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v9, v11

    iget v11, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mBottomTextHeight:I

    sub-int/2addr v9, v11

    int-to-float v9, v9

    iget v11, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mGridHeight:F

    iget-object v12, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTempWave:[F

    aget v13, v12, v8

    div-float/2addr v13, v2

    mul-float v11, v11, v13

    sub-float/2addr v9, v11

    .line 471
    array-length v11, v12

    sub-int/2addr v11, v10

    if-ne v8, v11, :cond_3

    .line 472
    iget v3, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mOneGridWidth:F

    add-float/2addr v3, v7

    sub-float v4, v9, v6

    add-float/2addr v4, v9

    goto :goto_2

    .line 475
    :cond_3
    array-length v11, v12

    add-int/lit8 v11, v11, -0x2

    if-ne v8, v11, :cond_4

    move v6, v9

    .line 481
    :cond_4
    :goto_2
    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 482
    invoke-virtual {v1, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 489
    :cond_5
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 492
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 493
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mBottomTextHeight:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 494
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 495
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWrapPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 496
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWrapPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mColorfulLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 497
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWrapPaint:Landroid/graphics/Paint;

    const/16 v3, 0x46

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 498
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWrapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 500
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWrapLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 501
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWrapLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 502
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWrapLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getCalculateValue(FFF)F
    .locals 0

    div-float/2addr p1, p2

    mul-float p1, p1, p3

    return p1
.end method

.method private init()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TableView"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "tabview\u521d\u59cb\u5316"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "YCH"

    .line 134
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->updateConfigValue()V

    .line 136
    new-instance v0, Landroid/graphics/CornerPathEffect;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-direct {v0, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 138
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07037c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/nwd/audioset/view/nwdview/TableView;->dp2px(F)I

    move-result v4

    iput v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mBottomTextHeight:I

    .line 139
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070157

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/nwd/audioset/view/nwdview/TableView;->dp2px(F)I

    move-result v4

    iput v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mColorLineRightOffset:I

    .line 141
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07037e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/nwd/audioset/view/nwdview/TableView;->dp2px(F)I

    move-result v4

    iput v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLeftTextWidth:I

    .line 142
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07037f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/nwd/audioset/view/nwdview/TableView;->dp2px(F)I

    move-result v4

    iput v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTopUnitHeight:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBottomTextHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mBottomTextHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mTopUnitHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTopUnitHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinatorPaint:Landroid/graphics/Paint;

    const v4, -0x333334

    .line 146
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTextPaint:Landroid/graphics/Paint;

    const v4, -0x777778

    .line 149
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {p0, v4}, Lcom/nwd/audioset/view/nwdview/TableView;->sp2px(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 152
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWrapPaint:Landroid/graphics/Paint;

    .line 153
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 155
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWrapLinePaint:Landroid/graphics/Paint;

    .line 156
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->color_line:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWrapLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mDotPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    .line 160
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    sget-boolean v0, Lcom/nwd/dsp/uitls/DspConstant;->LOW_MEMORY:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 163
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mRefreshDelay:I

    const/16 v0, 0x1e

    .line 164
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mAccelerationDivider:I

    const/16 v0, 0xc8

    .line 165
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mUpdateDelay:I

    goto :goto_0

    .line 167
    :cond_0
    iput v3, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mRefreshDelay:I

    const/16 v0, 0x50

    .line 168
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mAccelerationDivider:I

    const/16 v0, 0x32

    .line 169
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mUpdateDelay:I

    :goto_0
    return-void
.end method

.method private print([F)V
    .locals 5

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 718
    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 719
    aget v3, p1, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 720
    array-length v3, p1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const-string v3, ","

    .line 721
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    .line 724
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

    .line 613
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private updateConfigValue()V
    .locals 5

    .line 759
    :try_start_0
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    const-string v1, "eq_color_line"

    invoke-static {v0, v1}, Lcom/nwd/audioset/constant/Constant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 761
    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->color_line:Ljava/lang/String;

    .line 764
    :cond_0
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    const-string v1, "eq_color_bg_start"

    invoke-static {v0, v1}, Lcom/nwd/audioset/constant/Constant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 765
    sget-object v1, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    const-string v2, "eq_color_bg_end"

    invoke-static {v1, v2}, Lcom/nwd/audioset/constant/Constant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 766
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 767
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 768
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    .line 769
    sput-object v3, Lcom/nwd/audioset/view/nwdview/TableView;->COLORS:[I

    new-array v1, v2, [F

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    .line 770
    sput-object v1, Lcom/nwd/audioset/view/nwdview/TableView;->COLORS_POSITION:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 773
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/TableView;->drawCoordinate(Landroid/graphics/Canvas;)V

    .line 322
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/TableView;->drawWrap(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;->stopRunning()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mSparkView:Lcom/nwd/audioset/view/nwdview/SparkView;

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/SparkView;->pauseStopThread()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onTouch(FFFFI)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "yml.onTouch"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "YCH"

    .line 622
    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateXInPixel:[F

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_f

    if-eq p5, v0, :cond_9

    const/4 v1, 0x2

    if-eq p5, v1, :cond_1

    goto/16 :goto_1

    .line 642
    :cond_1
    iget-object p5, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWaveValueByTouch:[F

    if-nez p5, :cond_2

    return-void

    .line 646
    :cond_2
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getWidth()I

    move-result p5

    int-to-float p5, p5

    invoke-direct {p0, p1, p3, p5}, Lcom/nwd/audioset/view/nwdview/TableView;->getCalculateValue(FFF)F

    move-result p1

    .line 647
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p0, p2, p4, p3}, Lcom/nwd/audioset/view/nwdview/TableView;->getCalculateValue(FFF)F

    move-result p2

    .line 649
    iget-object p3, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateXInPixel:[F

    aget p3, p3, v3

    sub-float p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget p4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCalculateTouchOffset:F

    const/4 p5, 0x0

    cmpg-float p3, p3, p4

    if-gez p3, :cond_3

    .line 650
    sget p3, Lcom/nwd/audioset/view/nwdview/TableView;->mGlobalMaxValue:I

    int-to-float p3, p3

    iget p4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mGridHeight:F

    sub-float/2addr p4, p2

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTopUnitHeight:I

    int-to-float v1, v1

    add-float/2addr p4, v1

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mHeightPerValue:F

    div-float/2addr p4, v1

    invoke-static {p4, p5}, Ljava/lang/Math;->max(FF)F

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    new-array p4, v0, [Ljava/lang/Object;

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89e6\u6478\u70b9\u5230\u4e86\u5de6\u6781\u9650\u8303\u56f4,\u8fd9\u4e2a\u70b9,\u8ba1\u7b97\u503c\u662f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v3

    invoke-static {v2, p4}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    iget-object p4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWaveValueByTouch:[F

    aput p3, p4, v3

    goto :goto_0

    .line 655
    :cond_3
    iget-object p3, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateXInPixel:[F

    array-length p4, p3

    sub-int/2addr p4, v0

    aget p3, p3, p4

    sub-float p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget p4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCalculateTouchOffset:F

    cmpg-float p3, p3, p4

    if-gez p3, :cond_4

    .line 656
    sget p3, Lcom/nwd/audioset/view/nwdview/TableView;->mGlobalMaxValue:I

    int-to-float p3, p3

    iget p4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mGridHeight:F

    sub-float/2addr p4, p2

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTopUnitHeight:I

    int-to-float v1, v1

    add-float/2addr p4, v1

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mHeightPerValue:F

    div-float/2addr p4, v1

    invoke-static {p4, p5}, Ljava/lang/Math;->max(FF)F

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    new-array p4, v0, [Ljava/lang/Object;

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e6\u6478\u70b9\u5230\u4e86\u53f3\u6781\u9650\u8303\u56f4,\u8fd9\u4e2a\u70b9,\u8ba1\u7b97\u503c\u662f:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v3

    invoke-static {v2, p4}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    iget-object p4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWaveValueByTouch:[F

    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateXInPixel:[F

    array-length v1, v1

    sub-int/2addr v1, v0

    aput p3, p4, v1

    .line 661
    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateXInPixel:[F

    array-length p4, p3

    if-ge v3, p4, :cond_8

    .line 662
    aget p3, p3, v3

    float-to-int p4, p1

    float-to-int v0, p3

    if-eq p4, v0, :cond_6

    .line 664
    iget p4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLastTouchX:F

    cmpl-float p4, p4, p3

    if-lez p4, :cond_5

    cmpg-float p4, p1, p3

    if-ltz p4, :cond_6

    :cond_5
    iget p4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLastTouchX:F

    cmpg-float p4, p4, p3

    if-gez p4, :cond_7

    cmpl-float p3, p1, p3

    if-lez p3, :cond_7

    .line 668
    :cond_6
    sget p3, Lcom/nwd/audioset/view/nwdview/TableView;->mGlobalMaxValue:I

    int-to-float p3, p3

    iget p4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mGridHeight:F

    sub-float/2addr p4, p2

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTopUnitHeight:I

    int-to-float v0, v0

    add-float/2addr p4, v0

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mHeightPerValue:F

    div-float/2addr p4, v0

    invoke-static {p4, p5}, Ljava/lang/Math;->max(FF)F

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 670
    iget-object p4, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWaveValueByTouch:[F

    aput p3, p4, v3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    :cond_8
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTouchX:F

    .line 675
    iput p2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTouchY:F

    .line 676
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->invalidate()V

    .line 677
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLastTouchX:F

    goto :goto_1

    .line 684
    :cond_9
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mSparkView:Lcom/nwd/audioset/view/nwdview/SparkView;

    if-eqz p1, :cond_a

    .line 685
    invoke-virtual {p1}, Lcom/nwd/audioset/view/nwdview/SparkView;->stopThread()V

    .line 687
    :cond_a
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWaveValueByTouch:[F

    if-nez p1, :cond_b

    return-void

    :cond_b
    const/high16 p2, -0x40800000    # -1.0f

    .line 690
    iput p2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLastTouchX:F

    .line 691
    iput p2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTouchX:F

    .line 692
    iput p2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTouchY:F

    .line 693
    iget-object p2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWave:[F

    array-length p3, p2

    invoke-static {p1, v3, p2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTableViewListener:Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;

    if-eqz p1, :cond_c

    .line 695
    iget-object p2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWave:[F

    invoke-interface {p1, p2}, Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;->setGainDataToSeekBar([F)V

    .line 696
    :cond_c
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTableViewListener1:Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;

    if-eqz p1, :cond_d

    .line 697
    iget-object p2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWave:[F

    invoke-interface {p1, p2}, Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;->setGainDataToSeekBar1([F)V

    .line 698
    :cond_d
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWave:[F

    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/TableView;->print([F)V

    .line 699
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;

    if-eqz p1, :cond_e

    .line 700
    invoke-virtual {p1}, Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;->stopRunning()V

    .line 702
    :cond_e
    new-instance p1, Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;

    invoke-direct {p1, p0}, Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;-><init>(Lcom/nwd/audioset/view/nwdview/TableView;)V

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;

    .line 703
    invoke-virtual {p1}, Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;->start()V

    goto :goto_1

    .line 630
    :cond_f
    iget-object p2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mSparkView:Lcom/nwd/audioset/view/nwdview/SparkView;

    if-eqz p2, :cond_10

    .line 631
    invoke-virtual {p2}, Lcom/nwd/audioset/view/nwdview/SparkView;->startThread()V

    .line 634
    :cond_10
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/TableView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0, p1, p3, p2}, Lcom/nwd/audioset/view/nwdview/TableView;->getCalculateValue(FFF)F

    move-result p1

    .line 636
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mLastTouchX:F

    .line 637
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWave:[F

    array-length p2, p1

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWaveValueByTouch:[F

    .line 638
    array-length p3, p1

    invoke-static {p1, v3, p2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-void
.end method

.method public setSparkView(Lcom/nwd/audioset/view/nwdview/SparkView;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mSparkView:Lcom/nwd/audioset/view/nwdview/SparkView;

    return-void
.end method

.method public setTableDataListener(Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTableViewListener:Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;

    return-void
.end method

.method public setTableDataListener1(Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTableViewListener1:Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;

    return-void
.end method

.method public varargs setWave([F)V
    .locals 6

    .line 197
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWave:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 198
    :cond_0
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWave:[F

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTempWave:[F

    if-eqz v0, :cond_2

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 201
    :cond_2
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mTempWave:[F

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    :goto_0
    array-length v2, p1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_4

    .line 204
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWave:[F

    sget v4, Lcom/nwd/audioset/view/nwdview/TableView;->mGlobalMaxValue:I

    int-to-float v4, v4

    aget v5, p1, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_4
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mWave:[F

    invoke-direct {p0, v1}, Lcom/nwd/audioset/view/nwdview/TableView;->print([F)V

    .line 210
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget v4, p1, v2

    .line 211
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x6

    new-array v1, p1, [F

    .line 219
    iput-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateYValues:[F

    :goto_2
    if-ge v0, p1, :cond_6

    .line 221
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateYValues:[F

    mul-int/lit8 v2, v0, 0x5

    int-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 223
    :cond_6
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;

    if-eqz p1, :cond_7

    .line 224
    invoke-virtual {p1}, Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;->stopRunning()V

    const/4 p1, 0x0

    .line 225
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;

    .line 227
    :cond_7
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;

    if-nez p1, :cond_8

    .line 228
    new-instance p1, Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;

    invoke-direct {p1, p0}, Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;-><init>(Lcom/nwd/audioset/view/nwdview/TableView;)V

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;

    .line 230
    :cond_8
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mUpdateThread:Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;

    invoke-virtual {p1}, Lcom/nwd/audioset/view/nwdview/TableView$UpdateThread;->start()V

    return-void
.end method

.method public setYMaxValue(I)V
    .locals 0

    .line 126
    sput p1, Lcom/nwd/audioset/view/nwdview/TableView;->mGlobalMaxValue:I

    return-void
.end method

.method public varargs setupCoordinator(Ljava/lang/String;Ljava/lang/String;[F)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mXUnit:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mYUnit:Ljava/lang/String;

    .line 187
    iput-object p3, p0, Lcom/nwd/audioset/view/nwdview/TableView;->mCoordinateXValues:[F

    return-void
.end method

.method public showAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 329
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 330
    new-instance v1, Lcom/nwd/audioset/view/nwdview/TableView$2;

    invoke-direct {v1, p0}, Lcom/nwd/audioset/view/nwdview/TableView$2;-><init>(Lcom/nwd/audioset/view/nwdview/TableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 338
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
