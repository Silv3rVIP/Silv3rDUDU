.class public Lcom/android/utils/ui/spectrum/SpectrumView;
.super Landroid/view/View;


# static fields
.field private static final DEFAULT_SPECTRUM_COLOR:I

.field private static final DEFAULT_SPECTRUM_DECAY_COLOR:I = -0x1


# instance fields
.field private mBytes:[B

.field private mColumnWidth:I

.field private mDecayStep:F

.field private mDecaydb:[F

.field private mForePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mIsDrawing:Z

.field private mIsFFT:Z

.field private mPoints:[F

.field private mSpectrumColor:I

.field private mSpectrumDecayColor:I

.field private mSpectrumDecayStep:F

.field private mSpectrumDecaydb:[F

.field private mVisualizer:Landroid/media/audiofx/Visualizer;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/utils/ui/spectrum/SpectrumView;->DEFAULT_SPECTRUM_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mIsDrawing:Z

    iput-object p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mDecaydb:[F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mDecayStep:F

    iput-object p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mSpectrumDecaydb:[F

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mSpectrumDecayStep:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mWidth:I

    iput v1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mHeight:I

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mColumnWidth:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mIsFFT:Z

    sget v3, Lcom/android/utils/ui/spectrum/SpectrumView;->DEFAULT_SPECTRUM_COLOR:I

    iput v3, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mSpectrumColor:I

    iput v1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mSpectrumDecayColor:I

    iput-object p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mForePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mForePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mForePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mForePaint:Landroid/graphics/Paint;

    const/16 v0, 0x80

    const/16 v1, 0xff

    invoke-static {p2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/utils/ui/spectrum/SpectrumView;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mBytes:[B

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/utils/ui/spectrum/SpectrumView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mIsFFT:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/utils/ui/spectrum/SpectrumView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mIsDrawing:Z

    return p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const-string v0, "SpectrumView"

    const-string v1, "NWD LLH onAttachedToWindow......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    iget-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    new-instance v3, Lcom/android/utils/ui/spectrum/SpectrumView$1;

    invoke-direct {v3, p0}, Lcom/android/utils/ui/spectrum/SpectrumView$1;-><init>(Lcom/android/utils/ui/spectrum/SpectrumView;)V

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    :cond_0
    iget-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const-string v0, "SpectrumView"

    const-string v1, "NWD LLH onDetachedFromWindow......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mBytes:[B

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mIsDrawing:Z

    iget-boolean v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mIsFFT:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mPoints:[F

    if-eqz v2, :cond_1

    array-length v2, v2

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    if-ge v2, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mBytes:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mPoints:[F

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mBytes:[B

    array-length v4, v2

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mPoints:[F

    mul-int/lit8 v5, v0, 0x4

    iget v6, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mWidth:I

    mul-int v7, v6, v0

    array-length v8, v2

    sub-int/2addr v8, v1

    div-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v4, v5

    add-int/lit8 v7, v5, 0x1

    iget v8, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mHeight:I

    div-int/lit8 v9, v8, 0x2

    aget-byte v10, v2, v0

    add-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    div-int/lit8 v11, v8, 0x2

    mul-int v10, v10, v11

    div-int/lit16 v10, v10, 0x80

    add-int/2addr v9, v10

    int-to-float v9, v9

    aput v9, v4, v7

    add-int/lit8 v7, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int v6, v6, v0

    array-length v9, v2

    sub-int/2addr v9, v1

    div-int/2addr v6, v9

    int-to-float v6, v6

    aput v6, v4, v7

    add-int/lit8 v5, v5, 0x3

    div-int/lit8 v6, v8, 0x2

    aget-byte v2, v2, v0

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    div-int/lit8 v8, v8, 0x2

    mul-int v2, v2, v8

    div-int/lit16 v2, v2, 0x80

    add-int/2addr v6, v2

    int-to-float v2, v6

    aput v2, v4, v5

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mPoints:[F

    iget-object v1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mForePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_4
    iget-object v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mPoints:[F

    if-eqz v2, :cond_5

    array-length v2, v2

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-ge v2, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mBytes:[B

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mPoints:[F

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mDecaydb:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mSpectrumDecaydb:[F

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mDecaydb:[F

    array-length v4, v2

    if-ge v0, v4, :cond_6

    iget v4, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mHeight:I

    int-to-float v5, v4

    aput v5, v2, v0

    iget-object v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mSpectrumDecaydb:[F

    int-to-float v4, v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mForePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mSpectrumDecayColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    :goto_2
    iget-object v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mBytes:[B

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_b

    iget-object v4, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mPoints:[F

    mul-int/lit8 v5, v0, 0x4

    iget v6, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mColumnWidth:I

    mul-int v7, v0, v6

    int-to-float v7, v7

    aput v7, v4, v5

    add-int/lit8 v7, v5, 0x1

    iget v8, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mHeight:I

    int-to-float v8, v8

    aput v8, v4, v7

    add-int/lit8 v7, v5, 0x2

    mul-int v6, v6, v0

    int-to-float v6, v6

    aput v6, v4, v7

    mul-int/lit8 v4, v0, 0x2

    aget-byte v6, v2, v4

    add-int/2addr v4, v1

    aget-byte v2, v2, v4

    mul-int v6, v6, v6

    mul-int v2, v2, v2

    add-int/2addr v6, v2

    int-to-float v2, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    double-to-float v2, v8

    iget-object v4, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mPoints:[F

    add-int/lit8 v5, v5, 0x3

    iget v6, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mHeight:I

    int-to-float v7, v6

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float v2, v2, v8

    sub-float/2addr v7, v2

    aput v7, v4, v5

    aget v2, v4, v5

    iget-object v7, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mSpectrumDecaydb:[F

    aget v8, v7, v0

    iget v9, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mSpectrumDecayStep:F

    add-float/2addr v8, v9

    cmpg-float v2, v2, v8

    if-gez v2, :cond_7

    aget v2, v4, v5

    aput v2, v7, v0

    goto :goto_3

    :cond_7
    aget v2, v7, v0

    add-float/2addr v2, v9

    aput v2, v7, v0

    aget v2, v7, v0

    int-to-float v4, v6

    cmpl-float v2, v2, v4

    if-lez v2, :cond_8

    int-to-float v2, v6

    aput v2, v7, v0

    :cond_8
    iget-object v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mPoints:[F

    iget-object v4, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mSpectrumDecaydb:[F

    aget v4, v4, v0

    aput v4, v2, v5

    :goto_3
    iget-object v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mPoints:[F

    aget v4, v2, v5

    iget-object v6, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mDecaydb:[F

    aget v7, v6, v0

    iget v8, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mDecayStep:F

    add-float/2addr v7, v8

    cmpg-float v4, v4, v7

    if-gez v4, :cond_9

    aget v2, v2, v5

    aput v2, v6, v0

    goto :goto_4

    :cond_9
    aget v2, v6, v0

    add-float/2addr v2, v8

    aput v2, v6, v0

    aget v2, v6, v0

    iget v4, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mHeight:I

    int-to-float v5, v4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    int-to-float v2, v4

    aput v2, v6, v0

    :cond_a
    :goto_4
    iget v2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mColumnWidth:I

    mul-int v4, v0, v2

    int-to-float v6, v4

    iget-object v4, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mDecaydb:[F

    aget v7, v4, v0

    mul-int v2, v2, v0

    int-to-float v8, v2

    aget v2, v4, v0

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v9, v2, v4

    iget-object v10, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mForePaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mForePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mSpectrumColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mPoints:[F

    iget-object v1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mForePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    :goto_5
    iput-boolean v3, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mIsDrawing:Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mWidth:I

    iput p2, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mHeight:I

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    :cond_0
    return-void
.end method

.method public setSpectrumColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mSpectrumColor:I

    return-void
.end method

.method public setSpectrumColumnWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mForePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setSpectrumDecayColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView;->mSpectrumDecayColor:I

    return-void
.end method
